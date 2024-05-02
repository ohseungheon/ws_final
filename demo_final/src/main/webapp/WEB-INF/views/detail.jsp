<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
    }
    .container {
        width: 80%;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
    }
    h1 {
        color: #333;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }
    a {
        text-decoration: none;
        color: #007bff;
    }
    a:hover {
        text-decoration: underline;
    }
    .delete-link {
        color: #dc3545;
        cursor: pointer;
    }
    .delete-link:hover {
        text-decoration: none;
        color: #c82333;
    }
    .write-link {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
    }
    .write-link:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <h1>detail page</h1>
    <table border="1">
    <thead>
        <td>번호</td>
        <td>이름</td>
        <td>나이</td>
        <td>주소</td>

    </thead>
        
        <tr>
            <td>${dto.uno}</a></td>
            <td>${dto.name}</a></td>
            <td>${dto.age}</td>
            <td>${dto.addr}</td>
            
        </tr>
</table>
<a href="writeForm">글작성</a>
</body>
</body>
</html>