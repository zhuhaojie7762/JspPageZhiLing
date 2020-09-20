<%--声明此jsp页面本身和它包含的文件中的声明、脚本、表达式、语句所使用的语言
pageEncoding:声明此jsp页面响应的字符编码 --%>
<%@ page pageEncoding="UTF-8" %>
<%--使用page指令定义页面的全局属性，charset:定义编写此jsp页面的字符编码
和此jsp页面响应的文本类型 --%>
<%@page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <%--定义此html页面的文本类型和字符编码--%>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>JSP page指令的使用</title>
</head>
<body>
<!-- div用来居中文本 -->
<div align="center">
    Page指令与书写顺序无关，无论写在哪，对整个页面都有效<br>
    Page指令用来定义整个jsp页面的属性,这些属性包括：<br>
    <!-- 编写一个14行，每行五列的表格 -->
    <table border="1">
        <tr>
            <!-- 每一列内容居中对齐 -->
            <td width="400" align="center">属性名</td>
            <td width="400" align="center">属性值</td>
            <td width="400" align="center">格式</td>
            <td width="400" align="center">作用</td>
            <td width="400" align="center">备注</td>
        </tr>
        <tr>
            <td width="400" align="center">language</td>
            <td width="400" align="center">java</td>
            <td width="400" align="center">page language="java"</td>
            <td width="400" align="center">声明此jsp页面本身和它包含的文件中的声明、脚本、
                表达式、语句所使用的语言
            </td>
            <td width="400" align="center">目前只有java一种，所以该属性也可以不声明</td>
        </tr>
        <tr>
            <td width="400" align="center">extends</td>
            <td width="400" align="center">java.lang.String(所继承类的全限定名)</td>
            <td width="400" align="center">page extends="java.lang.String"</td>
            <td width="400" align="center">声明此jsp页面编译时所继承的父类</td>
            <td width="400" align="center">指定的父类必须为全限定名：格式：包名.类名，且
                此类必须已经导入到本页面
            </td>
        </tr>
        <tr>
            <td width="400" align="center">import</td>
            <td width="400" align="center">要导入的类或包</td>
            <td width="400" align="center">page import="java.util.*"</td>
            <td width="400" align="center">导入在此jsp页面中要使用的类或包</td>
            <td width="400" align="center">import 属性可以出现多次，其他属性只能出现一次
                如果要导入多个包可以在包名后加逗号进行分割，也可以在另外写一个import指令
                注意：在jsp中已经自动导入了一些包，这些包包括：java.lang.*、javax.servlet.*、javax.servlet.jsp.*、javax.servlet.http.*
            </td>
        </tr>
        <tr>
            <td width="400" align="center">session</td>
            <td width="400" align="center">true|false 默认值为true</td>
            <td width="400" align="center">page session="true"</td>
            <td width="400" align="center">用来指明客户端是否让jsp页面使用HTTPsession对象，默认为true</td>
            <td width="400" align="center">如果值为true，那么session对象指当前的session或者是
                新的session,如果值为false,将不能在当前jsp页面使用session，且scope属性为session的jsp:useBean
                也不能使用，否则将会有编译错误
            </td>
        </tr>
        <tr>
            <td width="400" align="center">buffer</td>
            <td width="400" align="center">none|8kb|sizekb 默认值8kb</td>
            <td width="400" align="center">page buffer="8kb"</td>
            <td width="400" align="center">用来设置输出流PrintWriter(对象为out)的缓冲区大小</td>
            <td width="400" align="center">如果设置为none，表示不缓冲，那么所有响应输出都被PrintWriter直接
                写到ServletResponse中
            </td>
        </tr>
        <tr>
            <td width="400" align="center">autoFlush</td>
            <td width="400" align="center">true|false 默认值true</td>
            <td width="400" align="center">page autoFlush="true"</td>
            <td width="400" align="center">用来设置如果buffer溢出是否需要强制输出缓冲区
                内容，如果为true,则表示要强制输出
            </td>
            <td width="400" align="center">如果设置为false,当缓冲区满时数据溢出，就会导致错误
                注意如果将buffer设置为none,那么就不应该将autoFlush设置为false，因为此时没有缓冲区
            </td>
        </tr>
        <tr>
            <td width="400" align="center">isThreadSafe</td>
            <td width="400" align="center">true|false 默认值true</td>
            <td width="400" align="center">page isThreadSafe="true"</td>
            <td width="400" align="center">定义当前jsp页面是否支持线程安全</td>
            <td width="400" align="center">如果为true，那么该页面可能同时收到jsp引擎的多个请求
                当前页面可以在同一个时刻处理多个请求。否则，jsp引擎会对收到
                的请求进行排队，同一个时刻只能处理一个请求
            </td>
        </tr>
        <tr>
            <td width="400" align="center">info</td>
            <td width="400" align="center">text|html|pdf 默认值text</td>
            <td width="400" align="center">page info="text"</td>
            <td width="400" align="center">设置当前jsp页面的文本格式</td>
            <td width="400" align="center">可以通过Servlet.getServletInfo()方法获得此字符串</td>
        </tr>
        <tr>
            <td width="400" align="center">errorPage</td>
            <td width="400" align="center">另一个页面的url</td>
            <td width="400" align="center"> page errorPage="a.jsp"</td>
            <td width="400" align="center">定义当前jsp页面抛出异常后（exception对象），将异常抛到哪个jsp页面</td>
            <td width="400" align="center">默认值为空，就是没有错误处理页面</td>
        </tr>
        <tr>
            <td width="400" align="center">isErrorPage</td>
            <td width="400" align="center">true|false 默认值为false</td>
            <td width="400" align="center">page isErrorPage="false"</td>
            <td width="400" align="center">定义当前jsp页面是否为错误处理页面</td>
            <td width="400" align="center">如果为错误处理页面，那么它将会能够使用隐含的对象exception
                来获得从其他页面抛出的异常信息，并对异常进行处理，如果为false，将不能使用exception对象
                获得对象信息的方法exception.getMessage(),此方法返回字符串类型
            </td>
        </tr>
        <tr>
            <td width="400" align="center">contentType</td>
            <td width="400" align="center">text/html;charset=ISO8859-1</td>
            <td width="400" align="center">page contentType="text/html;charset=ISO8859-1"</td>
            <td width="400" align="center">定义编写此jsp页面所用的字符编码，和此jsp页面在响应后的文本类型</td>
            <td width="400" align="center">默认值就是例子的值</td>
        </tr>
        <tr>
            <td width="400" align="center">pageEncoding</td>
            <td width="400" align="center">"characterSet|ISO8859-1"</td>
            <td width="400" align="center">page pageEncoding="ISO8859-1"</td>
            <td width="400" align="center">定义此jsp页面响应后的页面的字符编码，默认ISO8859-1</td>
            <td width="400" align="center">如果为中文可以设置为UTF-8或GB2312</td>
        </tr>
        <tr>
            <td width="400" align="center">isELIgnored</td>
            <td width="400" align="center">true|false</td>
            <td width="400" align="center">page isELIgnored="false"</td>
            <td width="400" align="center">指定当前jsp页面是否支持EL表达式</td>
            <td width="400" align="center">" "</td>
        </tr>
    </table>
</div>
</body>
</html>
