<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%
    String selQry = "select * from tbl_chat c inner join tbl_buisness b on (c.buisness_idto=b.buisness_id) or (c.buisness_idfrom=b.buisness_id) where b.buisness_id='" + session.getAttribute("bid") + "' order by buisness_id";
    System.out.println(selQry);
    ResultSet rs = con.selectCommand(selQry);
    while (rs.next()) {
        if (rs.getString("buisness_idto").equals(session.getAttribute("bid"))) {

%>

<div class="chat-message is-received">
    <img src="../../Assets/Template/friendskit/assets/img/avatars/avatar-w.png" alt="">
    <div class="message-block">
        <span>Admin</span>
        <div class="message-text"><%=rs.getString("chat_message")%></div>
    </div>
</div>
<div class="chat-message" style="margin: 0px; padding: 0px" >

</div>

<%

} else if (rs.getString("buisness_idfrom").equals(session.getAttribute("bid"))) {
    
%>
<div class="chat-message is-sent">
    <img src="../../Assets/Files/<%=session.getAttribute("blogo")%>" alt="">
    <div class="message-block">
        <span>you</span>
        <div class="message-text"><%=rs.getString("chat_message")%></div>
    </div>
</div>
<div class="chat-message" style="margin: 0px; padding: 0px" >

</div>
<%
            
        }
    }


%>