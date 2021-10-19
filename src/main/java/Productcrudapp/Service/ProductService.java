/*
 * package Productcrudapp.Service;
 * 
 * import java.io.File; import java.io.FileOutputStream; import
 * java.io.IOException;
 * 
 * import javax.servlet.http.HttpSession;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Service; import
 * org.springframework.web.multipart.commons.CommonsMultipartFile;
 * 
 * import Productcrudapp.dao.ProductDoa; import Productcrudapp.model.Product;
 * 
 * @Service public class ProductService {
 * 
 * @Autowired private ProductDoa productDoa;
 * 
 * public int productImage(Product product, CommonsMultipartFile file,
 * HttpSession session) { byte[] bytes = file.getBytes(); String realPath =
 * session.getServletContext().getRealPath("/") + "WEB-INF" + File.pathSeparator
 * + "resources" + File.pathSeparator + "image" + File.pathSeparator +
 * file.getOriginalFilename();
 * 
 * try { FileOutputStream fos=new FileOutputStream(realPath); fos.write(bytes);
 * fos.close();
 * 
 * } catch (IOException e) { e.printStackTrace(); } return
 * this.productDoa.saveProduct(product); }
 * 
 * }
 */