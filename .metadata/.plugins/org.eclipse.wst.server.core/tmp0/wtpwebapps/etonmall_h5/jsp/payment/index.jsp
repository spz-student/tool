<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>正式版本</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="initial-scale=1,width=device-width, maximum-scale=1, minimum-scale=1, user-scalable=no">
   	<meta name="apple-mobile-web-app-capable" content="yes">
    <meta content="yes" name="apple-touch-fullscreen">
   	<meta name="App-Config" content="fullscreen=yes,useHistoryState=yes,transition=yes">
   	<meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no,email=no">
	<link rel="stylesheet" type="text/css" href="./css/demo.css">
	<link rel="stylesheet" type="text/css" href="./css/microdone-h5.css">
	<script type="text/javascript" src="./js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="./js/demo.js"></script>
	<script type="text/javascript" src="./js/microdone-h5.min.js"></script>
	<script type="text/javascript">
		var kb = new keyBoard({
			"chaosMode" : 1,// 混乱模式,0:无混乱;1:打开时乱一次;2:每输入一个字符乱一次,默认值0
			"pressStatus" :1,// 按键状态,0:按下、抬起按键无变化;1:按下后有放大镜效果;2:按下、抬起按键的颜色变化,默认值0
			"kbType" : 0,// 键盘类型,0:全键盘;1:纯数字键盘,默认值0
			"svg":"svg"//svg图片的地址
		});
		var passGuard1 = new passGuard({
			"mappurl" : "./send_mapping.jsp",
			"maxLength" : 12,// 最大输入长度
			"regExp1" : "[\\S\\s]",// 输入过程限制的正则
			"regExp2": "[0-9]{6,12}",
			"displayMode" : 0,// 显示形式,0:星号;1:明文,默认值0
			"callBack":cb1,//成功回调
	    	"errorCallBack":cb2,//失败回调
			"rsaPublicKey" : "3081890281810092d9d8d04fb5f8ef9b8374f21690fd46fdbf49b40eeccdf416b4e2ac2044b0cfe3bd67eb4416b26fd18c9d3833770a526fd1ab66a83ed969af74238d6c900403fc498154ec74eaf420e7338675cad7f19332b4a56be4ff946b662a3c2d217efbe4dc646fb742b8c62bfe8e25fd5dc59e7540695fa8b9cd5bfd9f92dfad009d230203010001"// rsa公钥
		});
		var passGuard2 = new passGuard({
			"mappurl" : "./send_mapping.jsp",
			"maxLength" : 12,// 最大输入长度
			"regExp1" : "[\\S\\s]",// 输入过程限制的正则
			"regExp2": "[a-z]{6,12}",
			"displayMode" : 0,// 显示形式,0:星号;1:明文,默认值0
			"callBack":cb3,//成功回调
	    	"errorCallBack":cb4,//失败回调
			"rsaPublicKey" : "3081890281810092d9d8d04fb5f8ef9b8374f21690fd46fdbf49b40eeccdf416b4e2ac2044b0cfe3bd67eb4416b26fd18c9d3833770a526fd1ab66a83ed969af74238d6c900403fc498154ec74eaf420e7338675cad7f19332b4a56be4ff946b662a3c2d217efbe4dc646fb742b8c62bfe8e25fd5dc59e7540695fa8b9cd5bfd9f92dfad009d230203010001"// rsa公钥
		});
		var passGuard3 = new passGuard({
			"mappurl" : "./send_mapping.jsp",
			"maxLength" : 12,// 最大输入长度
			"regExp1" : "[\\S\\s]",// 输入过程限制的正则
			"regExp2": "[0-9]{6,12}",
			"displayMode" : 0,// 显示形式,0:星号;1:明文,默认值0
			"callBack":cb5,//成功回调
	    	"errorCallBack":cb6,//失败回调
			"rsaPublicKey" : "3081890281810092d9d8d04fb5f8ef9b8374f21690fd46fdbf49b40eeccdf416b4e2ac2044b0cfe3bd67eb4416b26fd18c9d3833770a526fd1ab66a83ed969af74238d6c900403fc498154ec74eaf420e7338675cad7f19332b4a56be4ff946b662a3c2d217efbe4dc646fb742b8c62bfe8e25fd5dc59e7540695fa8b9cd5bfd9f92dfad009d230203010001"// rsa公钥
		});
		function cb1(){
			console.log("成功1");
		}
		function cb2(){
			console.log("失败1");
		}
		function cb3(){
			console.log("成功2");
		}
		function cb4(){
			console.log("失败2");
		}
		function cb5(){
			console.log("成功3");
		}
		function cb6(){
			console.log("失败3");
		}
	</script>
  </head>
  <body>
  	 <form id="form1" name="form1" method="post" action="decrypt.jsp"">
    <div id="Main">
        <div id="TitleBar">
            <div id="LogoBg_Topbar">
                	北京微通新成手机网银密码控件Demo
            </div>
             <div id="LoginTab">
                <table id="TabTitle">
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td class="left on">
                                        登录场景
                                    </td>
                                </tr>
                            </table>
                        </td>

                    </tr>
                </table>
            </div>           
        </div>
        <div id="InputBlock">
            <div id="InputInfoTable">
                <div class="line5px" ></div>
                <table class="InputLine">
                    <tbody>
                        <tr>
                            <td class="left" align="right">
                                <table class="AutoAlignLabel">
                                    <tr>
                                        <td class="BeginWord">账</td>
                                        <td class="EndWord">号</td>
                                    </tr>
                                </table>
                            </td>
                            <td class="right" align="left">
  <input type="text" value="tester" id="username" onfocus="kb.hide();" name="username" class="de2 NoneInput90" maxlength="50" tabindex="1"/>
                            <input type="text" value="tester" id="username2" onfocus="kb.hide();" name="username" class="de2 NoneInput90" maxlength="50" tabindex="1"/>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="line0px"></div>
                <table class="InputLine">
                    <tbody>
                        <tr>
                            <td class="left" align="right">
                                <table class="AutoAlignLabel">
                                    <tr>
                                        <td class="BeginWord">登</td>
                                        <td class="MidWord">录</td>
                                        <td class="MidWord">密</td>
                                        <td class="EndWord">码</td>
                                    </tr>
                                </table>
                            </td>
                            <td class="right" align="left" >
                                <input type="text" readonly="readonly" id="kb1" name="input3" placeholder="请输入密码" class="default NoneInput90" maxlength="50" tabindex="3" "/>
                            <script>
			  					//初始化密码卫士,绑定键盘对象。数字参数：0代表全键盘，1代表数字键盘
			  					passGuard1.generate("kb1",kb,1);
		  					</script>
	  				</td>
                        </tr>
                    </tbody>
                      <tbody>
                        <tr>
                            <td class="left" align="right">
                                <table class="AutoAlignLabel">
                                    <tr>
                                        <td class="BeginWord">登</td>
                                        <td class="MidWord">录</td>
                                        <td class="MidWord">密</td>
                                        <td class="EndWord">码</td>
                                    </tr>
                                </table>
                            </td>
                            <td class="right" align="left">
                                <input type="text" id="kb2" readonly="readonly" name="input3" placeholder="请输入姓名" class="default NoneInput90" maxlength="50" tabindex="3"/>
                            <script>
			  					//初始化密码卫士,绑定键盘对象。数字参数：0代表全键盘，1代表数字键盘
			  					passGuard2.generate("kb2",kb,0);
		  					</script>
	  				</td>
                        </tr>
                    </tbody>
                    <tbody>
                        <tr>
                            <td class="left" align="right">
                                <table class="AutoAlignLabel">
                                    <tr>
                                        <td class="BeginWord">登</td>
                                        <td class="MidWord">录</td>
                                        <td class="MidWord">密</td>
                                        <td class="EndWord">码</td>
                                    </tr>
                                </table>
                            </td>
                            <td class="right" align="left" >
                                <input type="text" readonly="readonly" id="kb3" name="input3" placeholder="请输入密码" class="default NoneInput90" maxlength="50" tabindex="3"/>
                            <script>
			  					//初始化密码卫士,绑定键盘对象。数字参数：0代表全键盘，1代表数字键盘
			  					passGuard3.generate("kb3",kb,0);
		  					</script>
	  				</td>
                        </tr>
                    </tbody>
                </table>
                <div class="line0px"></div>
                <div class="line0px"></div>
                <div class="line10px"></div>
            </div>
            <div id="LoginBar">
            	<table id="LoginBtn" onclick="javascript:formSubmit();">
                    <tr>
                        <td>
                            登录
                        </td>
                    </tr>
                </table>
            </div>
        
        </div>
    </div>
		<input type="hidden" name="username" id="username" value=""/>
		<input type="hidden" name="password" id="password" value=""/>
		<input type="hidden" name="repassword" id="repassword" value=""/>
    </form>
    <script type="text/javascript">
    	//var Le;
		window.onload=function(){
			Le = $(".default").length;
			kb.generate();
			winHeight = $(window).height();
		};
	</script>
	
</body>
</html>