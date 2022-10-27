import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../config/constants.dart';

class CustomImage extends StatelessWidget {
  final String url;
  final double width;
  final double height;
  const CustomImage({Key? key, required this.url, this.height = 70, this.width = 70}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    late String imageUrl;
    // Check if url is file image or network image
    if (url.startsWith('http:') || url.startsWith('https:')) {
      imageUrl = url;
      return CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        height: height,
        width: width,
        progressIndicatorBuilder: (context, url, progress) => Center(
          child: CircularProgressIndicator(
            value: progress.progress,
          ),
        ),
        errorWidget: (context, obj, trace) {
          return SizedBox(
            height: height,
            width: width,
            child: const Center(
              child: Icon(Icons.error, color: Colors.red,),
            ),
          );
        },
      );
    } else if (url.startsWith('file:')) {
      imageUrl = Constants.baseImagePath + url.substring(6);
      return Image.file(
          File(imageUrl),
          fit: BoxFit.cover,
          height: height,
          width: width,
          errorBuilder: (context, obj, trace) {
        return SizedBox(
          height: height,
          width: width,
          child: const Center(
            child: Icon(Icons.error, color: Colors.red,),
          ),
        );
      });
    }

    return SizedBox(
      height: height,
      width: width,
      child: const Center(
        child: Icon(Icons.warning, color: Colors.orange,),
      ),
    );
  }
}
