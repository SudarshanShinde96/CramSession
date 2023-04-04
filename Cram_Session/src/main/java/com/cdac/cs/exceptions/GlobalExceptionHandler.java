package com.cdac.cs.exceptions;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.multipart.MultipartException;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cdac.cs.model.ApiResponse;

@RestControllerAdvice
public class GlobalExceptionHandler {

	@ExceptionHandler(ResourceNotFoundException.class)
	public ResponseEntity<ApiResponse>resourseNotFoundExceptionHandler(ResourceNotFoundException ex)
	{
		String message=ex.getMessage();
		 ApiResponse apiResponse = new ApiResponse(false, message);
		return new ResponseEntity<ApiResponse>(apiResponse,HttpStatus.NOT_FOUND);
	}
	
	
	@ExceptionHandler(UserAlreadyExistsException.class)
	public ResponseEntity<ApiResponse> handleUserAlreadyExistsException(UserAlreadyExistsException ex) {
	    String message = ex.getMessage();
	    ApiResponse apiResponse = new ApiResponse(false, message);
	    return ResponseEntity.status(HttpStatus.CONFLICT).body(apiResponse);
	}
	
	
	
	
	
	
	@ExceptionHandler(MethodArgumentNotValidException.class)
	public ResponseEntity<Map<String,String>>handleMethodArgsNotValidException(MethodArgumentNotValidException ex)
	{
		Map<String,String>resp=new HashMap<>();
		ex.getBindingResult().getAllErrors().forEach((error)->{
		String fieldName=((FieldError)error).getField();
		String message=error.getDefaultMessage();
		resp.put(fieldName, message);
		});
		
		return new ResponseEntity<Map<String,String>>(resp,HttpStatus.BAD_REQUEST);
	}
	
	   @ExceptionHandler(MultipartException.class)
	    public String handleError1(MultipartException e, RedirectAttributes redirectAttributes) {

	        redirectAttributes.addFlashAttribute("message", e.getCause().getMessage());
	        return "redirect:/uploadStatus";

	    }
	
	
	
}
