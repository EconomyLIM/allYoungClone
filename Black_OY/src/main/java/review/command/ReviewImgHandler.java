package review.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import review.domain.ReviewDTO;
import review.domain.SkintbDTO;
import review.service.ReviewService;

public class ReviewImgHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("리뷰이미지 핸들러");
		String rev_id = null;
		String user_id = null;
		ReviewDTO reviewDTO = null;
		List<SkintbDTO> skinlist = null;
		try {
			rev_id = request.getParameter("rev_id");
			ReviewService reviewService = ReviewService.getInstance();
			reviewDTO = reviewService.reviewService(rev_id);
			user_id = reviewDTO.getUser_id();
			skinlist = reviewService.skinService(user_id);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리뷰이미지 핸들러 오류");
		}
		request.setAttribute("skinlist", skinlist);
		request.setAttribute("reviewDTO", reviewDTO);
		request.getRequestDispatcher("/view/product/reviewimg.jsp").forward(request, response);
		return null;
	}

}
