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

const kind = document.querySelector("#kind");

kind.addEventListener("change", function(){
    const searchFrame = document.querySelector("#searchFrame");
    const searchFrameChildren = searchFrame.children;

    for(let i = 0; i < searchFrameChildren.length;){
        searchFrameChildren[i].remove();
    }

    if(kind.value == "category"){
        const searchCategory_template = document.querySelector("#searchCategory_template");
        searchFrame.innerHTML = searchCategory_template.innerHTML;
    } else{
        //<input type="text" class="form-control" id="search" name="search">
        const anotherSearch = document.createElement("input");
        anotherSearch.setAttribute("type", "text");
        anotherSearch.setAttribute("class", "form-control");
        anotherSearch.setAttribute("id", "search");
        anotherSearch.setAttribute("name", "search");
        searchFrame.append(anotherSearch);
    }
})

function myListInit(){
    const meetingBoardListItem = document.querySelectorAll(".meetingBoardListItem");

    meetingBoardListItem.forEach(function(element){
        let meetingBoardNum = element.getAttribute("data-meetingboard-num");
        let hostNum = element.getAttribute("data-hostnum");

        const xhttp = new XMLHttpRequest();

        xhttp.open("GET", "/mbm/myApprovalCount?hostMemberNum=" + hostNum + "&meetingBoardNum=" + meetingBoardNum);

        xhttp.send();

        xhttp.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                let result = this.responseText.trim();
                    
                if(result > 0){
                    let caution = document.createElement("img");
                    caution.setAttribute("src", "../resources/images/meetingboard/myList_caution_icon.svg");
                    caution.setAttribute("class", "cautionIconImage");
                    element.append(caution);
                }

            }
        }

    });

    meetingBoardListItem.forEach(function(element){
        element.addEventListener("click", function(){
            //여기서 해당 게시글의 상세 승인 요청 정보 페이지로 이동하면 된다.
            // 파라미터를 넘겨줘야 하니 mapper 설계 후 작성??
            let meetingBoardNum = element.getAttribute("data-meetingboard-num");
            let hostNum = element.getAttribute("data-hostnum");

            location.href = "/mbm/myApprovalList?hostMemberNum=" + hostNum + "&meetingBoardNum=" + meetingBoardNum;

        });
    });

}

myListInit();