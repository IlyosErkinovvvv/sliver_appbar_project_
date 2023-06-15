import 'package:_sliver_appbar_project_/model/image_model.dart';
import 'package:dio/dio.dart';

class ImageService {
  Future<dynamic> getImageService() async {
    try {
      Response response = await Dio().get("http://192.168.100.79:4000");
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((e) => ImageModel.fromJson(e))
            .toList();
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return e.message.toString();
    }
  }
}
