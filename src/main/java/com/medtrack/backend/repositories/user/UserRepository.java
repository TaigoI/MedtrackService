package com.medtrack.backend.repositories.user;

import com.medtrack.backend.entities.user.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {

    @Query(value = "select u.* from users u where u.cpf = ?1 or u.email = ?1", nativeQuery = true)
    Optional<User> findByCpfOrEmail(String username);

}
