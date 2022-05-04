import 'package:get/get.dart';
import 'package:sent_image_flutter/model/model.dart';

class Controller extends GetxController {
  final imageURL = ''.obs;
  final list = <AddPhoto>[].obs;

  void setURL(String url) {
    imageURL.value = url;
  }

  void addList(AddPhoto addPhoto) {
    list.add(addPhoto);
  }

  void deleteList(int index) {
    list.remove(index);
  }
}
