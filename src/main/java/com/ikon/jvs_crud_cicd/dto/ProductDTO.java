package com.ikon.jvs_crud_cicd.dto;

import com.ikon.jvs_crud_cicd.entity.Product;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.util.List;

@Data
@RequiredArgsConstructor
public class ProductDTO extends ResponseDTO {
    private List<Product> data;
}
