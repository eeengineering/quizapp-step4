package eeengineer.quizapp.controller;

import eeengineer.quizapp.entity.Quiz;
import eeengineer.quizapp.entity.User;
import eeengineer.quizapp.service.QuizService;
import eeengineer.quizapp.service.UserService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@Controller
@RequestMapping("/quiz")
public class QuizController {

    private QuizService quizService;
    private UserService userService;

    public QuizController(QuizService theQuizService, UserService theUserService) {
        quizService = theQuizService;
        userService = theUserService;
    }

    @GetMapping("/list")
    public String listQuiz(Model theModel) {

        // get the quiz from db
        List<Quiz> theQuiz = quizService.findAll();

        // add to the spring model
        theModel.addAttribute("quiz", theQuiz);

        return "list-quiz";
    }

    @GetMapping("/list/{quizid}")
    public String QuizByID(@PathVariable Integer quizid, Model theModel) {

        Quiz theQuiz = quizService.findById(quizid);
        Integer userid = theQuiz.getUserid();
        User theUser = userService.getUsernameByUserid(userid);

        // add to the spring model
        theModel.addAttribute("quiz", theQuiz);
        theModel.addAttribute("user", theUser);
        
        return "byid-quiz";
    }

    @GetMapping("/list/toggleStatus")
    public String changeStatus(Integer quizid) {
        System.out.println(quizid);
        Quiz theQuiz = quizService.findById(quizid);
        quizService.changeStatus(quizid);
        
        Integer userid = theQuiz.getUserid();
        User theUser = userService.getUsernameByUserid(userid);
        String username = theUser.getUsername();
        return "redirect:/quiz/list/user/"+username;
    }

}