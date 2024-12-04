package eeengineer.quizapp.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import eeengineer.quizapp.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
    List<User> getUseridByUsername(String username);
	User getUsernameByUserid(Integer userid);
}