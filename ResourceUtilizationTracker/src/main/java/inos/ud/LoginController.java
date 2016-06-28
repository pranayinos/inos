package inos.ud;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value= "/app")
public class LoginController {

  	@RequestMapping(value= "/login", method = RequestMethod.POST, consumes="application/json")
	public String login(@RequestBody LoginRequest txnRequest){
  		System.out.println(txnRequest);
		LoginRequest validReq = new LoginRequest("abcd", "pass");
  		if(txnRequest.equals(validReq)){
  			return "main";
  		}
  		else{
  			return "fail";
  		}
	}
}
