package com.medtrack.backend.services.user;

import com.medtrack.backend.commands.User.CreateUserCommand;
import com.medtrack.backend.entities.user.User;
import com.medtrack.backend.repositories.user.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepository repository;

    public User findById(Long id) throws Exception {
        return repository.findById(id).orElseThrow(Exception::new);
    }

    public User updateById(Long id, CreateUserCommand command) throws Exception {
        User user = findById(id);
        return update(user, command);
    }

    public User update(User entity, CreateUserCommand command) {
        entity.updateWithCommand(command);
        return repository.saveAndFlush(entity);
    }

}
