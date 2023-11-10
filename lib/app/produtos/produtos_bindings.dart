import 'package:get/get.dart';
import './produtos_controller.dart';

class ProdutosBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(ProdutosController());
    }
}