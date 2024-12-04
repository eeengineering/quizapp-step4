package eeengineer.quizapp.controller;

import eeengineer.quizapp.dto.UserDto;
import eeengineer.quizapp.entity.Quiz;
import eeengineer.quizapp.entity.User;
import eeengineer.quizapp.service.QuizService;
import eeengineer.quizapp.service.UserService;
import jakarta.validation.Valid;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@Controller
public class QuizController {

    private QuizService quizService;
    private UserService userService;

    public QuizController(QuizService theQuizService, UserService theUserService) {
        quizService = theQuizService;
        userService = theUserService;
    }
    
    @GetMapping("register")
    public String showRegistrationForm(Model model){
        UserDto user = new UserDto();
        model.addAttribute("user", user);
        return "register";
    }
    
    @PostMapping("/register/save")
    public String registration(@Valid @ModelAttribute UserDto user,
                               BindingResult result,
                               Model model){
        User existing = userService.findByUsername(user.getUsername());
        if (existing != null) {
            result.rejectValue("username", null);
        }
        if (result.hasErrors()) {
            model.addAttribute("user", user);
            return "redirect:/register?failure";
        }
        userService.saveUser(user);
        return "redirect:/register?success";
    }

    @GetMapping("/login")
    public String loginForm() {
        return "login";
    }
    
    @GetMapping("/quiz/public")
    public String QuizByUser(Model theModel) {
    	List<User> userid = userService.getUseridByUsername("public");
    	Integer userid01 = userid.get(0).getId();    	
    	List<Quiz> theQuiz = quizService.findQuizByUserid(userid01);

        theModel.addAttribute("quiz", theQuiz);

        return "publicQuizList";
    }
    
    @GetMapping("/quiz/public/{quizid}")
    public String QuizByIDForPublic(@PathVariable Integer quizid, Model theModel) {

        Quiz theQuiz = quizService.findById(quizid);
        Integer userid = theQuiz.getUserid();
        User theUser = userService.getUsernameByUserid(userid);

        theModel.addAttribute("quiz", theQuiz);
        theModel.addAttribute("user", theUser);
        
        return "publicQuiz";
    }
    
    @GetMapping("/quiz/list/user/{username}")
    public String QuizByUser(@PathVariable String username, Model theModel) {
    	List<User> userid = userService.getUseridByUsername(username);
    	Integer userid01 = userid.get(0).getId();    	
    	List<Quiz> theQuiz = quizService.findQuizByUserid(userid01);

        theModel.addAttribute("quiz", theQuiz);
        
        String loginUsername = SecurityContextHolder.getContext().getAuthentication().getName();

        if(loginUsername.equals(username)) {
            return "userQuizList";
        }else{
        	return "login";
        }
    }

    @GetMapping("/quiz/list/user/{username}/{quizid}")
    public String QuizByID(@PathVariable String username, @PathVariable Integer quizid, Model theModel) {
    	
        Quiz theQuiz = quizService.findById(quizid);
        Integer userid = theQuiz.getUserid();
        User theUser = userService.getUsernameByUserid(userid);

        theModel.addAttribute("quiz", theQuiz);
        theModel.addAttribute("user", theUser);
        
        String loginUsername = SecurityContextHolder.getContext().getAuthentication().getName();

        if(loginUsername.equals(username)) {
            return "userQuiz";
        }else {
        	return "login";
        }
    }

    @GetMapping("/quiz/list/user/{username}/toggleStatus")
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