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
     
     	<script src="${contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script src="${contextPath}/resources/ckeditor/ckeditor.js"></script>  
      
      	<script>

		var validateMemberId = false;
	
		$().ready(function() {
		
		$("#btnOverlapped").click(function(){
			
		    var memberId = $("#memberId").val();
		    if (memberId == ''){
		   		alert("ID를 입력하세요");
		   		return;
		    }
		   
		    $.ajax({
		       type : "post",
		       url : "${contextPath}/overlapped",
		       data : {"id" : memberId},
		       success : function(isOverLapped){
		          if (isOverLapped == "false"){
		          	alert("사용할 수 있는 ID입니다.");
		          	validateMemberId = true;
		          }
		          else {
		          	alert("사용할 수 없는 ID입니다.");
		          	validateMemberId = false;
		          }
		       }
		    });
		});	
		
	});
	
	function checkValidationField() {
		if (!validateMemberId) {
			alert("아이디를 확인해주세요.");
			return false;
		}
		
	}
	
	
</script>
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
                                        </div>
                                           
                                          
						        <form action="${contextPath}/join" method="post" onsubmit="return checkValidationField()">
                                        <div class="h3 text-primary font-weight-300 mb-0">회원가입</div>
                                    </div>
                                    <hr class="m-0" />
                                    <div class="card-body p-5">
                                        <form>
                                            <div>아이디<input class="form-control form-control-solid" type="text" name="memberId" id="memberId"/></div>
                                             <input type="button" id="btnOverlapped" value="중복확인" />
                                           
                                            <div class="form-group">비밀번호<input class="form-control form-control-solid" type="password" name="memberPw" id="memberPw" placeholder="4자 이상 적어주세요"  /></div>
	                                        
	                                        <div class="form-group">이름<input class="form-control form-control-solid" name="memberName" id="memberName" /></div>
                                            
                                            <tr>
                                            <td>성별</td>
                                            <td>
                                            <input type="radio"  name="memberGender" value="man"  checked/> 남성&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                            <input type="radio"  name="memberGender" value="woman"/> 여성 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                            </td>
                                            </tr>
									        
							                <tr>
									     	  <td> 핸드폰
									         	 <select name="hp1">
													<option name="없음 ">없음</option>
													<option selected name="010" >010</option>
													<option  name="011">011</option>
													<option  name="019">019</option>
													
												</select> - 
												<input size="10px" type="text" name="hp2"> - 
												<input size="10px" type="text" name="hp3">
									        </td>
								        </tr>                         
								               
                                            <div class="form-group">지역<input class="form-control form-control-solid" type="text" name="regidence" placeholder="예시) 서울,미국 등등.."/></div>
                                           
								                           
                                            <div class="form-group">이메일<input class="form-control form-control-solid" type="email" name="email" placeholder="정확한 이메일을 적어주세요 문제시 본인책임" /></div>
                                            
                                            
                                        <div> <div class="form-group" align="center"><input type="submit" value="가입하기" align="center" ></a>
                                          
                                            <div class="form-group mb-0 text-center">
                                                Or,
                                                <tr>
												
		        <td colspan="2" align="center">
		        	이미 회원가입이 되어있다면 ? <a href="login"><strong>로그인하기</strong></a>
		        </td>
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
                            <div class="col-md-6 small">Copyright &copy; Your Website 2022</div>
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
        
    </body>
</html>
							                
									        	
									         	 