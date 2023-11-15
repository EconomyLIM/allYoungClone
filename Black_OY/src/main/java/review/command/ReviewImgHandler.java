package review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import review.domain.ReviewDTO;
import review.service.ReviewService;

public class ReviewImgHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("리뷰이미지 핸들러");
		String rev_id = null;
		ReviewDTO reviewDTO = null;
		try {
			rev_id = request.getParameter("rev_id");
			ReviewService reviewService = ReviewService.getInstance();
			reviewDTO = reviewService.reviewService(rev_id);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리뷰이미지 핸들러 오류");
		}
		
		request.setAttribute("reviewDTO", reviewDTO);
		request.getRequestDispatcher("/view/product/reviewimg.jsp").forward(request, response);
		return null;
	}

}
