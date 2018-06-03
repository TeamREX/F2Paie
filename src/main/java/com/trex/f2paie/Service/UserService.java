package com.trex.f2paie.Service;

import com.trex.f2paie.Entity.User;

import java.util.List;

public interface UserService {
     User findUserByEmail(String email);
     User findUser(Integer id);
     void remove(Integer id);
     List<User> findUsers();
     void saveUser(User user, String role);
     void saveUser(User user);
}
