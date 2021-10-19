package Productcrudapp.Advice;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class MyExceptionHandler {

	@ExceptionHandler(value = Exception.class)
	public String exceptionHandlerGeneric(Model model) {
		model.addAttribute("msg", "something went!! wrong please try again");
		return "error_page";
	}
	
}
