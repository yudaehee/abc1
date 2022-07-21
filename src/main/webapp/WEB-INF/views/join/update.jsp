<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
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
                <a class="navbar-brand" href="main">웹소설&소설</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                     
                            
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">일반 도서</a>
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
                        <li><a class="dropdown-item" href="update">회원수정</a></li>
                     
                        <form class="d-flex">
                        <li><a class="dropdown-item" href="delete">회원탈퇴하기</a></li>
                       
                        <form class="d-flex">
                        <li><a class="dropdown-item" href="${contextPath}/logout">로그아웃</a></li>
                       
                    </form>
                  
                
                
        </nav>
	                               
        
        		<body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <!-- Create Organization-->
                            <div class="col-xl-5 col-lg-6 col-md-8 col-sm-11">
                                <div class="card mt-5">
                                    <div class="card-body p-5 text-center">
                                        <div class="icons-org-create align-items-center mx-auto">
                                            <i class="icon-users" data-feather="users"></i>
                                            <i class="icon-plus fas fa-plus"></i>
                                        </div>
                                        <div class="h3 text-primary font-weight-300 mb-0">회원수정	</div>
                                    </div>
                                    <hr class="m-0" />
                                    <div class="card-body p-5">
                                  	<form action="${contextPath}/update" method="POST">
                                      	
                                            
                                            <div class="form-group">이름<input name="memberName" class="form-control form-control-solid"  placeholder="정확한 아이디를 써주세요" value="${memberName}"/></div>
                                            <div class="form-group">아이디<input name="memberId" class="form-control form-control-solid"  placeholder="정확한 아이디를 써주세요" value="${memberId}"/></div>
                                            
                                            <tr>
											     <td>성별</td>
											     <td>
											       	<c:choose>
											        	<c:when test="${memberDto.memberGender eq 'man'}">
													        <input type="radio" name="memberGender" value="man" checked /> 남성&emsp;&emsp;&emsp;
															<input type="radio" name="memberGender" value="women" />여성
														</c:when>
														<c:otherwise>
															<input type="radio" name="memberGender" value="man" /> 남성&emsp;&emsp;&emsp;
															<input type="radio" name="memberGender" value="women" checked />여성
														</c:otherwise> 
											       	</c:choose>
										        	</td>
									        	</tr> 
									        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                             <td>핸드폰 번호</td>
										        <td>
										        	<select name="hp1" >
														<option>없음</option>
														<option <c:if test="${memberDto.hp1 eq '010' }"> selected </c:if> value="010">010</option>
														<option <c:if test="${memberDto.hp1 eq '011' }"> selected </c:if> value="011">011</option>
														<option <c:if test="${memberDto.hp1 eq '019' }"> selected </c:if> value="019">019</option>
													</select> - 
													<input size="10px" type="text" name="hp2" value="${memberDto.hp2}"> - 
													<input size="10px" type="text" name="hp3" value="${memberDto.hp3}">
												</td>
	      									  </tr>  
                                            <div class="form-group">주소<input name="regidence" class="form-control form-control-solid" type="text" placeholder="" value="${memberDto.regidence}"/></div>
                                            <div class="form-group">Email<input name="email" value="${memberDto.email}" class="form-control form-control-solid" type="email" placeholder="" /></div>
                                            
                                          
                                         	<div class="form-group" align="center"><input type="submit" value="수정하기"></div>
                                          
                                            <div class="form-group mb-0 text-center">
                                                Or,
                                                <a href="main1">뒤로가기</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="footer mt-auto footer-dark">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6 small">Copyright &copy; Your Website 2021</div>
                            <div class="col-md-6 text-md-right small">
                                <a href="#!">Privacy Policy</a>
                                &middot;
                                <a href="#!">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
                                            
                                            
                                                
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>

</body>
</html>          
                                
                               
                                
                                
                                
                               
                          
                        
                                
                       
                             
                           
                               
                               
                           