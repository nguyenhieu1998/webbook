package com.webbookmvc.webbook.repositories;

import com.webbookmvc.webbook.model.User;
import com.webbookmvc.webbook.model.UserLogin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface LoginRepository extends JpaRepository<UserLogin, String> {

}
