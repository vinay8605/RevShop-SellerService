<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller Login</title>
    <style>
		:root {
		--primary-color: #ff3f6c;
		--secondary-color: #f5f5f5;
		--text-color: #282c3f;
		--background-color: #f9f9f9;
		--input-border-color: #e0e0e0;
		--hover-color: #ff1744;
		}

		* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		}

		body {
		font-family: 'Roboto', Arial, sans-serif;
		background-color: var(--background-color);
		color: var(--text-color);
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		min-height: 100vh;
		line-height: 1.6;
		padding: 20px;
		}

		.container {
		width: 100%;
		max-width: 400px;
		}

		h2 {
		text-align: center;
		color: var(--primary-color);
		margin-bottom: 30px;
		font-size: 24px;
		font-weight: 700;
		}

		form {
		background: white;
		padding: 30px;
		border-radius: 8px;
		box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
		width: 100%;
		max-width: 400px; /* Limit the form width */
		margin: 0 auto; /* Center the form */
		}

		label {
		display: block;
		margin-bottom: 8px;
		font-weight: 500;
		color: #494d5f;
		}

		input[type="email"],
		input[type="password"] {
		width: 100%;
		padding: 10px 15px;
		margin-bottom: 15px;
		border: 1px solid var(--input-border-color);
		border-radius: 4px;
		font-size: 14px;
		transition: border-color 0.3s ease;
		}

		input[type="email"]:focus,
		input[type="password"]:focus {
		outline: none;
		border-color: var(--primary-color);
		box-shadow: 0 0 0 2px rgba(255, 63, 108, 0.1);
		}

		button {
		width: 100%;
		padding: 12px;
		background-color: var(--primary-color);
		color: white;
		border: none;
		border-radius: 4px;
		font-size: 16px;
		font-weight: 700;
		cursor: pointer;
		transition: background-color 0.3s ease;
		}

		button:hover {
		background-color: var(--hover-color);
		}

		.forgot-password {
		text-align: right;
		margin-top: -10px;
		margin-bottom: 15px;
		}

		.forgot-password a {
		color: var(--primary-color);
		text-decoration: none;
		font-size: 14px;
		}

		.forgot-password a:hover {
		text-decoration: underline;
		}

		@media (max-width: 600px) {
		form {
		padding: 20px;
		margin: 0 10px;
		}

		h2 {
		font-size: 22px;
		}
		}
    </style>
</head>
<body>
    <h2>Seller Login</h2>
    <form action="${pageContext.request.contextPath}/api/sellers/login" method="post">
        
        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>
        
        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Enter your password" required>
		
		<div class="forgot-password">
		<a href="/forgot-password">Forgot Password?</a>
		</div>
        
        <button type="submit">Login</button>
    </form>
</body>
</html>
