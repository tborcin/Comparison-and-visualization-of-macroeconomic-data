package cz.muni.fi.pv138.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

/**
 *
 * @author Tomas Borcin
 */
public class HTMLTransformationController extends AbstractController{

  /**
   * html_transformation page request handler
   * 
   * @param hsr HttpServletRequest
   * @param hsr1 HttpServletResponse
   * @return
   * @throws Exception 
   */
  @Override
  protected ModelAndView handleRequestInternal(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
    ModelAndView model = new ModelAndView("html_transformation");
    return model;
  }
  
}