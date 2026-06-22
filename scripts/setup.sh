#!/bin/bash
apt-get update
apt-get install -y vim

cat > /usr/share/nginx/html/index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>My Web Server</title>
  <style>
    body {
      background-color: red;
      font-family: Arial, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }
    .container {
      text-align: center;
      color: white;
      padding: 40px;
      border-radius: 10px;
      background-color: rgba(0,0,0,0.3);
    }
    h1 { font-size: 3em; }
    p  { font-size: 1.2em; }
  </style>
</head>
<body>
  <div class="container">
    <h1>Welcome to My Web Server!</h1>
    <p>Change the background color of this page to complete the task.</p>
  </div>
</body>
</html>
EOF
