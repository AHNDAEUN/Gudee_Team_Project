const imagePreview = document.querySelector('.image-preview');
const li = document.createElement('li');
const img = document.createElement('img');
const realUpload = document.querySelector('.real-upload');
const upload = document.querySelector('.upload');


const rvsubmit = document.getElementById("rvsubmit")




rvsubmit.addEventListener("click", function(){

    let reviewNum = document.getElementById("reviewNum").value
    let id = document.getElementById("id").value
    let reviewContents = document.getElementById("reviewContents").value
    

    //xhttprequest
    const xhttp = new XMLHttpRequest();
    
    //Request 정보
    xhttp.open("POST", "itemReview")
    
    //header정보
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
    
    //요청실행
    xhttp.send("reviewNum="+reviewNum+"&id="+id+"&reviewContents="+reviewContents)
    
    // 응답처리 
    xhttp.onreadystatechange=function(){
        if(xhttp.readyState==4&&xhttp.status==200){
          let result =xhttp.responseText.trim();
      
          if(result==1){
      
          }else{
            
          }
        
}

    }})

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
        
        if(count>2){
                alert("최대3개만 가능")
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