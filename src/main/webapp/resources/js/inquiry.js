const requestInquiryModalSendBtn = document.querySelector('#requestInquiryModalSendBtn');
const requestInquiryModalCloseBtn = document.querySelector("#requestInquiryModalCloseBtn");
const formInquiry = document.querySelector("#formInquiry");

requestInquiryModalSendBtn.addEventListener("click", function(){
    const contents = document.querySelector("#contents");
    const title = document.querySelector("#title");

    let sendingContents = contents.value;
    let sendingTitle = title.value; 
    let hostNum = contents.getAttribute("data-writer");

    const xhttp = new XMLHttpRequest();

    xhttp.open("POST", "/member/inquiry");

    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    xhttp.send("writer=" + hostNum + "&title=" + sendingTitle + "&contents=" + sendingContents);

    xhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
            let result = this.responseText.trim();
            result = JSON.parse(result);
            console.log(result);

            if(result > 0){
                alert("문의 완료");
            } else {
                alert("최대 문의 횟수 3회를 초과하였습니다");
            }
            
            requestInquiryModalCloseBtn.click();

            formInquiry.submit();

            location.reload();
        }
    }
        
    });