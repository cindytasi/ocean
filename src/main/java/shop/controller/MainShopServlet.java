package shop.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.util.JedisUtil;
import shop.service.ProductService;
import shop.vo.ApiConstants;
import shop.vo.Product;
import shop.vo.ShopCartVo;


@WebServlet("/MainShopServlet")
public class MainShopServlet extends HttpServlet {

	private ProductService productService;
	private static final String shopCartRedisKey = "shopCart";
	
    public void init() {
    	productService = new ProductService();
    }   
	
	
    
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		//===============讓購物車上的數字統一===============
//		HttpSession session = request.getSession();
//		Object userIdObj = session.getAttribute("userId"); // 取得 userId 属性，返回的是 Object 类型
//		String userId = null;
		JedisPool pool = JedisUtil.getJedisPool(); 
		try (Jedis jedis = pool.getResource();){
		String userId = "1"; // 假設userid=1 (設一個假資料)								
		String cart = jedis.get(shopCartRedisKey + ":" + userId);
		Gson gson = new Gson();
		List<ShopCartVo> shopCartVoList = gson.fromJson(cart, new TypeToken<List<ShopCartVo>>(){}.getType());
		int cartSize = shopCartVoList.size();
		req.setAttribute("cartSize", cartSize);
		
		}
		catch (Exception e) {
			e.printStackTrace();
		} 
		
		
		//===============拿取商品所有的資訊===============		
		List<Product> list = productService.getNewAll();
		req.setAttribute("main", list);		
		req.getRequestDispatcher("/jsp/MainShop.jsp").forward(req, res);

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		this.doGet(req, res);
	}

}
