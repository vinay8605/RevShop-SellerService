<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller Registration</title>
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
				    min-height: 100vh;
				    line-height: 1.6;
				    padding: 20px;
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
				    max-width: 500px; /* Limit the form width */
				    margin: 0 auto; /* Center the form */
				}

				label {
				    display: block;
				    margin-bottom: 8px;
				    font-weight: 500;
				    color: #494d5f;
				}

				input[type="text"], 
				input[type="email"], 
				input[type="password"], 
				input[type="file"], 
				textarea {
				    width: 100%;
				    padding: 10px 15px;
				    margin-bottom: 15px;
				    border: 1px solid var(--input-border-color);
				    border-radius: 4px;
				    font-size: 14px;
				    transition: border-color 0.3s ease;
				}

				input[type="text"]:focus, 
				input[type="email"]:focus, 
				input[type="password"]:focus, 
				textarea:focus {
				    outline: none;
				    border-color: var(--primary-color);
				    box-shadow: 0 0 0 2px rgba(255, 63, 108, 0.1);
				}

				textarea {
				    resize: vertical;
				    min-height: 100px;
				}

				input[type="file"] {
				    padding: 8px 15px;
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
    <h2>Seller Registration</h2>
    <form action="/api/sellers/register" method="post" enctype="multipart/form-data">
        
        <label for="name">Name</label>
        <input type="text" id="name" name="name" placeholder="Enter your name" required>
        
        <label for="mobileNumber">Mobile Number</label>
        <input type="text" id="mobileNumber" name="mobileNumber" placeholder="Enter your mobile number" required>
        
        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>
        
        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Create a password" required>
        
        <label for="businessDetails">Business Details</label>
        <textarea id="businessDetails" name="businessDetails" rows="4" placeholder="Describe your business here"></textarea>
        
        <label for="address">Address</label>
        <input type="text" id="address" name="address" placeholder="Enter your address">
        
        <label for="city">City</label>
        <input type="text" id="city" name="city" placeholder="Enter your city">
        
        <label for="state">State</label>
        <input type="text" id="state" name="state" placeholder="Enter your state">
        
        <label for="pincode">Pincode</label>
        <input type="text" id="pincode" name="pincode" placeholder="Enter your pincode">
        
        <label for="image">Profile Image</label>
        <input type="file" id="image" name="imageFile">
        
        <button type="submit">Register</button>
    </form>
</body>
</html>
