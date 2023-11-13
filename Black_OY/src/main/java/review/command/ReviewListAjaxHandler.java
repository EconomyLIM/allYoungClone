package review.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import review.domain.ReviewDTO;
import review.domain.ReviewImgDTO;
import review.domain.ReviewScoreDTO;
import review.service.ReviewService;

public class ReviewListAjaxHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("리뷰리스트 핸들러");
		String pro_displ_id = null;
		String rev_id = null;
		String type = null;
		
		List<ReviewDTO> reviewlist = null;
		List<ReviewImgDTO> reviewimglist = null;
		List<List<ReviewImgDTO>> reviewimg = new ArrayList<List<ReviewImgDTO>>();
		ReviewDTO reviewDTO = null;
		
		ReviewScoreDTO reviewScoreDTO = null;
		try {
			pro_displ_id = "pd_00000006";
			
			type = request.getParameter("type");
			if (type == null || type.isEmpty() || type.equals("null")) {
				type = "01";
			}
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리뷰 오류 제발 나지 마라");
		}
			
		ReviewService reviewService = ReviewService.getInstance();
		reviewlist = reviewService.reviewListService(pro_displ_id, type);
		reviewScoreDTO = reviewService.reviewScoreService(pro_displ_id);
		try {
			
			for (int i = 0; i < reviewlist.size(); i++) {
				rev_id = reviewlist.get(i).getRev_id();
				reviewimglist = reviewService.reviewimgService(rev_id);
				reviewimg.add(reviewimglist);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리뷰 이미지 오류");
		}
		
		
		
		
		request.setAttribute("reviewlist", reviewlist);
		request.setAttribute("reviewimg", reviewimg);
		request.setAttribute("reviewScore", reviewScoreDTO);
		
			request.getRequestDispatcher("/view/product/reviewajax.jsp").forward(request, response);
			return null;
		
		
		
		
	}

}
