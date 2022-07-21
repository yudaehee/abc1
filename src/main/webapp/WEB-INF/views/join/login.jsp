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
                                        <div class="h3 text-primary font-weight-300 mb-0">로그인	</div>
                                    </div>
                                    <hr class="m-0" />
                                    <div class="card-body p-5">
                                  	<form action="${contextPath}/login" method="POST">
                                      
                                            <div class="form-group">아이디<input name="memberId" id="memberId" class="form-control form-control-solid" type="text"/></div>
                                            <div class="form-group">비밀번호<input name="memberPw" class="form-control form-control-solid" type="password" /></div>
                                            
                                         	<div class="form-group" align="center"><input type="submit" value="로그인"></div>
                                          
                                            <div class="form-group mb-0 text-center">
                                                Or,
                                                <a href="main">뒤로가기</a>
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