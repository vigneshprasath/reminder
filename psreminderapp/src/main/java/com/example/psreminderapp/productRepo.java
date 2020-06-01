package com.example.psreminderapp;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
@Repository
public interface productRepo extends  JpaRepository<product,Integer> {
	 @Transactional
	    @Modifying
	    

	    @Query("from product where product_code=:code")
	    product getProductData1(@Param("code")int prod_code);

	    @Query("from product where product_name=:name")
	    product getProductDataByName1(@Param("name")String name);
}
