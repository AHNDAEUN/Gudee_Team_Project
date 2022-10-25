// itemfile.js

const fileAdd = document.getElementById("fileAdd")
const addFiles =document.getElementById("addFiles")
const fileDelete = document.querySelectorAll(".fileDelete")


try{
fileDelete.forEach(function(f){

    f.addEventListener("click",function(){
    
        let check= window.confirm("삭제하시겠습니까?")
    
        if(!check){
           return 
        }

let fileNum =f.getAttribute("data-file-num")
const xhttp =new XMLHttpRequest()
xhttp.open("POST","./fileDelete")
xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
xhttp.send("fileNum="+fileNum)
xhttp.onreadystatechange=function(){

  if(xhttp.readyState==4&&xhttp.status==200){
    let result =xhttp.responseText.trim();

    if(result==1){

        console.log(result)
        f.parentNode.remove();
        count--

    }else{

        console.log(result);

    }

  }  
}
}
)}

)
}catch(e){

}





// file add


let count = 0;
let idx= 0;

function setCount(c){
    if(c>=0){

    count=c
}
}

try{
fileAdd.addEventListener("click", function(){
    
    if(count>4){
            alert("최대5개만 가능")
                    return;
        }
       
		// 부모 el div 생성

        console.log("파일 추가");

        let div = document.createElement("div") // <div>
        let c = document.createAttribute("class") //class=""
        c.value="mb-3"
        div.setAttributeNode(c)
        c= document.createAttribute("id")
        c.value="file"+idx;//file 0
        div.setAttributeNode(c)


        //자식 el label 생성
        let label = document.createElement("label"); //<label></label>
        let labelText =document.createTextNode("file"); //"첨부파일"
        label.appendChild(labelText);
        label.setAttribute("class", "form-label");
        label.setAttribute("for", "files");

       div.appendChild(label);

       let input = document.createElement("input")
       input.setAttribute("type","file")
       input.setAttribute("name","files")
       input.setAttribute("class","form-control")
       input.setAttribute("id","files")

       div.appendChild(input);

        let button = document.createElement("button")
        let buttonText =document.createTextNode("삭제");
         button.appendChild(buttonText)
        
        button.setAttribute("type","button")
        button.setAttribute("class","del")
        button.setAttribute("title",idx)
        

        div.appendChild(button);

        addFiles.append(div);

        count++;
        idx++;


})


addFiles.addEventListener("click", function(event){
    let button = event.target

    if(button.className=='del'){
        document.getElementById("file"+button.title).remove();
        count--
        
    }


})

}catch(e){

}





