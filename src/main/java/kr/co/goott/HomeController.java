package kr.co.goott;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "job_list/mypage";
	}
	
}


//<div class="row form-group mb-4">
//<div class="col-md-12">
//	<h3>대표근무지역</h3>
//</div>
//<div class="col-md-12 mb-3 mb-md-0">
//	<input type="text" class="form-control" placeholder="서울시 구로구">
//</div>
//<div class="col-md-12">
//	<h3>대표근무지역상세</h3>
//</div>
//<div class="col-md-12 mb-3 mb-md-0">
//	<input type="text" class="form-control" placeholder="구로3동">
//</div>
//<div class="col-md-12">
//	<h3>인근지역</h3>
//</div>
//<div class="col-md-12 mb-3 mb-md-0">
//	<input type="text" class="form-control" placeholder="관악구">
//</div>
//
//</div>
//<div class="row form-group">
//<div class="col-md-12">
//	<h3>Job Description</h3>
//</div>
//<div class="col-md-12 mb-3 mb-md-0">
//	<textarea name="" class="form-control" id="" cols="30" rows="5"></textarea>
//</div>
//</div>
//<div class="row form-group">
//<div class="col-md-12">
//	<input type="submit" value="Post"
//		class="btn btn-primary  py-2 px-5">
//</div>
//</div>