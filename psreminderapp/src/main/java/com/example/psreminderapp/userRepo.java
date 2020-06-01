package com.example.psreminderapp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
@Repository
public interface userRepo extends  JpaRepository<remainder,Integer> {
	 @Transactional
	    @Modifying
	    @Query("update remainder set remainder_title=:remainder_title,dob=:dob,start_date=:start_date,end_date=:end_date,remainder_date=:remainder_date where phone_number=:phone_number")
	    void updateProductData(@Param("remainder_title") String remainder_title,@Param("dob") String dob,@Param("remainder_date") String remainder_date,@Param("start_date") String start_date,@Param("end_date") String end_date, @Param("phone_number") int phone_number);

	    @Query("from remainder where username=:username")
	    remainder getUserData(@Param("username")String username);

	    @Query("from remainder where password=:password")
	    remainder getUserDataByPass(@Param("password")String password);
	    
	    @Query("from remainder where username=:username AND password=:password")
	    remainder getUserDataByUserPass(@Param("username")String username, @Param("password")String password);

	    @Query("from remainder where product_code=:code")
	    remainder getProductData(@Param("code")int prod_code);

	    @Query("from remainder where username=:username")
	    remainder getProductDataByName(@Param("username")String username);
	    

}
