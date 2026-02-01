<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Servlet Assignments</title>
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
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        
        .container {
            max-width: 900px;
            width: 100%;
        }
        
        .header {
            text-align: center;
            color: white;
            margin-bottom: 40px;
        }
        
        .header h1 {
            font-size: 42px;
            margin-bottom: 10px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }
        
        .header p {
            font-size: 18px;
            opacity: 0.9;
        }
        
        .assignments-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 30px;
            margin-bottom: 30px;
        }
        
        .assignment-card {
            background: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s, box-shadow 0.3s;
        }
        
        .assignment-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
        }
        
        .assignment-card h2 {
            color: #333;
            margin-bottom: 15px;
            font-size: 24px;
        }
        
        .assignment-card .badge {
            display: inline-block;
            background-color: #667eea;
            color: white;
            padding: 4px 12px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: 600;
            margin-bottom: 15px;
        }
        
        .assignment-card .description {
            color: #666;
            line-height: 1.6;
            margin-bottom: 20px;
            font-size: 14px;
        }
        
        .assignment-card .description ul {
            margin-left: 20px;
            margin-bottom: 15px;
        }
        
        .assignment-card .description li {
            margin-bottom: 8px;
            color: #555;
        }
        
        .assignment-card .access-btn {
            display: inline-block;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 12px 30px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: 600;
            transition: transform 0.2s;
            border: none;
            cursor: pointer;
            font-size: 14px;
        }
        
        .assignment-card .access-btn:hover {
            transform: translateX(5px);
        }
        
        .info-box {
            background: white;
            border-left: 4px solid #667eea;
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 20px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        
        .info-box h3 {
            color: #333;
            margin-bottom: 10px;
            font-size: 16px;
        }
        
        .info-box p {
            color: #666;
            font-size: 14px;
            line-height: 1.6;
        }
        
        @media (max-width: 768px) {
            .assignments-grid {
                grid-template-columns: 1fr;
            }
            
            .header h1 {
                font-size: 32px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>🎓 Servlet Assignments</h1>
            <p>Complete hands-on practice with Java Servlets</p>
        </div>
        
        <div class="assignments-grid">
            <!-- Assignment 1 -->
            <div class="assignment-card">
                <span class="badge">Assignment 1</span>
                <h2>🔐 Login Servlet</h2>
                <div class="description">
                    <strong>Task:</strong> Create a login form with password validation
                    <ul>
                        <li>Design a login page with username and password fields</li>
                        <li>Validate password length (minimum 8 characters)</li>
                        <li>Display appropriate messages based on password strength</li>
                    </ul>
                    <strong>Expected Output:</strong>
                    <ul>
                        <li>Weak password: "Hello &lt;username&gt;, your password is weak. Try a strong one."</li>
                        <li>Strong password: "Welcome &lt;username&gt;"</li>
                    </ul>
                </div>
                <form action="login.jsp" method="get" style="display: inline;">
                    <button type="submit" class="access-btn">Start Assignment 1 →</button>
                </form>
            </div>
            
            <!-- Assignment 2 -->
            <div class="assignment-card">
                <span class="badge">Assignment 2</span>
                <h2>🔍 Google Redirect</h2>
                <div class="description">
                    <strong>Task:</strong> Create a search form with Google redirect
                    <ul>
                        <li>Design a page with a search input field</li>
                        <li>Add a "Fetch" button to submit the form</li>
                        <li>Use sendRedirect() to redirect to Google search</li>
                    </ul>
                    <strong>Expected Output:</strong>
                    <ul>
                        <li>Redirect user to Google with the search query</li>
                        <li>Search results page appears in browser</li>
                    </ul>
                </div>
                <form action="redirect.jsp" method="get" style="display: inline;">
                    <button type="submit" class="access-btn">Start Assignment 2 →</button>
                </form>
            </div>
        </div>
        
        <div class="info-box">
            <h3>📌 Important Notes</h3>
            <p>
                ✅ Both servlets are configured with @WebServlet annotations<br>
                ✅ Forms use POST method for data submission<br>
                ✅ Servlets are mapped to /login and /redirect endpoints<br>
                ✅ All pages include validation and error handling<br>
                📝 Test cases: Try weak passwords, empty fields, special characters<br>
                🔗 Servlet endpoints: http://localhost:8080/auca_registration/login | /redirect
            </p>
        </div>
    </div>
</body>
</html>
