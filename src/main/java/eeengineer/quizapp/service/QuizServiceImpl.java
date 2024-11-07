package eeengineer.quizapp.service;

import eeengineer.quizapp.entity.Quiz;
import eeengineer.quizapp.entity.User;
import eeengineer.quizapp.repository.QuizRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.PseudoColumnUsage;
import java.util.List;
import java.util.Optional;

@Service
public class QuizServiceImpl implements QuizService {

    private QuizRepository quizRepository;

    public QuizServiceImpl(QuizRepository theQuizRepository) {
        quizRepository = theQuizRepository;
    }

    @Override
    public List<Quiz> findAll() {
        return quizRepository.findAll();
    }

    @Override
    public Quiz findById(int theId) {
        Optional<Quiz> result = quizRepository.findById(theId);

        Quiz theQuiz = null;

        if (result.isPresent()) {
            theQuiz = result.get();
        } else {
            // we didn't find the quiz
            throw new RuntimeException("Did not find quiz id - " + theId);
        }

        return theQuiz;
    }
	
    @Override
    public List<Quiz> findQuizByUserid(Integer userid) {
        return quizRepository.findQuizByUserid(userid);
    }
	
    @Override
    public Quiz save(Quiz theQuiz) {
        return quizRepository.save(theQuiz);
    }

    @Override
    public void deleteById(int theId) {
        quizRepository.deleteById(theId);
    }

    @Override
    public void changeStatus(int theId) {
        Quiz theQuiz = quizRepository.getById(theId);
        String quizStatus = theQuiz.getStatus();
        String changeStatus = "";
        if(quizStatus.equals("完了")) {
            changeStatus = "未完了";
        }
        else{
            changeStatus = "完了";
        }
        theQuiz.setStatus(changeStatus);
        quizRepository.save(theQuiz);
    }


}






