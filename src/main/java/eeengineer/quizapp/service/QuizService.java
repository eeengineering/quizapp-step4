package eeengineer.quizapp.service;

import eeengineer.quizapp.entity.Quiz;

import java.util.List;

public interface QuizService {

    List<Quiz> findAll();
    
    Quiz findById(int theId);
    
    Quiz save(Quiz theQuiz);

    void deleteById(int theId);

    void changeStatus(int theId);

	List<Quiz> findQuizByUserid(Integer userid);
        
}