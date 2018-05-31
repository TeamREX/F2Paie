package com.trex.f2paie.Service;

import com.trex.f2paie.Entity.User;

public interface UserService {
    public User findUserByEmail(String email);
    public void saveUser(User user, String role);
}
