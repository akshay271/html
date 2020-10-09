Login.html

&lt;html&gt;
&lt;body&gt;
&lt;form action=&quot;Login&quot; method=&quot;get&quot;&gt;
&lt;center&gt;
&lt;h1&gt;&lt;center&gt; &lt;b&gt;&lt;u&gt;Login Form&lt;/u&gt;&lt;/b&gt;&lt;/center&gt;&lt;/h1&gt;
Username:&lt;input type=&quot;text&quot; name=&quot;un&quot;/&gt;
Password:&lt;input type=&quot;text&quot; name=&quot;pass&quot;/&gt;
&lt;input type=&quot;submit&quot; value=&quot;LOGIN&quot;/&gt;
&lt;/center&gt;&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
Login.java
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Login extends HttpServlet {
protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException,
IOException {

String name=req.getParameter(&quot;un&quot;);
String pasw=req.getParameter(&quot;pass&quot;);
PrintWriter out=res.getWriter();
HttpSession s=req.getSession(true);
s.setMaxInactiveInterval(15);
if(s.isNew())
{
s.setAttribute(&quot;counter&quot;, new Integer(0));
}
int count=(Integer)s.getAttribute(&quot;counter&quot;);
count++;
s.setAttribute(&quot;counter&quot;,count);
if(name.equals(&quot;admin&quot;)&amp;&amp; pasw.equals(&quot;admin&quot;))
{
out.println(&quot;&lt;b&gt;Login Successfull&lt;/b&gt;&quot;);
}

else
{
out.println(&quot;&lt;b&gt;Attempts Exceeded&lt;/b&gt;&quot;);
}
}
