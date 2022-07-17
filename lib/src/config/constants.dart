import 'package:path_provider/path_provider.dart';

class Constants {
  static const printAndEmail = "PRINT_AND_EMAIL";
  static const print = "PRINT";
  static const cancel = "CANCEL";
  static String baseImagePath = "";

  static Future<String> getImageBasePath() async {
    final appDoc = await getApplicationDocumentsDirectory();
    baseImagePath = appDoc.path + "/images/";
    return baseImagePath;
  }
}

class UrlConstants {
  static const sampleProductDataUrl = "https://xpos-user-dev.s3.ap-south-1.amazonaws.com/feed_data/product_min.zip";
  static const sampleProductsImagesUrl = "https://xpos-user-dev.s3.ap-south-1.amazonaws.com/feed_data/parchi_image_min.zip";
}