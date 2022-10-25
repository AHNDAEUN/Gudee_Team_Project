const detailPersonalCost = document.querySelector("#detailPersonalCost");
const detailDueDate = document.querySelector("#detailDueDate");
const detailMainSection = document.querySelector("#detailMainSection");
const detailJoinListSection = document.querySelector("#detailJoinListSection");

function init(){
    let personalCost = Number(detailPersonalCost.innerText);
    let dueDate = detailDueDate.innerText;

    personalCost -= (personalCost % 10);

    dueDate = dueDate.split('T');
    dueDate = dueDate[0] + " " + dueDate[1];

    detailPersonalCost.innerText = personalCost;
    detailDueDate.innerText = dueDate;
}

init();

const detailFindLocation = document.querySelector("#detailFindLocation");
const detailLocation = document.querySelector("#detailLocation");

detailFindLocation.addEventListener("click", function(){
    let dLocation = detailLocation.innerText;

    // 주소-좌표 변환 객체를 생성합니다
    let geocoder = new kakao.maps.services.Geocoder();

    // 주소로 좌표를 검색합니다
    geocoder.addressSearch(dLocation, function(result, status) {

        // 정상적으로 검색이 완료됐으면 
        if (status === kakao.maps.services.Status.OK) {
            let findLocationUrl = `https://map.kakao.com/link/to/목적지,${result[0].y},${result[0].x}`;
            let findLocationTab = window.open(findLocationUrl);
            findLocationTab.focus();
        } 
    });
});


joinListInit();

function joinListInit(){
    const joinListHttp = new XMLHttpRequest();

    joinListHttp.open("GET", "/mbm/detailJoinList?meetingBoardNum=" + detailMainSection.getAttribute("data-mbNum"));

    joinListHttp.send();

    joinListHttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
            let joinListResult = this.responseText.trim();
            joinListResult = JSON.parse(joinListResult);

            let dJoinList = joinListResult.detailJoinList;
            
            if(dJoinList.length > 0){
                for(let i = 0; i < dJoinList.length; i++){
                    let dJoinListItem = dJoinList[i];
                    let dJoinListFrame = document.createElement("div");
                    dJoinListFrame.setAttribute("class", "dJoinListFrame");

                    let dJoinListItemImage = document.createElement("img");
                    dJoinListItemImage.setAttribute("style", "width:3rem; height:3rem; border-radius: 70%; overflow: hidden;");

                    if(dJoinListItem.memberFileDTO == null){
                        dJoinListItemImage.setAttribute("src", "/resources/images/meetingboard/detail_person_icon.svg");
                    } else {
                        dJoinListItemImage.setAttribute("src", "../resources/upload/member/" + dJoinListItem.memberFileDTO.fileName);
                    }

                    let dJoinListItemNickname = document.createElement("div");
                    dJoinListItemNickname.setAttribute("class", "dJoinListItemNickname");
                    dJoinListItemNickname.innerText = dJoinListItem.memberDTO.nickname;

                    dJoinListFrame.appendChild(dJoinListItemImage);
                    dJoinListFrame.appendChild(dJoinListItemNickname);

                    detailJoinListSection.append(dJoinListFrame);                    

                }
            }

        }
    }

}