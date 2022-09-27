<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="/resources/css/agree.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
    <form action="join" id="form">
        <!-- 로고 -->
        <div style="background-color: white;">
            <section class="container" style="height: 1200px;">
                <div style="width: 80%; height: 100vh; margin: 0 auto;" class="p-2">
                        <div class="logo">
                            <h1>로고</h1>
                        </div>
                        <!-- 전체동의 -->
                    <div style="height: 70px; background-color: #FBF7F2; border-radius: 15px; margin-bottom: 15px;" class="p-2">
                        <div class="d-flex pt-2">
                            <div class="p-2 flex" style="width: 15px;"><input type="checkbox" id="all"></div>
                            <div class="p-2 flex agree-title">구디마켓 이용약관(필수), 개인정보 수집 및 이용(필수), 프로모션 정보 수신(선택)에 모두 동의합니다</div>
                        </div>
                    </div>
                    <!-- 구디마켓 이용 약관 -->
                    <div>
                        <!-- 구디마켓 이용 약관 title -->
                        <div class="p-2 title-box">
                            <div class="d-flex" style="line-height: 16px;">
                                <div class="p-2 flex" style="width: 5px;"><input type="checkbox" class="checkbox req"></div>
                                <div class="p-2 flex agree-title">구디마켓 이용약관에 동의(필수)</div>
                            </div>
                        </div>
                        <!-- 구디마켓 이용 약관 content-->
                        <div class="p-2 content-box">
                            <p>
                                네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
                                본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와
                                이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
                                아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
                            </p>
                            <p>
                                네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
                                본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와
                                이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
                                아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
                            </p>
                        </div>
                    </div>  
                    <!-- 개인정보 수집 및 이용 -->
                    <div>
                        <!-- 개인정보 수집 및 이용 약관 title -->
                        <div class="title-box">
                            <div class="d-flex pt-1">
                                <div class="p-2 flex" style="width: 5px;"><input type="checkbox" class="checkbox req"></div>
                                <div class="p-2 flex agree-title">개인 정보 수집 및 이용에 동의(필수)</div>
                            </div>
                        </div>
                        <!-- 개인정보 이용 및 수집 약관 content-->
                        <div class="content-box">
                            <div class="policy_summary">
                                <p class="policy_summary__text">개인정보보호법에 따라 구디마켓에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시 불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.</p>
                            </div>
                            <div class="article">
                                <h3 class="article__title">1. 수집하는 개인정보</h3>
                                <p class="article__text">이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.</p>
                                <div class="clause">
                                    <h4 class="clause__title">회원가입 시점에 네이버가 이용자로부터 수집하는 개인정보는 아래와 같습니다.</h4>
                                    <ul class="sections">
                                        <li class="sections__section">
                                            - 회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 휴대전화번호’를 필수항목으로 수집합니다.
                                            만약 이용자가 입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대전화번호)를 추가로 수집합니다.
                                            그리고 선택항목으로 이메일 주소를 수집합니다.
                                        </li>
                                        <li class="sections__section">
                                            - 단체아이디로 회원가입 시 단체아이디, 비밀번호, 단체이름, 이메일주소, 휴대전화번호를 필수항목으로 수집합니다. 그리고 단체 대표자명을 선택항목으로 수집합니다.
                                        </li>
                                    </ul>
                                    <h4 class="clause__title">서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.</h4>
                                    <p class="clause__text">- 회원정보 또는 개별 서비스에서 프로필 정보(별명, 프로필 사진)를 설정할 수 있습니다. 회원정보에 별명을 입력하지 않은 경우에는 마스킹 처리된 아이디가 별명으로 자동 입력됩니다.</p>
                                    <p class="clause__text">- 네이버 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.</p>
                                    <h4 class="clause__title">서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록, 기기정보, 위치정보가 생성되어 수집될 수 있습니다. 또한 이미지 및 음성을 이용한 검색 서비스 등에서 이미지나 음성이 수집될 수 있습니다.</h4>
                                    <p class="clause__text">
                                        구체적으로 1) 서비스 이용 과정에서 이용자에 관한 정보를 자동화된 방법으로 생성하여 이를 저장(수집)하거나, <br>
                                        2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환하여 수집합니다. 서비스 이용 과정에서 위치정보가 수집될 수 있으며,<br>
                                        네이버에서 제공하는 위치기반 서비스에 대해서는 '네이버 위치기반서비스 이용약관'에서 자세하게 규정하고 있습니다.<br>
                                        이와 같이 수집된 정보는 개인정보와의 연계 여부 등에 따라 개인정보에 해당할 수 있고, 개인정보에 해당하지 않을 수도 있습니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>  
                    <!-- 위치기반 서비스 이용 약관 -->
                    <div>
                        <!-- 위치기반 서비스 이용 약관 title -->
                        <div class="title-box">
                            <div class="d-flex pt-1">
                                <div class="p-2 flex" style="width: 5px;"><input type="checkbox" class="checkbox req"></div>
                                <div class="p-2 flex agree-title">위치기반서비스 이용약관에 동의(필수)</div>
                            </div>
                        </div>
                        <!-- 위치기반 서비스 이용 약관 content-->
                        <div class="content-box">
                            <div style="height: 150px;overflow: scroll auto;">
                                <div class="policy_summary">
                                    <p class="policy_summary__text">
                                        위치기반서비스 이용약관에 동의하시면, <strong>위치를 활용한 광고 정보 수신 등을 포함하는 네이버 위치기반 서비스</strong>를 이용할 수 있습니다.
                                    </p>
                                </div>
                                <div class="article">
                                    <h3 class="article__title">제 1 조 (목적)</h3>
                                    <p class="article__text">이 약관은 네이버 주식회사 (이하 “회사”)가 제공하는 위치기반서비스와 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
                                </div>
                                <div class="article">
                                    <h3 class="article__title">제 2 조 (약관 외 준칙)</h3>
                                    <p class="article__text">
                                        이 약관에 명시되지 않은 사항은 위치정보의 보호 및 이용 등에 관한 법률, 개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전기통신기본법,
                                        전기통신사업법 등 관계법령과 회사의 이용약관 및 개인정보처리방침, 회사가 별도로 정한 지침 등에 의합니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>  
                    <!-- 혜택 정보 수신 동의 -->
                    <div>
                        <!-- 혜택 정보 수신 동의 title -->
                        <div class="title-box">
                            <div class="d-flex pt-1">
                                <div class="p-2 flex" style="width: 5px;"><input type="checkbox" class="checkbox"></div>
                                <div class="p-2 flex agree-title">혜택 정보 수신 동의(선택)</div>
                            </div>
                        </div>
                        <!-- 혜택 정보 수신 동의 content -->
                        <div class="content-box d-flex" style="align-items: center;">
                            <div>
                                네이버에서 제공하는 이벤트/혜택 등 다양한 정보를 휴대전화(네이버앱 알림 또는 문자), 이메일로 받아보실 수 있습니다. 일부 서비스(별도 회원 체계로 운영하거나 네이버 가입 이후 추가 가입하여 이용하는 서비스 등)의 경우, 개별 서비스에 대해 별도 수신 동의를 받을 수 있으며, 이때에도 수신 동의에 대해 별도로 안내하고 동의를 받습니다.
                            </div>  
                        </div>
                    </div>  
                    <div class="d-flex justify-content-center">
                        <button type="button" class="btn btn-secondary btn-lg" style="width: 50%; background-color: #E6F3E6; color: black;" id="cancel">취소</button>
                        <button type="button" class="btn btn-secondary btn-lg" style="width: 50%; color: black; background-color: #FBF7F2;" id="join">확인</button>
                    </div>  
                </div>
            </section>
        </div>
        <script src="/resources/js/agree.js"></script>
        <script>
            check();
        </script>
    </form>
</body>
</html>