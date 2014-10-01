<?php

$user_details=M('UserDetails', '', 'DB_CONFIG');

$password_expected = $user_details->where("user_name='".$username."'")->getField('password');
if($password_expected)
{
	echo "password expected for ".$username.": ".$password_expected."<br>";
	if($password_expected == $password)
	{
		// TODO
		echo "Login successful";
	}
	else
	{
		// TODO
		echo "wrong password";
	}
}
else
{
	// TODO
	echo "invalid username";
}

?>