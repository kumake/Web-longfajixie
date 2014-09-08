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
<table id="__01" width="981" height="1121" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
			<!--#include file="head.asp" -->
		</td>
	</tr>
	<tr>
		<td>
		<table id="__01" width="981" height="938" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="981" height="299">
				<!--内容开始 -->
		<div style="margin-left:2px;">
			<div style="">
			<SCRIPT type=text/javascript>
			<!--
			var focus_width=979
			var focus_height=299
			var text_height=0
			var swf_height = focus_height+text_height
			
			var pics='images/t1.jpg|images/t2.jpg'
			var links='bc/news_in.asp?itemid=14|images/t1.jpg|images/t2.jpg'
			var texts='images/t1.jpg|images/t2.jpg'
			
			
				document.write('<object ID="focus_flash" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
				document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="images/playswf.swf"><param name="quality" value="high"><param name="bgcolor" value="#FFFFFF">');
				document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
				document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
				document.write('<embed ID="focus_flash" src="images/playswf.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#C5C5C5" quality="high" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');	
			document.write('</object>');
				
				//-->
				</SCRIPT>
		  </div>
		  </div>
		<!--内容结束 -->
				</td>
			</tr>
			<tr>
				<td>
					<img src="images/index_dd_02.jpg" width="981" height="31" alt=""></td>
			</tr>
			<tr>
				<td>	
			<table id="__01" width="981" height="210" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td>
					<table id="__01" width="399" height="210" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<img src="images/index_ki_01.jpg" width="399" height="32" alt=""></td>
						</tr>
						<tr>
							<td width="399" height="178">
							<div id="index_gywm">
							<p>　　南通市龙发机械制造有限公司拥有先进的管理体系，雄厚的技术力量，完善的质保体系，现代化生产加工基地及一支训练有素的职工队伍；全方位的售前、售中、售后服务，使用户的设备始终处于高效运转的有利保障中；质量取胜”的经营理念，不断引进高级管理人才与技术骨干，建立健全现代化企业管理制度，本着“开拓创新，锐意进取”的精神，吸取国际知名品牌的先进。使用户的设备始终处于高效运转的有利保障中；另外公司始终坚持“诚信为本，质量取胜”的经营理念术骨干。   >></p>
							</div>
							</td>
						</tr>
					</table>
					</td>
					<td>
					<table id="__01" width="295" height="210" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<img src="images/index_oi_01.jpg" width="295" height="42" alt=""></td>
						</tr>
						<tr>
							<td width="295" height="168">
							<ul id="index_cpxl">
								<li>　橡胶履带式抛丸机</li>
								<li>　钢瓶（钢管）内壁抛丸清理机</li>
								<li>　钢管(钢瓶)外壁抛丸清理机</li>
								<li>　带钢专用抛丸清理机</li>
								<li>　橡胶履带式抛丸机</li>
								<li>　钢管(钢瓶)外壁抛丸清理机</li>
							</ul>
							</td>
						</tr>
					</table>
					</td>
					<td>
					<table id="__01" width="287" height="210" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<img src="images/index_yu_01.jpg" width="287" height="42" alt=""></td>
						</tr>
						<tr>
							<td width="287" height="168">
							<ul id="index_hyxw">
								<%
									set rs = UICon.Query("select top 6 * from user_news order by id desc")
									do while not rs.eof
								
								%>
									<li>　<a  href="news_in.asp?categoryid=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>" title="<%=rs("title")%>"  target="_blank" ><%=left(rs("title"),20)%></a></li>	
								<%
									rs.movenext
									loop
									rs.close
									set rs=nothing
								%>
							</ul>
							</td>
						</tr>
					</table>
					</td>
				</tr>
			</table></td>
			</tr>
			<tr>
				<td>
					<img src="images/index_dd_04.jpg" width="981" height="39" alt=""></td>
			</tr>
			<tr>
				<td width="981" height="348">
				<div id="index_cpzs">
					<div class="cpzs_box">
						<div class="cpzs_pic">
						<img src="images/1.jpg" height="125" />
						</div>
						<p>橡胶履带式抛丸机</p>
					</div>
					<div class="cpzs_box">
						<div class="cpzs_pic">
						<img src="images/1.jpg" height="125" />
						</div>
						<p>橡胶履带式抛丸机</p>
					</div>
					<div class="cpzs_box">
						<div class="cpzs_pic">
						<img src="images/1.jpg" height="125" />
						</div>
						<p>橡胶履带式抛丸机</p>
					</div>
					<div class="cpzs_box">
						<div class="cpzs_pic">
						<img src="images/1.jpg" height="125" />
						</div>
						<p>橡胶履带式抛丸机</p>
					</div>
					<div class="cpzs_box">
						<div class="cpzs_pic">
						<img src="images/1.jpg" height="125" />
						</div>
						<p>橡胶履带式抛丸机</p>
					</div>
					<div class="cpzs_box">
						<div class="cpzs_pic">
						<img src="images/1.jpg" height="125" />
						</div>
						<p>橡胶履带式抛丸机</p>
					</div>
					<div class="cpzs_box">
						<div class="cpzs_pic">
						<img src="images/1.jpg" height="125" />
						</div>
						<p>橡胶履带式抛丸机</p>
					</div>
					<div class="cpzs_box">
						<div class="cpzs_pic">
						<img src="images/1.jpg" height="125" />
						</div>
						<p>橡胶履带式抛丸机</p>
					</div>
					<div class="cpzs_box">
						<div class="cpzs_pic">
						<img src="images/neiye_kl_01.jpg" height="125" />
						</div>
						<p>橡胶履带式抛丸机</p>
					</div>
					<div class="cpzs_box">
						<div class="cpzs_pic">
						<img src="images/index_dd_01.jpg" height="125" />
						</div>
						<p>橡胶履带式抛丸机</p>
					</div>
					
					
				</div>
				</td>
			</tr>
			<tr>
				<td>
					<img src="images/index_dd_06.jpg" width="981" height="11" alt=""></td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td>
		<!--#include file="footer.asp" -->
		</td>
	</tr>
</table>
</div>
</body>
</html>
