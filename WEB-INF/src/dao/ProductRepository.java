package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository{
    private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    private static ProductRepository instance = new ProductRepository();
    
    public static ProductRepository getInstance(){
        return instance;
    }
    
    public ProductRepository() {
        Product powder = new Product("C1234", "바닐라코 프라임 프라이머 피니쉬 파우더", 22000);
        powder.setDescription("메이크업 마지막 단계에 내장된 퍼프나 파우더 브러쉬를 사용하여 가볍게 두드리거나 쓸어주듯 발라줍니다.");
        powder.setCategory("파우더/팩트");
        powder.setManufacturer("바닐라코");
        powder.setUnitsInStock(1000);
        powder.setCondition("인기");
        powder.setFilename("C1234.png");
        
        Product suncushion = new Product("C1235", "라운드랩 라운드랩 자작나무 수분 선쿠션", 24000);
        suncushion.setDescription("기초 스킨케어 마지막 단계에서 적당량을 퍼프에 묻혀 얼굴 전체에 두드리며 펴 발라줍니다. *필요에 따라 수시로 덧발라줍니다.");
        suncushion.setCategory("선쿠션/파우더");
        suncushion.setManufacturer("라운드랩");
        suncushion.setUnitsInStock(1000);
        suncushion.setCondition("세일");
        suncushion.setFilename("C1235.png");
        
        Product cream = new Product("C1236", "닥터지 레드 블레미쉬 클리어 수딩 크림", 38000);
        cream.setDescription("적당량을 덜어 얼굴에 골고루 펴 바른 후 흡수시켜 줍니다.");
        cream.setCategory("에센스/크림");
        cream.setManufacturer("닥터지");
        cream.setUnitsInStock(1000);
        cream.setCondition("특가");
        cream.setFilename("C1236.png");
        
        Product pad = new Product("C1237", "아누아 어성초 77 클리어패드", 45000);
        pad.setDescription("세안 후 기초 케어 첫 단계에서 엠보싱 면으로 눈가와 입가를 제외한 얼굴 전체를 피부 결 방향으로 부드럽게 닦아냅니다.");
        pad.setCategory("패드");
        pad.setManufacturer("아누아");
        pad.setUnitsInStock(1000);
        pad.setCondition("기본템");
        pad.setFilename("C1237.png");
        
        Product wash = new Product("C1238", "센카 퍼펙트 휩 페이셜워시", 17600);
        wash.setDescription("젖은 손바닥에 적당량(약2cm)을 덜어 물과 함께 풍성한 거품을 내어 세안하고, 미온수로 헹구어 냅니다.");
        wash.setCategory("클렌징폼/젤");
        wash.setManufacturer("센카");
        wash.setUnitsInStock(1000);
        wash.setCondition("인기");
        wash.setFilename("C1238.png");
        
        Product lip = new Product("C1239", "클리오 크리스탈 글램틴트", 18000);
        lip.setDescription("적당량의 내용물을 취하여 입술에 발라 줍니다.");
        lip.setCategory("립틴트");
        lip.setManufacturer("클리오");
        lip.setUnitsInStock(1000);
        lip.setCondition("신상");
        lip.setFilename("C1239.png");
        
        listOfProducts.add(powder);
        listOfProducts.add(suncushion);
        listOfProducts.add(cream);
        listOfProducts.add(pad);
        listOfProducts.add(wash);
        listOfProducts.add(lip);
    }
    
    
    
    public ArrayList<Product> getAllProducts() {
		return listOfProducts;
    }


 public Product getProductById(String productId){
        Product productById = null;
        
        for(int i =0; i<listOfProducts.size();i++){
            Product product = listOfProducts.get(i);
            if(product !=null&&product.getProductId()!=null && product.getProductId().equals(productId)){
                productById=product;
                break;
            }
        }
        return productById;
    }
    
    public void addProduct(Product product){
        listOfProducts.add(product);
    }
}
