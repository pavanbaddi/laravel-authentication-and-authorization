<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="{{ route('login.verify') }}" method="post">
        @csrf 
        <label for="">email</label><br>
        <input type="text" name="email" id="email" value="" > 
        <br>
        <label for="">Password</label><br>
        <input type="password" name="password" id="password" value="" > 
        <br>
        <label for="">Remember Me</label>
        <input type="checkbox" name="remember_me" id="remember_me" value="1" > 
        <br>
        <input type="submit" value="Submit" > 
    </form>
</body>
</html>