const meetingBoardListItemPersonalCost = document.querySelectorAll(".meetingBoardListItemPersonalCost");

meetingBoardListItemPersonalCost.forEach(function(element, index){
    let personalCost = Number(element.innerText);
    personalCost -= (personalCost % 10);

    element.innerText = personalCost;
});

const meetingBoardListItemDueDate = document.querySelectorAll(".meetingBoardListItemDueDate");

meetingBoardListItemDueDate.forEach(function(element){
    let dueDate = element.innerText.split('T');
    element.innerText = dueDate[0] + " " + dueDate[1];
});

function mySoonListInit(){
    const meetingBoardListItem = document.querySelectorAll(".meetingBoardListItem");

    meetingBoardListItem.forEach(function(element){
        let caution = document.createElement("img");
        caution.setAttribute("src", "../resources/images/meetingboard/myBookedList_warning_icon.svg");
        caution.setAttribute("class", "warningIconImage");
        element.append(caution);

    });

    meetingBoardListItem.forEach(function(element){
        element.addEventListener("click", function(){
            //디테일 페이지 이동
            let meetingBoardNum = element.getAttribute("data-meetingboard-num");

            location.href = "/mb/detail?num=" + meetingBoardNum;
        });
    });

}

mySoonListInit();