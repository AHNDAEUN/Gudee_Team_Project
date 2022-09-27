const detailPersonalCost = document.querySelector("#detailPersonalCost");
const detailDueDate = document.querySelector("#detailDueDate");

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