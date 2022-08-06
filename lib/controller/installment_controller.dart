import 'package:futurehope/model/installment_model.dart';
import 'package:get/get.dart';

import '../service/installment_service.dart';

class InstallmentController extends GetxController {
  List<InstallmentElement> payment = [];
  var isLoading = true.obs;
  InstallmentService service = InstallmentService();
  Future<void> installment() async {
    payment = await service.installment();
    update();
    isLoading(false);
  }

  String money1 = '54,000';
  String money2 = '24,000';
  String money3 = '20,000';
}
