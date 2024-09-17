import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parkmepro/model/user_model.dart';
import 'package:parkmepro/utils/fire_store_utils.dart';

class ProfileController extends GetxController {
  RxBool isLoading = true.obs;
  Rx<UserModel> userModel = UserModel().obs;

  Rx<GlobalKey<FormState>> formKey = GlobalKey<FormState>().obs;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  getData() async {
    await FireStoreUtils.getUserProfile(FireStoreUtils.getCurrentUid()).then((value) {
      if (value != null) {
        userModel.value = value;
      }
    });
    isLoading.value = false;
  }
}
