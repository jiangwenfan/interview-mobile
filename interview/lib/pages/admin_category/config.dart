import 'package:get/get.dart';
import 'controller.dart';
import 'add_view.dart';
import 'view.dart';
import '../../routes.dart';
import '../home_explore/controller.dart';

class AdminCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminCategoryController>(() => AdminCategoryController());
    Get.lazyPut<HomeExploreController>(() => HomeExploreController());
  }
}

final adminAddCategoryPage = GetPage(
    name: Routes.adminAddCategory,
    page: () => AddCategoryView(),
    binding: AdminCategoryBinding());

final adminCategoryPage = GetPage(
    name: Routes.adminCategory,
    page: () => CategoryView(),
    binding: AdminCategoryBinding());
