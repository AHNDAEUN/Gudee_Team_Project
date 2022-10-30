const commentAdd =document.querySelector("#commentAdd");
const writer = document.querySelector("#writer")
const contents = document.querySelector("#contents")
const itemNum=commentAdd.getAttribute("data-comment-num");

commentAdd.addEventListener("click",function(){


    const wv= writer.value;
    const cv= contents.value;
    console.log(itemNum);


const xhttp =new XMLHttpRequest();
xhttp.open("POST","./commentAdd");
xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
xhttp.send("itemNum="+itemNum+"&writer="+wv+"&contents="+cv);
//POST 파라미터 전송
xhttp.onreadystatechange=function(){
    if(this.readyState==4 && this.status==200){
        result = JSON.parse(result)
        writer.value=""
        contents.value=""

        if(this.responseText.trim()=='1'){
            alert('수정되었습니다.');
        }else {
            alert('수정 최소되었습니다.');
        }
    }
}

})


function getCommentList(){
    const xhttp= new XMLHttpRequest();
    xhttp.open("GET","./commentList")


}
