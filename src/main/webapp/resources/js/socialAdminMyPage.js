const parent = document.querySelectorAll('.parent');
const content = document.querySelector('#content');

for(p of parent) {
    let num = p.getAttribute("data-num");
    p.onclick=function(event) {
        let xhttp = new XMLHttpRequest();
        xhttp.open("get","/member/reportDetail?num=" + num);
        xhttp.send();
        xhttp.onreadystatechange=function(){
            if(this.readyState == 4 && this.status == 200){
                let result = this.responseText.trim();
                content.innerText=result;
            }
        }
    }
}