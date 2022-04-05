package ru.serdeveloper.skllsApi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.serdeveloper.skllsApi.domian.User;

/**
 * @author Serdyuk S.B.
 */
public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
