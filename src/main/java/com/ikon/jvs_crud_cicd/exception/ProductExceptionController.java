package com.ikon.jvs_crud_cicd.exception;

import com.ikon.jvs_crud_cicd.dto.ProductDTO;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ProductExceptionController {
    @ExceptionHandler(ProductNotFoundException.class)
    public ResponseEntity<ProductDTO> productNotFound(ProductNotFoundException e){
        ProductDTO response = new ProductDTO();
        response.setCode(404);
        response.setMessage(e.getMessage());
        return new ResponseEntity<>(response, HttpStatus.NOT_FOUND);
    }
}
