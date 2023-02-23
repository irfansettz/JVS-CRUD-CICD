package com.ikon.jvs_crud_cicd.repository;

import com.ikon.jvs_crud_cicd.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

}
