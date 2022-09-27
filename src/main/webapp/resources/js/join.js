let id = document.querySelector('#id');
let pw = document.querySelector('#password');
let pw2 = document.querySelector('#password2');
let photo = document.querySelector('#photo');
let birthday = document.querySelector('#birthday');
let email = document.querySelector('#email');
let btn = document.querySelector('#btn');
let form = document.querySelector('#form');
let idm = document.querySelector('#idm');
let pwm = document.querySelector('#pwm');
let pwm2 = document.querySelector('#pwm2');
let birthdaym = document.querySelector('.birthdaym');
let photom = document.querySelector('.photom');
let cb = document.querySelectorAll('.cb');
let ch = document.querySelectorAll('.ch');
let br = document.createElement('br');
const email_txt = document.querySelector('#email-txt');
const domainList = document.querySelector('#domain-list');
const domainInput = document.querySelector('#domain-txt');
const birth_year = document.querySelector('#birth-year');
const birth_month = document.querySelector('#birth-month');
const birth_day = document.querySelector('#birth-day');
const address = document.querySelector('#address');
const addressm = document.querySelector('.addressm');
const postcode = document.getElementById('postcode');
const mainAddress = document.getElementById("mainAddress");
const detailAddress = document.getElementById("detailAddress")
const emailm = document.querySelector('.emailm');


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

    //비밀번호 확인 메세지
    pw2.addEventListener('blur',function(){
        if(pw2.value != pw.value){
            pwm2.innerHTML = '비밀번호가 일치하지 않습니다';
        }else{
            pwm2.innerHTML = '비밀번호가 일치합니다';
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

    // for(i = 0; i < cb.length; i++){
    //     console.log("cb[i]: ",cb[i].value);
    //     cb[i].addEventListener('blur',function(c){
    //         if(c.value.length < 3){
    //             ch[i].innerHTML = '두 글자 이상 입력해주세요';
    //         }else{
    //             ch[i].innerHTML = '';
    //         }
    //     })
    // }

    //생년월일 조건 메세지
    birthday.addEventListener('blur',function(){
        console.log(birthday.value);
        if(birthday.value == ''){
            birthdaym.innerHTML = '날짜를 선택해주세요';
        }else{
            birthdaym.innerHTML = '';
        }
    })

    //생년월일 option
    //생년월일 : 년도
    for(let i = 2022; i >= 1900; i--){
        //<option> 태그, element 생성
        let y = document.createElement('option');
        //<option>태그의 속성인 value atttribute 생성(이 값이 파라미터로 넘어감)
        let y_value = document.createAttribute('value');
        //value에 i를 대입(실제 파라미터로 넘어갈 년도)
        y_value.value = i;
        y.setAttributeNode(y_value);
        //client에게 보여질 년도 숫자
        let y_content = document.createTextNode(i);
        y.appendChild(y_content);
        //최종적으로 birth_year에 append
        birth_year.append(y);
    }

    //생년월일 : 월
    for(let i = 1; i <=12; i++){
        let m = document.createElement('option');
        let m_value = document.createAttribute('value');
        m_value.value = i;
        m.setAttributeNode(m_value);
        let m_content = document.createTextNode(i);
        m.appendChild(m_content);
        birth_month.append(m);
    }
    
    //생년월일 : 일
    function day(m){
        //월에 따라 일수를 나타내기 전에 그 전에 append 됐던 내용들을 삭제
        //birthday의 선택자 자식 element들을 선택하고 일 선택시 기존에 '일' 글자만 빼고 삭제
        let children = birth_day.children;
        for(let i = 1; i < children.length;){
            children[i].remove();
        }
        // 31일까지 있는 월 표현
        if(m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12){
            for(let j = 1; j <= 31; j++){
                let d = document.createElement('option');
                let d_value = document.createAttribute('value');
                d_value.value = j;
                d.setAttributeNode(d_value);
                let d_content = document.createTextNode(j);
                d.appendChild(d_content);
                birth_day.append(d);
            }
        //2월
        }else if(m == 2){
            console.log('2월');
            for(let j = 1; j <= 28; j++){
                let d = document.createElement('option');
                let d_value = document.createAttribute('value');
                d_value.value = j;
                d.setAttributeNode(d_value);
                let d_content = document.createTextNode(j);
                d.appendChild(d_content);
                birth_day.append(d);
            }
            //나머지 월들
        }else{
            for(let j = 1; j <= 30; j++){
                let d = document.createElement('option');
                let d_value = document.createAttribute('value');
                d_value.value = j;
                d.setAttributeNode(d_value);
                let d_content = document.createTextNode(j);
                d.appendChild(d_content);
                birth_day.append(d);
            }
        }
    }

    birth_month.addEventListener('change',function(event){
       day(event.target.value);
    })
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
    address.addEventListener('blur', function(){
        console.log(address.value.length);
        if(address.value == ''){
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
    
    // 회원가입 버튼 클릭시 각각의 조건이 충족여부 확인
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

        //생년월일 합치기
        birthday.value = birth_year.value + '-' + birth_month.value + '-' + birth_day.value;

        //주소 합치기
        address.value = mainAddress.value + ' ' + detailAddress.value;
        console.log(id.value.length >= 2);
        console.log(pw.value.length >= 4);
        console.log(check);
        console.log(photo.value != '');
        console.log(birthday.value != '');
        console.log(email.value != '');
        console.log(address.value != '');
        for(let i = 0; i < cb.length; i++){
            console.log(cb[i].value);
        }
        
        if(id.value.length >= 2 && pw.value.length >= 4 && check && photo.value != '' && birthday.value != '' && address.value != '' && email.value != ''){
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
                // 조합된 참고항목을 해당 필드에 넣는다.
                detailAddress.value = extraAddr;
            
            } else {
                detailAddress.value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            postcode.value = data.zonecode;
            mainAddress.value = addr;
            // 커서를 상세주소 필드로 이동한다.
            detailAddress.focus();
        }
    }).open();
}

