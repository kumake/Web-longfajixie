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
								<div style="padding-top:20px; font-weight:bold; margin-left:15px; width:100px;float:left;">��Ʒչʾ</div>
								<div style="padding-top:20px;  margin-right:3px; float:right;width:200px; text-align:right">��ǰλ�� > <a href="index.asp">��ҳ</a> > <a href="product.asp">��Ʒչʾ</a></div>
								</td>
							</tr>
							<tr>
								<td background="images/neiye_mainbg.jpg" width="729" height="408">
								<div id="neiye_main">
									<!--�������ݿ�ʼ -->
									<%  
															key=trim(replace(request("key"),"'",""))
								 CategoryID = VerificationUrlParam("CategoryID","int","0")%>
												<%
												''''''���ø÷�ҳ���͵ĺô���
												''�����ҳ��ʽ����һ���Խ����ݶ����ڴ�ͨ���α���ʾÿҳ��¼
												''�����ݱ���¼����10������1000��ʱ��
												''����һ֧�ʸ÷�ҳ��ʽ�ĺô�������Ҫ��������¼�ʹӱ��ж���������¼
												''���ݲ������ݼ�¼Խ��Ч��Խ���ԡ����ԣ�asp+sql2000+������100��
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
												
												
												if categoryID<>0 then strwhere = strwhere &" and categoryID="&categoryID&""
												if key<>"" then strwhere = strwhere &" and title like '%"&key&"%'"
												''''������¼ֻȡһ�ν�ʡ���ݿ�ѹ��
												Dim total:total = VerificationUrlParam("total","int","0")
												if total = 0 then 
													Dim Tarray:Tarray = UICon.QueryData("select count(*) as total from user_pro where "&strwhere&"")
													total_record = Tarray(0,0)
												else
													total_record = total
												end if
												current_page = VerificationUrlParam("page","int","1")
												PCount = 12			'''��ҳѭ����ʾ��¼��
												pagesize = 8		'''ÿҳ��ʾ��¼��
												
												'���ַ�ʽΪ����IDΪ�ؼ�������
												'���з�ҳ��ʽЧ����á�����ʹ��,��������Ч���ܵ�����
												'Dim sql:sql = UICon.QueryPageByNum("categoryID,id,title,posttime","user_news", ""&strwhere&"", "ID", true,current_page,pagesize)
												'���ַ�ʽΪ����IndexID����IndexIDֵԽ��Խ��ǰ
												'									 "--------------��Ҫ���õ��ֶ�----------------","-������-","--��ѯ����---", "���ùؼ���","�����ֶ�","����true","��ǰҳ","ÿҳ��¼"
												Dim sql:sql = UICon.QueryPageByNotIn("*","user_pro", ""&strwhere&"", "ID", "IndexID desc,ID",false,current_page,pagesize)
												'response.Write sql
												'response.End()
												set rs = UICon.QUery(sql)
												if rs.recordcount<>0 then
												do while not rs.eof
												'''''''''��ô�ֶ���''''''
												''��ҳ�����DIV+css�����Է���ʵ�������ǳ����㲻��Ҫ��ҳ��
												''ֻ��Ҫ�ı�css�� procontent ��ǩ�µ�li�Ŀ��ȼ���
												''һ�� ֻҪprocontent �Ŀ��Ⱥ�li�Ŀ���һ��
												''��Ҫ���� ֻҪ��li�Ŀ�������Ϊ procontent�ļ���֮��
											   %>
												<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
												  <% 
												  for i=1 to 2
												   %>
												  <tr>
													<% 
													for k=1 to 4
													%>
													<td align="center"  >
												
																  <table width="160" height="122" border="0" cellpadding="0" cellspacing="0" style="margin-bottom:10px;">
																	<tr>
																	  <td height="130" align="center" valign="middle">
																	  <%if rs("Field_picture")<>"" then%>
								<a href="product_in.asp?categoryID=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>" ><img src="<%=rs("Field_picture")%>" width="150" height="110"/></a>
																		<%else%>
																		<a href="product_in.asp?categoryID=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>" class="pro_pic">��������ͼ</a>
																		<%end if%>
																		</td>
																	</tr>
																	<tr>
																	  <td height="23"   align="center" valign="middle"><span style=""><a href="product_in.asp?categoryID=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>"><%=rs("Title")%></a></span></td>
																	</tr>
																	</table>	
													</td>
													<% 
													rs.movenext
													if rs.eof then exit for
													next
													%>
												  </tr>
													<% 
													if rs.eof then exit for
													next
													loop
													
													%>
												</table>								
											  <div style="line-height:30px; text-align:center; width:100%;"> <%PageIndexUrl total_record,current_page,PCount,pagesize,showpageNum,showpagetotal,IsEnglish%></div>
															<% 
												else
												Response.Write("&nbsp;")
												end if
												 %>
									<!--�������ݽ��� -->
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