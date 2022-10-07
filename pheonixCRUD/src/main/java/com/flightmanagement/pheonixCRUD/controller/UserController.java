package com.flightmanagement.pheonixCRUD.controller;

import com.flightmanagement.pheonixCRUD.dto.UserDTO;
import com.flightmanagement.pheonixCRUD.dto.request.UserSaveRequestDTO;
import com.flightmanagement.pheonixCRUD.service.UserService;
import com.flightmanagement.pheonixCRUD.service.impl.UserServiceIMPL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

   @RestController
   @RequestMapping("api/v1/user")
   @CrossOrigin
public class UserController {

       @Autowired
       private UserService userService;

    @PostMapping("/save")
    public String saveuser(@RequestBody UserSaveRequestDTO userSaveRequestDTO){
        UserServiceIMPL userServiceIMPL=new UserServiceIMPL();
        String id=userService.addUser(userSaveRequestDTO);
        return id ;
    }
}
