package eeengineer.quizapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import eeengineer.quizapp.entity.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {
    Role findByRolename(String rolename);
}