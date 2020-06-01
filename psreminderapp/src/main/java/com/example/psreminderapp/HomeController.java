package com.example.psreminderapp;

import jdk.nashorn.internal.objects.NativeJSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

import javax.print.DocFlavor.URL;


@Controller
public class HomeController {


    @Autowired
    userRepo user_repo_object;

    List<remainder>user_by_name_array= new ArrayList<>();
    List<remainder>user_by_pass_array= new ArrayList<>();

    String name;
    String pass;
    String url;
    
    @RequestMapping("/")
    public String home(Model m)
    {
        System.out.println("Home Page Requested");

        List<remainder> all_products= user_repo_object.findAll();

        m.addAttribute("allProducts",all_products);
        System.out.println(name);
        System.out.println(pass);
        

        return "register";
    }



    @RequestMapping("addProduct")
    public String addNewProduct(@ModelAttribute("productData") remainder prod,Model m)
    {
        user_repo_object.save(prod);
        List<remainder> all_products= user_repo_object.findAll();

        m.addAttribute("allProducts",all_products);
        System.out.println(name);
        System.out.println(pass);

		String str = "/getUserDataByUserPass?username="+ name+"&password="+pass;
        System.out.println(str);

        return "register";

    }

   


    @RequestMapping("Show")
    public String show(Model mm)
    {
        System.out.println("user Page Requested");

        List<remainder> all_user=user_repo_object.findAll();

        mm.addAttribute("alluser",all_user);
        System.out.println(all_user);

        return "user";
    }


    @RequestMapping("AddOne")
    public String addNewUser(@ModelAttribute("userData") remainder userData,Model mm)
    {
        user_repo_object.save(userData);
        List<remainder> all_user= user_repo_object.findAll();
        System.out.println(all_user);
        mm.addAttribute("alluser",all_user);

        System.out.println(mm);
        return "register";

    }

    @RequestMapping("getUserByName")
    public String getUser(@RequestParam("username") String username,Model mm)
    {
    	remainder obj  = user_repo_object.getUserData(username);
        user_by_pass_array.add(obj);

        mm.addAttribute("result",user_by_pass_array);

        return "userdetails";
    }

    @RequestMapping("getUserByPass")
    public String getUserPass(@RequestParam("password") String password,Model mm)
    {
    	remainder obj  = user_repo_object.getUserDataByPass(password);

        user_by_name_array.add(obj);

        mm.addAttribute("result",user_by_name_array);

        return "user";
    }
    

    @RequestMapping("getUserDataByUserPass")
    public String getUserPass(@RequestParam("username") String user_name,@RequestParam("password") String pass_word,Model mm)
    {
    	remainder obj  = user_repo_object.getUserDataByUserPass(user_name,pass_word);
    	
    	user_by_name_array.add(obj);
        mm.addAttribute("result",user_by_name_array);

    	if(obj == null) {
    		System.out.println("NOT Found");
    		return "register";
    	}
    	else {
    		 	
    		System.out.println("Found:"+user_name);
    		name=user_name;
    		pass=pass_word;
    		String str = "/getUserDataByUserPass?username="+ name+"&password="+pass;
    		url=str;
            System.out.println(str);
            return "product";
    	}


    	

    }
    
    @RequestMapping("updateProduct")
    public String updateProduct(@RequestParam("remainder_title") String remainder_title,@RequestParam("dob") String dob
            ,@RequestParam("remainder_date") String remainder_date,@RequestParam("start_date") String start_date,@RequestParam("end_date") String end_date,@RequestParam("phone_number")int phone_number,Model m)
    {
        user_repo_object.updateProductData(remainder_title,dob,remainder_date,start_date,end_date,phone_number);

        List<remainder> all_products= user_repo_object.findAll();

        m.addAttribute("allProducts",all_products);

        return "register";
    }






}
