package com.xiaoy.handler;

import com.xiaoy.entity.Candidate;
import com.xiaoy.entity.Resume;
import com.xiaoy.service.CandidateServ;
import com.xiaoy.service.ResumeServ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

/**
 * Created by 紫青 on 2018/10/16.
 */
@Controller
@RequestMapping("pages")
public class CandidateControl {
    @Autowired
    private CandidateServ candidateServ;
    @Autowired
    private ResumeServ resumeServ;

    @RequestMapping(value = "delivery",produces = "application/json;charset=utf-8")
    public String delivery(int visitorId,int positionId,ModelMap model){
        Candidate candidate=candidateServ.findCandidateByVisitorId(visitorId);
        Resume resume=resumeServ.findResumeByVisitorId(visitorId);
        if(candidate==null&&resume!=null){
            candidateServ.saveCandidate(new Candidate(visitorId,new Date(),1,1));
            model.addAttribute("candidate","123");
        }else {
            if(resume==null){
                model.addAttribute("candidate","456");
            }else {
                model.addAttribute("candidate","789");
            }
        }
        return "visitorPage";
    }
}
