import 'package:food_delivery_app/Controller/productcontroller.dart';
import 'package:food_delivery_app/data/repository/popularproductrepo.dart';
import 'package:get/get.dart';
import '../data/api/api_client.dart';

Future<void> init()async {
   Get.lazyPut(()=>ApiClient(appBaseUrl: "http://mvs.bslmeiyu.com/"));
   Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
   Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}