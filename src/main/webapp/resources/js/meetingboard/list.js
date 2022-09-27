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

const meetingBoardListItem = document.querySelectorAll(".meetingBoardListItem");

meetingBoardListItem.forEach(function(element){
    element.addEventListener("click", function(){
        let meetingBoardNum = element.getAttribute("data-meetingboard-num");
        location.href = "./detail?num=" + meetingBoardNum;
    });
})

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