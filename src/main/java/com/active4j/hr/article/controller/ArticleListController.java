package com.active4j.hr.article.controller;

import com.active4j.hr.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * @author xfzhang
 * @version 1.0
 * @date 2020/11/16 上午1:23
 */
@Controller
@RequestMapping("article/list")
@Slf4j
public class ArticleListController extends BaseController {

    /**
     *
     * @param request
     * @return
     */
    @RequestMapping("/show")
    public ModelAndView show(HttpServletRequest request) {
        ModelAndView view = new ModelAndView("article/articleList");
        return view;
    }
}
