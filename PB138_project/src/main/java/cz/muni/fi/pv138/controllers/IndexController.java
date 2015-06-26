package cz.muni.fi.pv138.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

/**
 *
 * @author Tomas Borcin
 */
public class IndexController extends AbstractController {

  /**
   * Controller used for index page
   * 
   * @param request HttpServletRequest
   * @param response HttpServletResponse
   * @return
   * @throws Exception 
   */
  @Override
  protected ModelAndView handleRequestInternal(HttpServletRequest request,
          HttpServletResponse response) throws Exception {

    ModelAndView model = new ModelAndView("index");

    return model;
  }
}
