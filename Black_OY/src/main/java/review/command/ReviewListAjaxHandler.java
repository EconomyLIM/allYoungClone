package review.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import review.domain.ReviewDTO;
import review.domain.ReviewImgDTO;
import review.domain.ReviewScoreDTO;
import review.domain.SkintbDTO;
import review.service.ReviewService;

public class ReviewListAjaxHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("리뷰리스트 핸들러");
		String pro_displ_id = null;
		String pro_id = null;
		String rev_id = null;
		String type = null;
		String user_id = null;
		
		// 페이징 처리
				int currentPage =1; //현재페이지 번호 
				
				int numberOfPageBlock =10; //
				int totalRecords =0; // 총 레코드 수 게시글 수
				
				int perPage = 1; // 한페이지에 출력하는 변수를 서버에 전송하는 변수 원래는 24이지만 테스트로인해 5로수정
				int totalpage = 0; // 한페이지가 얼마나 나오는 수
		
		List<ReviewDTO> reviewlist = null;
		List<ReviewImgDTO> reviewimglist = null;
		List<List<ReviewImgDTO>> reviewimg = new ArrayList<List<ReviewImgDTO>>();
		ReviewDTO reviewDTO = null;
		
		ReviewScoreDTO reviewScoreDTO = null;
		try {
			pro_displ_id = request.getParameter("displ");
			pro_id = request.getParameter("pro_id");
			type = request.getParameter("type");
			if (type == null || type.isEmpty() || type.equals("null")) {
				type = "01";
			}
			
			if (pro_id == null || pro_id.isEmpty() || pro_id.equals("null")) {
				pro_id = "ALL";
			}
			
			if (request.getParameter("currentpage") == null || request.getParameter("currentpage") == "") {
				currentPage = 1;
			} else {
				currentPage =Integer.parseInt(request.getParameter("currentpage"));
			} //if_else
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리뷰 오류 제발 나지 마라");
		}
			
		
		
		ReviewService reviewService = ReviewService.getInstance();
		reviewlist = reviewService.reviewListService(pro_displ_id, type, pro_id, currentPage, perPage);
		reviewScoreDTO = reviewService.reviewScoreService(pro_displ_id, pro_id);
		List<SkintbDTO> skinlist = null;
		List<List<SkintbDTO>> skinlists = new ArrayList<List<SkintbDTO>>();
		try {
			if (reviewlist != null) {
			for (int i = 0; i < reviewlist.size(); i++) {
				rev_id = reviewlist.get(i).getRev_id();
				user_id = reviewlist.get(i).getUser_id();
				reviewimglist = reviewService.reviewimgService(rev_id);
				reviewimg.add(reviewimglist);
				skinlist = reviewService.skinService(user_id);
				skinlists.add(skinlist);
			}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리뷰 이미지 오류");
		}
		
		
		request.setAttribute("skinlists", skinlists);
		request.setAttribute("goodsNo", pro_displ_id);
		request.setAttribute("reviewlist", reviewlist);
		request.setAttribute("reviewimg", reviewimg);
		request.setAttribute("reviewScore", reviewScoreDTO);
		
			request.getRequestDispatcher("/view/product/reviewajax.jsp").forward(request, response);
			return null;
		
		
		
		
	}

}
