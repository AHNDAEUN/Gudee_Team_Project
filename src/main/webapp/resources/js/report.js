const requestReportModalSendBtn = document.querySelector('#requestReportModalSendBtn');
const requestReportModalCloseBtn = document.querySelector("#requestReportModalCloseBtn");
const formReport = document.querySelector("#formReport");

requestReportModalSendBtn.addEventListener("click", function(){
    const reportContent = document.querySelector("#reportContent");

    const reportTitle = document.querySelector("#reportTitle");
    const reportName = document.querySelector("#reportName");
    const reportNickname = document.querySelector('#reportNickname');
    const reportJoinDate = document.querySelector('#reportJoinDate');
    const reportedName = document.querySelector("#reportedName");
    const reportedNickname = document.querySelector('#reportedNickname');
    const reportedJoinDate = document.querySelector('#reportedJoinDate');

    let sendingContent = reportContent.value;
    let sendingTitle = reportTitle.value; 
    let hostNum = reportContent.getAttribute("data-hostnum");
    let guestNum = reportContent.getAttribute("data-guestnum");
    let hostName = reportName.value;
    let hostNickname = reportNickname.value;
    let hostJoinDate = reportJoinDate.value; 
    let guestName = reportedName.value;
    let guestNickname = reportedNickname.value;
    let guestJoinDate = reportedJoinDate.value;

    console.log(hostNum);
    console.log(guestNum);
    console.log(hostName);
    console.log(hostNickname);
    console.log(hostJoinDate);
    console.log(guestName);
    console.log(guestNickname);
    console.log(guestJoinDate);


    const xhttp = new XMLHttpRequest();

    xhttp.open("POST", "/member/report");

    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");


    xhttp.send("reportMemberNum=" + hostNum + "&reportedMemberNum=" + guestNum + "&reportContent=" + sendingContent + "&reportTitle=" + sendingTitle+ "&reportName=" + hostName + "&reportNickname=" + hostNickname + "&reportJoinDate=" + hostJoinDate + "&reportedName=" + guestName + "&reportedNickname=" + guestNickname + "&reportedJoinDate=" + guestJoinDate);

    xhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
            let result = this.responseText.trim();
            result = JSON.parse(result);
            console.log(result.result);

            if(result.result > 0){
                alert("신고 완료");
            } else {
                alert("최대 신고 횟수 3회를 초과하였습니다");
            }
            
            requestReportModalCloseBtn.click();

            formReport.submit();

            location.reload();
        }
    }
        
    });
