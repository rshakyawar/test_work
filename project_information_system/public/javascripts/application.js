// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function load_text(id){
new Ajax.Request("/submit_answer/"+id,
   																{
     																method:"post",
     																onSuccess: function(transport){
       																								divObject=$("answer")  
       																								var response = transport.responseText || "no response text";   														
													  													divObject.update(response);
     																							   },
     																onFailure: function()
																						{
																							alert("Something went wrong...");
																						 }
																}
														);
}
   
function validate_loginpage(){
		valid=true;
    if ($F("user_name")=="")
    {
        alert ( "Please fill in the 'User Name' box.");
				valid=false;    
		}
    else if ($F("password")=="")
    {
        alert ( "Please fill in the 'Password' box." );
				valid=false;
    }
		else if ($F("password").length<4)
    {
        alert ( "Password length at least 4." );
				valid=false;
    }
   return valid;
}

function validate_take_password ( )
{
    valid = true;
    if ($F("current_password")=="")
    {
        alert ( "Please fill in the 'Current password' box." );
        valid = false;
    }
    else if ($F("new_password")=="")
    {
        alert ( "Please fill in the 'New Password' box." );
        valid = false;
    }
	 else if ($F("conform_password")=="")
    {
        alert ( "Please fill in the 'Conform Password' box." );
        valid = false;
    }
		else if ($F("new_password").length<4)
    {
        alert ( "New Password length at least 4." );
				valid=false;
    }
		else if ($F("new_password")!=$F("conform_password"))
    {
        alert ( "New Password and conform password not equal" );
				valid=false;
    }
		
    return valid;
}

function validate_project()
{
alert("message");

}
