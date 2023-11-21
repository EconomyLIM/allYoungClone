package mypage.qna.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

import mypage.main.domain.MpQnADTO;
import mypage.main.persistence.MyPageDAOImpl;

public class MPPrdQnADAOImpl implements MPPrdQnADAO {
	
	private MPPrdQnADAOImpl() {}
	private static MPPrdQnADAOImpl instance = new MPPrdQnADAOImpl();
	public static MPPrdQnADAOImpl getinstance() {
		return instance;
	}
	
	@Override
	public List<MpQnADTO> selectUserQnA(Connection conn, String uId, String start, String end) throws Exception {
		// TODO Auto-generated method stub
				String sql = " SELECT p.pro_displ_name dn , b.brand_name bn, i.pro_displ_src img, qa_que, qa_date, qa_state, qa_ans  "
						+ "				 FROM qanda q left join product_display p on q.pro_displ_id = p.pro_displ_id  "
						+ "				            left join brand b on p.brand_id = b.brand_id  "
						+ "				            left join pro_displ_img i on p.pro_displ_id = i.pro_displ_id  "
						+ "                 WHERE user_id = ?  "
						+ "                 and ROWNUM <= 3  "
						+ "                 and qa_date between to_date( ? ,'YYYY-MM-DD' ) and to_date( ? , 'YYYY-MM-DD') ; ";
				ArrayList<MpQnADTO> list = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, uId);
				pstmt.setString(2, start);
				pstmt.setString(3, end);
				rs = pstmt.executeQuery();
				MpQnADTO dto = null;
				if (rs.next()) {
					list = new ArrayList<MpQnADTO>();
					
					do {
						dto = new MpQnADTO();
						dto.setQnaQus(rs.getString("qa_que"));
						dto.setQnaAns(rs.getString("qa_ans"));
						dto.setQnaDate(rs.getDate("qa_date"));
						dto.setQnaState(rs.getString("qa_state"));
						dto.setQnaDisplN(rs.getString("dn"));
						dto.setQnaBrand(rs.getString("bn"));
						dto.setQnaImg(rs.getString("img"));
						list.add(dto);
					} while (rs.next());
					JDBCUtil.close(pstmt);
					JDBCUtil.close(rs);
					JDBCUtil.close(conn);
				}
				
				} catch (Exception e) {
					System.out.println("> MyPageDAOImpl_selectUserQnA() Exception");
				}
				return list;
	}

}
