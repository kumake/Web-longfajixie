<table id="__01" width="252" height="475" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td background="images/left_01.jpg" width="252" height="39">
			<div style="padding-top:16px; font-size:14px; font-weight:bold; color:#0F2B7F; margin-left:23px;">��Ʒ����</div>
		</td>
	</tr>
	<tr>
		<td background="images/left_bg.jpg" width="252" height="127">
		<ul id="left_cpfl">
		<%
				set rs = UICon.Query("select  * from Sp_dictionary where  categoryID = 12 order by  IndexID")
				do while not rs.eof
			
			%>	
			<li>����<a  href="product.asp?categoryid=<%=rs("id")%>&amp;itemid=&lei=<%=rs("categoryname")%>" style="color:#333" title="<%=rs("categoryname")%>"   ><%=rs("categoryname")%></a></li>
			
			<%
				rs.movenext
				loop
				rs.close
				set rs=nothing
			%>
		</ul>
		
		</td>
	</tr>
	<tr>
		<td>
			<img src="images/left_03.jpg" width="252" height="93" alt=""></td>
	</tr>
	<tr>
		<td background="images/left_bg.jpg" width="252" height="202">
		<div id="left_lxwm">
			<p>�ء�ַ��XXXXXXXXXX</p>
			<p>�ʡ��ࣺXXXXXXXXXX</p>
			<p>�硡����XXXXXXXXXX</p>
			<p>�����棺XXXXXXXXXX</p>
			<p>�ʡ��䣺XXXXXXXXXX</p>
			<p>����ַ��www.longfajixie.com</p>
			<p>�ء�ַ��XXXXXXXXXX</p>
		</div>
		</td>
	</tr>
	<tr>
		<td>
			<img src="images/left_05.jpg" width="252" height="14" alt=""></td>
	</tr>
</table>