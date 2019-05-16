package com.example.mininews.repos;

import com.example.mininews.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository <User,Long> {

    User findByUsername(String username);

    User findByActivationCode(String code);
}
