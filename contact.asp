<!--#include file="conn.asp"-->
<!--#include file="sp_inc/class_page.asp"-->
<!--#include file="plugIn/Setting.Config.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><%=config_sitename%></title>
<meta name="keywords" content="<%=config_seokeyword%>">
<meta name="description" content="<%=config_seocontent%>">
<link href="css/public.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.proLi{ width:160px; line-height:30px; border-bottom:#CCCCCC solid 1px; display:block; background:url(images/li.jpg) no-repeat 30px 50%; padding-left:50px; margin-left:32px;}
 -->
</style>
</head>
<body>
<div id="container">
<table id="__01" width="981" height="837" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
		<!--#include file="head.asp" -->
		</td>
	</tr>
	<tr>
		<td>
		<table id="__01" width="981" height="654" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td>
					<img src="images/neiye_gg_01.jpg" width="981" height="179" alt=""></td>
			</tr>
			<tr>
				<td>
				<table id="__01" width="981" height="475" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td>
						<!--#include file="left.asp" -->
						</td>
						<td>
						<table id="__01" width="729" height="475" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td background="images/neiye_ft_01.jpg" width="729" height="52">
								<div style="padding-top:20px; font-weight:bold; margin-left:15px; width:100px;float:left;">��ϵ����</div>
								<div style="padding-top:20px;  margin-right:3px; float:right;width:200px; text-align:right">��ǰλ�� > <a href="index.asp">��ҳ</a> > <a href="contact.asp">��ϵ����</a></div>
								</td>
							</tr>
							<tr>
								<td background="images/neiye_mainbg.jpg" width="729" height="408">
								<div id="neiye_main">
								<div id="neiye_text">
								<!--���ݿ�ʼ -->
								<% singlename = VerificationUrlParam("signle","string","��ϵ����")
									response.Write UserSinglePage(singlename)%>
								<!--���ݽ��� -->
								</div>
								</div>
								</td>
							</tr>
							<tr>
								<td>
									<img src="images/neiye_ft_03.jpg" width="729" height="15" alt=""></td>
							</tr>
						</table>
						</td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td  width="981" height="44">
		<!--#include file="footer.asp" -->
		</td>
	</tr>
</table>
</div>
</body>
</html>
