package com.ibrahim.shirinov.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

    //need a controller method to show the initial HTML form

    // /showForm ->  helloworld-form.jsp
    @RequestMapping("/showForm")
    public String showForm(){
        return "helloworld-form";
    }

    //need a controller method to process the  HTML form

    // helloworld-form.jsp -> /processForm -> helloworld.jsp
    @RequestMapping("/processForm")
    public String processForm(){
        return "helloworld";
    }


    //new a controller method to read form data and
    //add data to the model

    // helloworld-form.jsp -> /processForm2 -> helloworld.jsp
    @RequestMapping("/processForm2")
    public String letsShoutDude(HttpServletRequest request, Model model){

        //read the request parameter from the html form
        String theName=request.getParameter("studentName");

        //convert the data to all caps
        theName=theName.toUpperCase();

        //create the message
        String result="Yo! "+ theName;

        //add message to the model
        model.addAttribute("message",result);

        return "helloworld";
    }


    // helloworld-form.jsp -> /processForm2 -> helloworld.jsp
    @RequestMapping("/processForm3")
    public String letsShoutDude2(@RequestParam("studentName") String theName,
                                 Model model){

        //convert the data to all caps
        theName=theName.toUpperCase();

        //create the message
        String result="Hey my friend from V3 ! "+ theName;

        //add message to the model
        model.addAttribute("message",result);

        return "helloworld";
    }

}
