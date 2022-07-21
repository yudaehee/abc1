<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
        <link href="${contextPath }/resources/css1/sb-admin-2.min.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">All BOOK Club</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                     
                            
                        
                          <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">일반도서</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="ani">만화</a></li>
                            </ul>
                        </li>
                               
                               
                                
                               
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">웹소설&소설</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="web">소설&웹소설</a></li>
                            </ul>
                        </li>
                       
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">게시판</a>
	                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	                                <li><a class="dropdown-item" href="list">리뷰 게시판</a></li>
	                            </ul>
 	                       </li>
    	               </ul>
                                
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">      
                        <form class="d-flex">
                        <li><a class="dropdown-item" href="update">회원수정하기</a>
                       
                    </form>
                        <form class="d-flex">
                        <li><a class="dropdown-item" href="delete">회원탈퇴</a>
                       
                    </form>
                        <form class="d-flex">
                        <li><a class="dropdown-item" href="main">로그아웃</a>
                       
                    </form>
        		</nav>
                        
        
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">All Book Club에 오신걸 환영합니다</h1>
                    <p class="lead fw-normal text-white-50 mb-0">당신이 알지 못했던 책의 세계를 낱낱이 파헤쳐드립니다</p>
                    <p class="lead fw-normal text-white-50 mb-0">상단의 대분류를 선택해주세요</p>
                </div>
            </div>
               
             <div class="main_book">
					<h3>애니</h3>
					<c:forEach var="itmes" items="${ani }">
						<div class="book">
							<a href="${contextPath}/goodsDetail?goodsId=${item.goodsId }"><img class="link"  src="${contextPath}/resources/image/1px.gif""></a> 
							<img width="121" height="154" src="${contextPath}/thumbnail?goodsFileName=${item.goodsFileName}">
							<div class="title">${item.goodsTitle }</div>
							<div class="price"><fmt:formatNumber value="${item.goodsPrice}" type="number" var="goodsPrice" />${goodsPrice}원</div>
						</div>
				  	</c:forEach>
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
                               
                      
                                
                           
                             
                           
                           
                               
                     
                               
	                                
                           
                  	
                    
                       
                  
                   
                            
                       
                        
         	     
          
        
        
