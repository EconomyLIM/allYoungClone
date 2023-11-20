package eventShop.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import com.util.JDBCUtil;

import eventShop.domain.ProEventInfoDTO;
import eventShop.domain.ProEventProductDTO;
import product.domain.PMidListDTO;

public class ProEventDAOImpl implements ProEventDAO{

	private ProEventDAOImpl() {}
	private static ProEventDAOImpl instance = new ProEventDAOImpl();
	public static ProEventDAOImpl getInstance() {
		return instance;
	} // getInstance
	
	// ============= 이벤트의 상단 정보를 갖고오는 작업 ========================  
	@Override
	public ProEventInfoDTO getEventInfo(Connection conn, String eventId) throws Exception {
		String sql = " SELECT distinct pe.pe_id, pe.pe_name, pei_src, pe_s_d, pe_e_d FROM pro_event pe "
				+ " JOIN peimg ON peimg.pe_id = pe.pe_id "
				+ " WHERE pe.pe_id = ? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProEventInfoDTO dto = null;
		SimpleDateFormat sdf= new SimpleDateFormat("yy.MM.dd");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, eventId);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				
				dto = ProEventInfoDTO.builder()
						.peiId(rs.getString("pe_id"))
						.peiName(rs.getString("pe_name"))
						.peiSrc(rs.getString("pei_src"))
						.peiSD( rs.getDate("pe_s_d") != null ? sdf.format(new Date( rs.getDate("pe_s_d").getTime())) : null )
						.peiED( rs.getDate("pe_e_d") != null ? sdf.format(new Date( rs.getDate("pe_e_d").getTime())) : null )
						.build();
			System.out.println(" >> *** ProEventDAOImpl getEventInfo ");
			} // if
			
		} catch (SQLException e) {
			System.out.println(">ProEventDAOImpl getEventInfo SQLException<");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">ProEventDAOImpl getEventInfo Exception<");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		} //try_catch
		
		return dto;
	} // getEventInfo

	@Override
	public HashMap<ProEventProductDTO, List<PMidListDTO>> getEventProduct(Connection conn, String eventId) throws Exception {
		String sql = " SELECT peic.peic_id, peic.peic_name, pdv.* FROM pro_event pe "
				+ " JOIN peic ON pe.pe_id = peic.pe_id "
				+ " JOIN peconn ON peconn.peic_id = peic.peic_id  "
				+ " JOIN product_display pd ON pd.pro_displ_id = peconn.pro_displ_id "
				+ " JOIN pmListview pdv ON pd.pro_displ_id = pdv.pro_displ_id "
				+ " WHERE pe.pe_id = ? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		HashMap<ProEventProductDTO, List<PMidListDTO>> map = null;
		ProEventProductDTO eventProductDTO = null;
		PMidListDTO listDTO = null;
		List<PMidListDTO> list = null;
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, eventId);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				map = new HashMap<>();
				do {
					
					eventProductDTO = ProEventProductDTO.builder()
							.peId(rs.getString("peic_id"))
							.peName(rs.getString("peic_name"))
							.build();
					
					if (!map.containsKey(eventProductDTO)) {
						list = new ArrayList<>();
						map.put(eventProductDTO, list);
					} // if
					
					listDTO = PMidListDTO.builder()
							.displImgSrc(rs.getString("pro_displ_src"))
							.brandName(rs.getString("brand_name"))
							.brandId(rs.getString("brand_id"))
							.displProName(rs.getString("pro_displ_name"))
							.lid(rs.getString("cat_l_id"))
							.mid(rs.getString("cat_m_id"))
							.sid(rs.getString("cat_s_id"))
							.proPrice(rs.getString("proprice"))
							.afterPrice(rs.getString("afterprice"))
							.displId(rs.getString("pro_displ_id"))
							.productID(rs.getString("pro_id"))
							.prc(rs.getInt("prc"))
							.pdc(rs.getInt("pdc"))
							.pmp(rs.getInt("pmp"))
							.stock(rs.getInt("stock"))
							.displLike(rs.getInt("pro_displ_like"))
							.ordercnt(rs.getInt("ordercnt"))
							.proReg(rs.getDate("pro_reg"))
							.build();
					
					list = map.get(eventProductDTO);
					list.add(listDTO);
							
					
				} while (rs.next());
				
			} // if
			
		} catch (SQLException e) {
			System.out.println(">ProEventDAOImpl getEventProduct SQLException<");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">ProEventDAOImpl getEventProduct Exception<");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		} //try_catch
		
		return map;
	} // getEventProduct

} // ProEventDAOImpl
