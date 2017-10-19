/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sait.tags;

import java.io.IOException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author 729347
 */
public class DebugTag extends TagSupport {

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public int doStartTag() throws JspException {
        String serverURL = pageContext.getRequest().getServerName();
        String serverName = serverURL.substring(0,4);
        System.out.println(serverName);
//      
//        if(testSub[0] != null){
//            System.out.println("TEST");
//            return SKIP_BODY;
//        }
//start with test or localhost and debug
        
        if(serverName.equals("test") || serverURL.equals("localhost")){
            String uri = pageContext.getRequest().getParameter("debug");
            if(uri != null)
            return EVAL_BODY_INCLUDE;
        }
        return SKIP_BODY;
    }
}
