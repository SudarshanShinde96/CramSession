package com.cdac.cs.exceptions;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class ResourceNotFoundException extends RuntimeException{

String resourceName;
String fieldName;
long fieldValue;

public ResourceNotFoundException(String resourceName,String fieldName, long fieldValue )

{	
	super(String.format("%s not found: %1",resourceName,fieldName,fieldValue));
    this.resourceName=resourceName;
    this.fieldName=fieldName;
    this.fieldValue=fieldValue;
}




}
