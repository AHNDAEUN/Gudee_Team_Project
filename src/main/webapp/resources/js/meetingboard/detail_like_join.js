const likeBtn = document.querySelector("#likeBtn");
const joinBtn = document.querySelector("#joinBtn");
const mbNum = document.querySelector("#mbNum");
const mNum = document.querySelector("#mNum");

likeBtn.addEventListener("click", function(){
    console.log("like", mbNum.value, mNum.value);
    //이제 Ajax로 POST하여 교차테이블에 넣으면 된다.
});

joinBtn.addEventListener("click", function(){
    console.log("join");
});