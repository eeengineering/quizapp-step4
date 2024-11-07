package eeengineer.quizapp.service;

import java.util.List;

import eeengineer.quizapp.dto.UserDto;
import eeengineer.quizapp.entity.User;

public interface UserService {
    void saveUser(UserDto userDto);

    User findByUsername(String username);

    List<UserDto> findAllUsers();

    List<User> getUseridByUsername(String username);

	User getUsernameByUserid(Integer userid);
}