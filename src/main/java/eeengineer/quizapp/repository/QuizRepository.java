package eeengineer.quizapp.repository;

import eeengineer.quizapp.entity.Quiz;
import eeengineer.quizapp.entity.User;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface QuizRepository extends JpaRepository<Quiz, Integer> {

	List<Quiz> findQuizByUserid(Integer userid);
    
}
