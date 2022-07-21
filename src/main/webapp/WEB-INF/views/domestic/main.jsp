<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${contextPath }/resources/css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">All BOOK Club</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                     
                    
	                    <c:choose>
			    		<c:when test="${loginUser == true and memberInfo == 'aa' }">  
				   			<li><a class="dropdown-item" >관리자 화면</a></li>
				   			<li><a class="dropdown-item" href="${contextPath}/memberlist">회원정보</a></li>
				   			<li><a class="dropdown-item" href="${contextPath}/adminOrderMain">주문현황</a></li>
				   			<li><a class="dropdown-item" href="${contextPath}/logout">로그아웃</a></li>
						</c:when>
			     		<c:when test="${loginUser == true and not empty memberInfo }">
				   			<li><a class="dropdown-item" href="${contextPath}/main1">상품보기</a></li>
				   			<li><a class="dropdown-item" href="${contextPath}/logout">로그아웃</a></li>
				 		</c:when>
				 		<c:otherwise>
							<li><a class="dropdown-item" href="login">로그인</a></li>
							<li><a class="dropdown-item" href="join">회원가입</a></li> 
				 		</c:otherwise>
					</c:choose>
				</ul>
			</ul>
		</div>
	</div>      
				   			
                      
        </nav>
        <
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">All Book Club에 오신걸 환영합니다</h1>
                    <p class="lead fw-normal text-white-50 mb-0">당신이 알지 못했던 책의 세계를 낱낱이 파헤쳐드립니다</p>
                    <p class="lead fw-normal text-white-50 mb-0">먼저 로그인 이나 회원가입 후 이미지가 보여집니다</p>
                </div>
            </div>
         	     
          
       
        
                    
                   
        
        <!-- Footer-->
        <footer class="py-5 bg-dark">
         	<div>
	           &emsp;&emsp; &emsp; &emsp;&emsp; &emsp; &emsp;&emsp; &emsp; &emsp;&emsp; &emsp; &emsp;&emsp; &emsp; &emsp;&emsp; &emsp; &emsp;&emsp; &emsp;<a class="m-0 text-center text-white">회사 소개</a>&emsp;&emsp; &emsp;&emsp; &emsp;
	            &emsp;&emsp; &emsp; <a class="m-0 text-center text-white">청약철회</a>&emsp;&emsp; &emsp;&emsp; &emsp;
	            &emsp;&emsp; &emsp; <a class="m-0 text-center text-white">이용약관</a>&emsp;&emsp;	 &emsp;&emsp; &emsp;
	           &emsp;&emsp; &emsp;  <a class="m-0 text-center text-white">개인처리방침</a>&emsp;&emsp; &emsp;&emsp; &emsp;
	          &emsp;&emsp; &emsp;   <a class="m-0 text-center text-white">이메일 무단 수집 거부</a>&emsp;&emsp; &emsp;&emsp; &emsp;
         	</div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="${contextPath }/resources/js/scripts.js"></script>
    </body>
</html>
                            
                        
                          
                   
