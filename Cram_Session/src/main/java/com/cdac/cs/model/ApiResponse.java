package com.cdac.cs.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ApiResponse {


  private String message;
  private boolean success;
  public ApiResponse(boolean success, String message) {
      this.success = success;
      this.message = message;
  }

}
