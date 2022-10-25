const approvalListItemAcceptBtnArray = document.querySelectorAll(".approvalListItemAcceptBtn");
const approvalListItemDenieBtnArray = document.querySelectorAll(".approvalListItemDenieBtn");
const listMainSection = document.querySelector("#listMainSection");
let mbNum = listMainSection.getAttribute("data-meetingboardnum");

approvalListItemAcceptBtnArray.forEach(function(element){

    element.addEventListener("click", function(){
        let mbmNum = element.getAttribute("data-mbmnum");

        const xhttp = new XMLHttpRequest();

        xhttp.open("POST", "/mbm/myApprovalAccept");

        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

        xhttp.send("mbmNum=" + mbmNum + "&mbNum=" + mbNum);

        xhttp.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                let result = this.responseText.trim();

                if(result > 0){
                    alert("승인 완료");
                } else{
                    alert("승인 실패 또는 인원 수 초과");
                }

                location.reload();
            }
        }

    });

});

approvalListItemDenieBtnArray.forEach(function(element){

    element.addEventListener("click", function(){
        let mbmNum = element.getAttribute("data-mbmnum");

        const xhttp = new XMLHttpRequest();

        xhttp.open("POST", "/mbm/myApprovalDenie");

        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

        xhttp.send("mbmNum=" + mbmNum);

        xhttp.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                let result = this.responseText.trim();

                if(result > 0){
                    alert("거절 완료");
                } else{
                    alert("거절 실패");
                }

                location.reload();
            }
        }
    });

});