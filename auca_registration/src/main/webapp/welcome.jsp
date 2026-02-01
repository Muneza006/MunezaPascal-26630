<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String username = (String) session.getAttribute("username");
    if (username == null || username.isEmpty()) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome - AUCA Registration</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 20px;
        }
        
        .navbar {
            background: white;
            padding: 15px 20px;
            border-radius: 5px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        
        .navbar h2 {
            color: #333;
        }
        
        .navbar a {
            background: #d32f2f;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s;
        }
        
        .navbar a:hover {
            background: #b71c1c;
        }
        
        .container {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            max-width: 800px;
            margin: 0 auto;
        }
        
        .welcome-header {
            text-align: center;
            margin-bottom: 30px;
        }
        
        .welcome-header h1 {
            color: #333;
            font-size: 32px;
            margin-bottom: 10px;
        }
        
        .welcome-header p {
            color: #666;
            font-size: 16px;
        }
        
        .user-info {
            background: #f5f5f5;
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 30px;
            border-left: 4px solid #667eea;
        }
        
        .user-info p {
            color: #333;
            margin: 10px 0;
            font-size: 15px;
        }
        
        .menu-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 30px;
        }
        
        .menu-card {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 30px;
            border-radius: 8px;
            text-align: center;
            cursor: pointer;
            transition: transform 0.3s;
            text-decoration: none;
        }
        
        .menu-card:hover {
            transform: translateY(-5px);
        }
        
        .menu-card h3 {
            margin-bottom: 10px;
            font-size: 20px;
        }
        
        .menu-card p {
            font-size: 13px;
            opacity: 0.9;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h2>AUCA Registration System</h2>
        <a href="logout.jsp">Logout</a>
    </div>
    
    <div class="container">
        <div class="welcome-header">
            <h1>Welcome, <%= username %>!</h1>
            <p>You have successfully logged in to the AUCA Registration Portal</p>
        </div>
        
        <div class="user-info">
            <p><strong>Username:</strong> <%= username %></p>
            <p><strong>Login Time:</strong> <%
                Long loginTime = (Long) session.getAttribute("loginTime");
                if (loginTime != null) {
                    out.print(new java.util.Date(loginTime));
                }
            %></p>
            <p><strong>Session ID:</strong> <%= session.getId() %></p>
        </div>
        
        <h3>Available Actions:</h3>
        <div class="menu-grid">
            <a href="#register" class="menu-card">
                <h3>📝 Register</h3>
                <p>Register for courses and programs</p>
            </a>
            
            <a href="#courses" class="menu-card">
                <h3>📚 View Courses</h3>
                <p>Browse available courses</p>
            </a>
            
            <a href="#profile" class="menu-card">
                <h3>👤 My Profile</h3>
                <p>Update your profile information</p>
            </a>
            
            <a href="#transcript" class="menu-card">
                <h3>📄 Transcripts</h3>
                <p>View your academic transcript</p>
            </a>
        </div>
    </div>
</body>
</html>
