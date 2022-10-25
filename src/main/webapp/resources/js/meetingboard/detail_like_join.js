const likeBtn = document.querySelector("#likeBtn");
const unlikeBtn = document.querySelector("#unlikeBtn");
const joinBtn = document.querySelector("#joinBtn");
const unjoinBtn = document.querySelector("#unjoinBtn");
const requestApprovalModalOpenBtn = document.querySelector("#requestApprovalModalOpenBtn");
const requestApprovalModalSendBtn = document.querySelector("#requestApprovalModalSendBtn");
const requestApprovalModalCloseBtn = document.querySelector("#requestApprovalModalCloseBtn");
const mbNum = document.querySelector("#mbNum");
const mNum = document.querySelector("#mNum");

function likeBtnFunction(){
    likeBtn.addEventListener("click", function(){
        //이제 Ajax로 POST하여 교차테이블에 넣으면 된다.
    
        let addLikeCheck = confirm("찜목록에 추가합니까?");
    
        if(!addLikeCheck){
            return;
        }
    
        const xhttp = new XMLHttpRequest();
    
        xhttp.open("POST", "/mbl/like");
    
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    
        xhttp.send("memberNum=" + mNum.value + "&meetingBoardNum=" + mbNum.value);
    
        xhttp.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                let result = this.responseText.trim();
                
                if(result > 0){
                    alert("찜목록 추가 성공");
                } else{
                    alert("찜목록 추가 실패");
                }
    
                location.reload();
            }
        }
    
    });
}

function unlikeBtnFunction(){
    unlikeBtn.addEventListener("click", function(){
        let deleteLikeCheck = confirm("찜목록에서 삭제합니까?");

        if(!deleteLikeCheck){
            return;
        }

        const xhttp = new XMLHttpRequest();

        xhttp.open("POST", "/mbl/unlike");

        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

        xhttp.send("memberNum=" + mNum.value + "&meetingBoardNum=" + mbNum.value);

        xhttp.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                let result = this.responseText.trim();

                if(result > 0){
                    alert("찜목록 삭제 성공");
                } else{
                    alert("찜목록 삭제 실패");
                }
    
                location.reload();
            }
        }

    });
}

function joinBtnFunction(){
    joinBtn.addEventListener("click", function(){
    
        let joinCheck = confirm("이 모임에 참여합니까?");
    
        if(!joinCheck){
            return;
        }
    
        requestApprovalModalOpenBtn.click();
    
    });
    
    requestApprovalModalSendBtn.addEventListener("click", function(){
        const approvalContents = document.querySelector("#approvalContents");
        let sendingContents = approvalContents.value;
        let hostNum = approvalContents.getAttribute("data-hostnum");
    
        //console.log(sendingContents, hostNum, mNum.value, mbNum.value);
    
        const xhttp = new XMLHttpRequest();
    
        xhttp.open("POST", "/mbm/add");
    
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    
        xhttp.send("requestMemberNum=" + mNum.value + "&meetingBoardNum=" + mbNum.value + "&approvalContents=" + sendingContents + "&hostMemberNum=" + hostNum);
    
        xhttp.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                let result = this.responseText.trim();
                result = JSON.parse(result);
    
                if(result.result > 0){
                    alert("참여 신청 성공");
                } else {
                    alert("참여 신청 실패");
                }
                
                requestApprovalModalCloseBtn.click();

                location.reload();
            }
        }
    
    });
}

function unjoinBtnFuction(){
    unjoinBtn.addEventListener("click", function(){

        let unjoinCheck = confirm("모임 참여를 취소합니까?");

        if(!unjoinCheck){
            return;
        }

        let hostNum = unjoinBtn.getAttribute("data-hostnum");

        const xhttp = new XMLHttpRequest();

        xhttp.open("POST", "/mbm/delete");

        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

        xhttp.send("requestMemberNum=" + mNum.value + "&meetingBoardNum=" + mbNum.value + "&hostMemberNum=" + hostNum);

        xhttp.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                let result = this.responseText.trim();
                result = JSON.parse(result);

                if(result.result > 0){
                    alert("모임 취소 성공");
                } else{
                    alert("모임 취소 실패");
                }

                location.reload();

            }
        }

    })
}
