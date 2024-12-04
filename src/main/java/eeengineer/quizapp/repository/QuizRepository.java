package eeengineer.quizapp.repository;

import eeengineer.quizapp.entity.Quiz;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QuizRepository extends JpaRepository<Quiz, Integer> {

	List<Quiz> findQuizByUserid(Integer userid);
    
}
