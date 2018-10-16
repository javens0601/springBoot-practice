package com.javen.springboot.springboothelloworld.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@ControllerAdvice
public class myException {
    /**
     * 全局异常捕获
     * @param ex
     * @return
     */
    @ResponseBody
    @ExceptionHandler(value = Exception.class)
    public Map<String, Object> errorHandle(Exception ex) {
        Map<String, Object> errorMap = new HashMap<String, Object>();
        errorMap.put("errorCode", "-1");
        errorMap.put("errorMsg", ex.getMessage());
        return errorMap;
    }

    @ResponseBody
    @ExceptionHandler(value = BusinessException.class)
    public Map<String, Object> errorHandle(BusinessException ex) {
        Map<String, Object> errorMap = new HashMap<String, Object>();
        errorMap.put("errorCode", ex.getErrorCode());
        errorMap.put("errorMsg", ex.getErrorMsg());
        return errorMap;
    }
}
