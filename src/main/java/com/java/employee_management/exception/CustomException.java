package com.java.employee_management.exception;
import java.io.IOException;

public class CustomException extends IOException {
    public CustomException(String s){
        super(s);
    }
}