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
								<div style="padding-top:20px; font-weight:bold; margin-left:15px; width:100px;float:left;">��˾����</div>
								<div style="padding-top:20px;  margin-right:3px; float:right;width:200px; text-align:right">��ǰλ�� > <a href="index.asp">��ҳ</a> > <a href="news.asp">��˾����</a></div>
								</td>
							</tr>
							<tr>
								<td background="images/neiye_mainbg.jpg" width="729" height="408">
								<div id="neiye_main">
								<!--���ݿ�ʼ -->
								<div style="line-height:30px; margin-top:20px ">
												<%  
												CategoryID = VerificationUrlParam("CategoryID","int","0")%>
												<%
												''''''���ø÷�ҳ���͵ĺô���
												''�����ҳ��ʽ����һ���Խ����ݶ����ڴ�ͨ���α���ʾÿҳ��¼
												''�����ݱ���¼����10������1000��ʱ��
												''����һ֧�ʸ÷�ҳ��ʽ�ĺô�������Ҫ��������¼�ʹӱ��ж���������¼
												''���ݲ������ݼ�¼Խ��Ч��Խ���ԡ����ԣ�asp+sql2000+������500��
												'''''''
												Dim total_record   	'�ܼ�¼��
												Dim current_page	'��ǰҳ��
												Dim PCount			'ѭ��ҳ��ʾ��Ŀ
												Dim pagesize		'ÿҳ��ʾ��¼��
												Dim showpageNum:showpageNum = true		'�Ƿ���ʾ����ѭ��ҳ
												Dim showpagetotal:showpagetotal = true	'�Ƿ���ʾ��¼����
												Dim IsEnglish:IsEnglish = false			'�Ƿ���ʾӢ�ķ�ҳ��ʽ		
												Dim strwhere:strwhere = "isdel=0"		'��ѯ����
												'''��ȡ��ѯ����
												''''������¼ֻȡһ�ν�ʡ���ݿ�ѹ��
												if CategoryID<>0 then 
												strwhere = strwhere & " and categoryID="&CategoryID&""
												
												end if
												Dim total:total = VerificationUrlParam("total","int","0")
												if total = 0 then 
												Dim Tarray:Tarray = UICon.QueryData("select count(*) as total from user_news where "&strwhere&"")
												total_record = Tarray(0,0)
												else
												total_record = total
												end if
												'''''
												
												current_page = VerificationUrlParam("page","int","1")
												PCount = 7			'''��ҳѭ����ʾ��¼��
												pagesize = 10		'''ÿҳ��ʾ��¼��
												'���ַ�ʽΪ����IDΪ�ؼ�������
												'���з�ҳ��ʽЧ����á�����ʹ��,��������Ч���ܵ�����
												'Dim sql:sql = UICon.QueryPageByNum("categoryID,id,title,posttime","user_newss", ""&strwhere&"", "ID", true,current_page,pagesize)
												'���ַ�ʽΪ����IndexID����IndexIDֵԽ��Խ��ǰ
												Dim sql:sql = UICon.QueryPageByNotIn("*","user_news", ""&strwhere&"", "ID", "indexID desc,ID",false,current_page,pagesize)
												'response.Write sql
												'response.End()
												set rsn = UICon.Query(sql)
												if rsn.recordcount<>0 then
												do while not rsn.eof
												%>
												<table width="95%" border="0" cellspacing="0" cellpadding="0" style="margin-left:10px; ">
												<tr style="border-bottom:#E4E4E4 solid 1px; line-height:30px;">
												<td height="30" align="left" valign="middle" class="news_title" style=" line-height:30px;border-bottom:1px #ccc dotted;">					<span style="float:right"><%=year(rsn("PostTime"))%>-<%=month(rsn("PostTime"))%>-<%=day(rsn("PostTime"))%></span>
												<span style="font-family:'����';">��</span><a href="news_in.asp?categoryid=<%=rsn("categoryID")%>&amp;itemid=<%=rsn("id")%>" class="y_0"><%=rsn("title")%></a> </td>
												</tr>
												</table>
												<%
												rsn.movenext
												loop
												
												%>
											
												<% end if %>
												 <div style="line-height:30px; text-align:center; width:100%;"> <%PageIndexUrl total_record,current_page,PCount,pagesize,showpageNum,showpagetotal,IsEnglish%></div>
												</div>
								<!--���ݽ��� -->
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