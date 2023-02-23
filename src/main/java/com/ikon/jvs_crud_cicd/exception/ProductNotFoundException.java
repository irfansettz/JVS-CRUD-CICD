package com.ikon.jvs_crud_cicd.exception;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductNotFoundException extends RuntimeException {
    public String message;
}
