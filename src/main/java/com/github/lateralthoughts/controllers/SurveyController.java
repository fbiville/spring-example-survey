package com.github.lateralthoughts.controllers;

import com.github.lateralthoughts.domain.Survey;
import com.github.lateralthoughts.repositories.SurveyRepository;
import com.github.lateralthoughts.validation.FirstScreenGroup;
import com.github.lateralthoughts.validation.SecondScreenGroup;
import com.github.lateralthoughts.validation.ThirdScreenGroup;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.core.convert.support.GenericConversionService;
import org.springframework.data.repository.support.DomainClassConverter;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping("/")
@SessionAttributes(SurveyController.SESSION_ATTRIBUTE_NAME)
public class SurveyController {

    public static final String SESSION_ATTRIBUTE_NAME = "survey";
    private final SurveyRepository surveyRepository;

    @Inject
    public SurveyController(SurveyRepository surveyRepository) {
        this.surveyRepository = surveyRepository;
    }

    @ModelAttribute(SESSION_ATTRIBUTE_NAME)
    public Survey populateSession() {
        return new Survey();
    }

    @RequestMapping(method = GET)
    public ModelAndView form_start(@ModelAttribute(SESSION_ATTRIBUTE_NAME) Survey activity) {
        ModelAndView form = new ModelAndView("form_1");
        form.addObject("start", true);
        return form;
    }

    @RequestMapping(method = POST, params = "_step2")
    public ModelAndView form_2(@ModelAttribute(SESSION_ATTRIBUTE_NAME) @Validated(FirstScreenGroup.class) Survey activity,
                               BindingResult result) {
        return new ModelAndView(result.hasErrors() ? "form_1" : "form_2");
    }

    @RequestMapping(method = POST, params = "_step3")
    public ModelAndView form_3(@ModelAttribute(SESSION_ATTRIBUTE_NAME) @Validated(SecondScreenGroup.class) Survey activity,
                               BindingResult result) {
        return new ModelAndView(result.hasErrors() ? "form_2" : "form_3");
    }

    @RequestMapping(method = POST, params = "_finish")
    public ModelAndView finish(@ModelAttribute(SESSION_ATTRIBUTE_NAME) @Validated(ThirdScreenGroup.class) Survey activity,
                               BindingResult result,
                               SessionStatus status,
                               RedirectAttributes redirectAttributes) {
        ModelAndView form;
        if (result.hasErrors()) {
            form = new ModelAndView("form_3");
        }
        else {
            surveyRepository.save(activity);
            status.setComplete();
            redirectAttributes.addFlashAttribute("count", surveyRepository.count());
            form = new ModelAndView("redirect:/thanks");
        }
        return form;
    }

    @RequestMapping(value = "thanks", method = GET)
    public ModelAndView finish() {
        return new ModelAndView("thanks");
    }

    @InitBinder
    protected void customizeConversions(final WebDataBinder binder) {
        binder.registerCustomEditor(Date.class, new CustomDateEditor(getDefaultDateFormat(), true));
    }

    private DateFormat getDefaultDateFormat() {
        DateFormat format = new SimpleDateFormat("yyyy-MM");
        format.setLenient(false);
        return format;
    }
}
