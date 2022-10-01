package com.flightmanagement.pheonixCRUD.service;

import com.flightmanagement.pheonixCRUD.dto.UserDTO;
import com.flightmanagement.pheonixCRUD.dto.request.UserSaveRequestDTO;

public interface UserService {
    String addUser(UserSaveRequestDTO userSaveRequestDTO);
}
