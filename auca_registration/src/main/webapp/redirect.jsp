<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Google Search Redirect</title>
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
        }
        
        .container {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 500px;
        }
        
        .header {
            text-align: center;
            margin-bottom: 30px;
        }
        
        .header h1 {
            color: #333;
            font-size: 28px;
            margin-bottom: 10px;
        }
        
        .header p {
            color: #666;
            font-size: 14px;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
            font-weight: 500;
        }
        
        input[type="text"] {
            width: 100%;
            padding: 12px;
            border: 2px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            transition: border-color 0.3s;
        }
        
        input[type="text"]:focus {
            outline: none;
            border-color: #667eea;
        }
        
        .button-group {
            display: flex;
            gap: 10px;
        }
        
        button {
            flex: 1;
            padding: 12px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        
        .btn-fetch {
            background-color: #667eea;
            color: white;
        }
        
        .btn-fetch:hover {
            background-color: #5568d3;
        }
        
        .btn-reset {
            background-color: #e0e0e0;
            color: #333;
        }
        
        .btn-reset:hover {
            background-color: #d0d0d0;
        }
        
        .error-message {
            color: #d32f2f;
            font-size: 14px;
            margin-top: 10px;
            padding: 10px;
            background-color: #ffebee;
            border-radius: 5px;
            display: none;
        }
        
        .info-message {
            color: #1976d2;
            font-size: 13px;
            margin-top: 15px;
            padding: 10px;
            background-color: #e3f2fd;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>🔍 Google Search</h1>
            <p>Enter your search query to redirect to Google</p>
        </div>
        
        <form method="POST" action="redirect" id="searchForm">
            <div class="form-group">
                <label for="searchQuery">Search Query:</label>
                <input 
                    type="text" 
                    id="searchQuery" 
                    name="searchQuery" 
                    placeholder="Enter something to search..." 
                    required
                >
            </div>
            
            <div class="button-group">
                <button type="submit" class="btn-fetch">Fetch</button>
                <button type="reset" class="btn-reset">Clear</button>
            </div>
            
            <%
                String error = request.getParameter("error");
                if ("empty".equals(error)) {
            %>
            <div class="error-message" style="display: block;">
                ⚠️ Please enter a search query before fetching!
            </div>
            <%
                }
            %>
            
            <div class="info-message">
                💡 Tip: Enter any keyword and click "Fetch" to search on Google!
            </div>
        </form>
    </div>
    
    <script>
        document.getElementById('searchForm').addEventListener('submit', function(e) {
            const searchQuery = document.getElementById('searchQuery').value.trim();
            if (!searchQuery) {
                e.preventDefault();
                alert('Please enter a search query!');
            }
        });
    </script>
</body>
</html>
