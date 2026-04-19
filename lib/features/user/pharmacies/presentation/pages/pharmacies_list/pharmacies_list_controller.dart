part of 'pharmacies_list_imports.dart';


class PharmaciesListController {


  final TextEditingController searchController = TextEditingController();

  List<Product> getMockProducts() {
    return List.generate(10, (index) {
      return Product.fromJson({
        "id": index + 100,
        "name": index % 2 == 0 
            ? "Panadol Acute Head Cold Paracetamol Tablets..." 
            : "Omega 3 Fish Oil 1000MG 100 Soft Gel (Now)",
        "unit": "Pcs",
        "max_qty": 10,
        "thumbnail_image": index % 2 == 0 
            ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6-O_U-a-m8F_rXY-xX-K8YQ-C-u-q-L-Q&s"
            : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhX5O9Qf-hK_P_P7p1J-7y0z-I-v-f-v-I_A&s",
        "images": <String>[],
        "is_multiple": false,
        "price_high_low_discount": "31.50",
        "price_high_low": "35.00",
        "has_discount": true,
        "discount": "10%",
        "choice_options": [],
        "colors": [],
        "min_qty": 1,
        "currency_symbol": "AED",
        "variant": {"calculable_price": "31.50", "current_stock": 100},
        "tags": <String>[],
        "rating": 4.0,
        "sales": 100,
        "is_digital": false,
        "is_wishlist": false,
        "seller_id": 1,
        "count_reviews": 15,
        "sold_by_type": "Pharmacy",
        "sold_by_name": "Al Manara Pharmacy",
        "shop": null,
        "is_resale": false,
        "reseller_id": null,
        "description": "Mock description for pharmacy product.",
        "video_provider": "",
        "video_link": "",
        "category_name": "Health",
        "brand_name": "Generic",
        "has_vip_offer": false,
        "has_shareholder_discount": false,
        "is_out_of_stock": false,
        "added_qty_to_cart": 0,
        "is_fresh": false,
      });
    });
  }

}