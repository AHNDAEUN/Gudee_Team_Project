//agree.js
function check(){

    const all = document.querySelector('#all');
    const checkbox = document.querySelectorAll('.checkbox');
    const join = document.getElementById('join');
    const form = document.getElementById('form');
    const req = document.querySelectorAll('.req');
    const cancel = document.querySelector('#cancel');
    
    // 전체동의 버튼 체크 or 해제시, 나머지 버튼도 똑같은 상태로 표시
    all.addEventListener("click", function(){
        console.log(all.checked);
        for(let i=0; i<checkbox.length; i++){
            checkbox[i].checked=all.checked;
        }
    });
    
    // 나머지 약관 체크박스가 하나라도 체크가 안되있을 시, 전체동의 버튼 체크 해제 기능
    for(let i=0; i<checkbox.length; i++){
        checkbox[i].addEventListener("click", check);
    }
    
    function check(){
        let result = true;
        for(let i=0; i<checkbox.length; i++){
            if(!checkbox[i].checked){
                result=false;
                break;
            }
        } 
        all.checked=result; 
    }
    
    join.addEventListener('click', function(){
        // if(all.checked){
            //     form.submit();
            // }else{
                //     alert('필수약관에 동의하십시오')
                // }
                let result = true;
                for(let i = 0; i < req.length;i++){
                    if(!req[i].checked){
                        result = false;
                        break;
                    }
                }
                if(result){
                    form.submit();
                }else{
                    alert('필수약관에 동의하십시오')
                }
            });

    cancel.addEventListener('click', function(){
        location.href='/';
    })
            
}