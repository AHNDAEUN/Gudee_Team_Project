const mainSectionDiv = document.querySelector("#mainSectionDiv");
const hostNum = mainSectionDiv.getAttribute("data-num");

new TypeIt("#mainSectionTopTitle", {
    afterComplete: function (instance) {
      instance.destroy();
    }
})
.type("당신이 원하는", {delay: 1000})
.type("바로 그 모임")
.go();

getNotificationPermission();
availableApproval();

function getNotificationPermission(){
  //브라우저 지원 여부
  if(!("Notification" in window)){
    alert("데스크탑 알림을 지원하지 않는 브라우저입니다.");
  }

  //권한 요청
  Notification.requestPermission(function(result){
    if(result == "denied"){
      alert("알림을 차단하셨습니다. \n브라우저 설정에서 변경 가능합니다.");
    }
  });

}

function availableApproval(){

  const xhttp = new XMLHttpRequest();
  xhttp.open("GET", "/mbm/allCount?hostMemberNum=" + hostNum);
  xhttp.send();
  xhttp.onreadystatechange = function(){
    if(this.readyState == 4 && this.status == 200){
      let result = this.responseText.trim();

      if(result > 0){
        notifyAboutApproval('a');
      }

      availableBooked();

    }
  }
}

function availableBooked(){
  const xhttp = new XMLHttpRequest();
  xhttp.open("GET", "/mbm/soonListCount?requestMemberNum=" + hostNum);
  xhttp.send();
  xhttp.onreadystatechange = function(){
    if(this.readyState == 4 && this.status == 200){
      let result = this.responseText.trim();

      if(result > 0){
        notifyAboutApproval('b');
      }
    }
  }
}

function notifyAboutApproval(flag){
  let notiPermission = Notification.permission;

  if(notiPermission == "denied"){
    Notification.requestPermission(function(permission){
      if(permission == "granted"){
        msgAboutApproval();
      } else{
        alert("알람 권한 거부됨");
      }
    });
  } else if(notiPermission == "granted"){
    if(flag == 'a'){
      msgAboutApproval();
    } else if(flag == 'b'){
      msgAboutBooked();
    }
    
  }
}

function msgAboutApproval(){
  //알림 속성
  let options = {
    body: "승인 관리를 해주세요."
  }
  //브라우저 알림 요청
  let notification = new Notification("누군가가 당신의 모임에 참여를 원해요.", options);

  //알림 클릭시 승인 관리용 리스트 페이지로 이동
  notification.addEventListener("click", function(){
    location.href = "/mbm/mylist?hostMemberNum=" + hostNum;
  });

  //일정 시간 후 알림 닫기
  setTimeout(function(){
    notification.close();
  }, 10000);
}

function msgAboutBooked(){
  let options = {
    body: "확인해주세요."
  }

  let notification = new Notification("임박한 모임이 있습니다.", options);

  notification.addEventListener("click", function(){
    location.href = "/mbm/mySoonList?requestMemberNum=" + hostNum;
  });

  setTimeout(function(){
    notification.close();
  }, 20000);
}