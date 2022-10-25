let id = document.querySelector('#id');
let pw = document.querySelector('#password');
let photo = document.querySelector('#photo');
let email = document.querySelector('#email');
let btn = document.querySelector('#btn');
let form = document.querySelector('#form');
let idm = document.querySelector('#idm');
let pwm = document.querySelector('#pwm');
let photom = document.querySelector('.photom');
let cb = document.querySelectorAll('.cb');
let ch = document.querySelectorAll('.ch');
let br = document.createElement('br');
const email_txt = document.querySelector('#email-txt');
const domainList = document.querySelector('#domain-list');
const domainInput = document.querySelector('#domain-txt');
const addressm = document.querySelector('.addressm');
const postcode = document.getElementById('postcode');
const mainAddress = document.getElementById("mainAddress");
const detailAddress = document.getElementById("detailAddress")
const emailm = document.querySelector('.emailm');


function init(){
    //email 쪼개서 각각 input 태그에 기존 value 넣기
    let emailValue = email.value.split('@');
    email_txt.value = emailValue[0];
    domainInput.value = emailValue[1];
}

function joinCheck(){
    //아이디 조건 메세지
    id.addEventListener('blur',function(){
        if(id.value.length < 2){
            idm.innerHTML = '두 글자 이상 입력해주세요';
            id.appendChild(br);
        }else{
            idm.innerHTML = '';
        }
    })

    //비밀번호 조건 메세지
    pw.addEventListener('blur',function(){
        if(pw.value.length < 4){
            pwm.innerHTML = '4글자 이상 입력해주세요';
        }else{
            pwm.innerHTML = '';
        }
    })

    //이름, 닉네임, 전화번호 조건 메세지
    cb.forEach(function(c, i){
        c.addEventListener('blur',function(){
            if(c.value.length < 2){
                ch[i].innerHTML = '두 글자 이상 입력해주세요';
            }else{
                 ch[i].innerHTML = '';
            }
        })
    });

    //코드 잘못 쓰면 무한루프...

    //프로필 사진 추가 조건 메세지
    photo.addEventListener('blur',function(){
       console.log(photo.value);
       if(photo.value == ''){
            photom.innerHTML = '사진을 등록해주세요';
       }else{
            photom.innerHTML = '';
       }
    })

    //주소 입력 조건 메세지
    detailAddress.addEventListener('blur', function(){
        console.log(detailAddress.value.length);
        if(detailAddress.value == '' || postcode.value == ''){
            addressm.innerHTML = '주소를 입력해주세요';
        }else{
            addressm.innerHTML = '';
        }
    })
    

    //이메일 select
    domainList.addEventListener('change',function(event){
        console.log(event);
        //option에 있는 domain 선택 시
        if(event.target.value != 'type'){
            //선택한 domain을 input에 입력하고 disabled
            domainInput.value = event.target.value;
            domainInput.setAttribute('readonly',true);
        }else{//직접 입력 시
            // input 내용 초기화 & 입력 가능하도록 변경
            console.log('else');
            domainInput.value = '';
            //readonly 속성 제거
            domainInput.removeAttribute("readonly");
            // domainInput.readonly = false;
        }

    })

    //이메일 조건 메세지
    email_txt.addEventListener('blur', function(){
        if(email.value = ''){
            emailm.innerHTML = '이메일 주소를 입력해주세요';
        }else{
            emailm.innerHTML = '';
        }
    })
    
    // 수정 버튼 클릭시 각각의 조건이 충족여부 확인
    btn.addEventListener('click',function(){
        let check = true;
        for(i = 0;i < cb.length; i++){
            if(cb[i].value.length < 2){
                check = false;
                break;
            }
        }
        
        //이메일 문자 합치기
        email.value = email_txt.value + '@' + domainInput.value;

        console.log(email.value);

        console.log(id.value.length >= 2);
        console.log(pw.value.length >= 4);
        console.log(check);
        console.log(photo.value != '');
        console.log(email.value != '');
        console.log(mainAddress.value != '');
        console.log(detailAddress.value != '');
        console.log(postcode.value != '');

        for(let i = 0; i < cb.length; i++){
            console.log(cb[i].value);
        }
        
        if(id.value.length >= 2 && pw.value.length >= 4 && check && detailAddress.value != '' && postcode.value != '' && email.value != ''){
            form.submit();
        }else{
            alert('입력조건을 확인해주세요');
        }
    });
}

//다음 주소 api
function checkPost() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            postcode.value = data.zonecode;
            mainAddress.value = addr + extraAddr;
            // 커서를 상세주소 필드로 이동한다.
            detailAddress.focus();
        }
    }).open();
}

const fileDelete = document.querySelectorAll('.fileDelete');
const notNullImage = document.querySelector('#notNullImage');

try {
    fileDelete.forEach(function(f){
        f.addEventListener('click', function(){
            console.log('fileDelete');
             let check = window.confirm('삭제하시겠습니까?');
             if(!check){
                return;
             }
        
             let fileNum = f.getAttribute('data-file-num');
             console.log(fileNum);
        
             //ajax
             //1. request 객체 생성
             const xhttp = new XMLHttpRequest();
        
             //2. 메서드, URL 작성
             xhttp.open('POST', 'fileDelete');
        
             //3. encType
             xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        
             //4. 요청
             xhttp.send("fileNum=" + fileNum);
        
             //5. 응답처리
             xhttp.onreadystatechange=function(){
                if(xhttp.readyState==4 && xhttp.status==200){
                    let result = xhttp.responseText.trim();
                    if(result == 1){
                        console.log('삭제실행');
                        notNullImage.setAttribute('src', '/resources/images/Default Image.png');
                    }else{
                        console.log('삭제실행 안됨');
                    }
                }
             }
        })
    })
} catch (error) {
    
}


