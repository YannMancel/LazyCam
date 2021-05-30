import 'dart:typed_data' show Uint8List;

import 'package:flutter/material.dart' show Image;
import 'package:image/image.dart' as image_lib show Image, PngEncoder, Format;
import 'package:camera/camera.dart' show CameraImage, ImageFormatGroup, Plane;

/*
// imgLib -> Image package from https://pub.dartlang.org/packages/image
import 'package:image/image.dart' as imglib;
import 'package:camera/camera.dart';

Future<List<int>> convertImagetoPng(CameraImage image) async {
  try {
    imglib.Image img;
    if (image.format.group == ImageFormatGroup.yuv420) {
      img = _convertYUV420(image);
    } else if (image.format.group == ImageFormatGroup.bgra8888) {
      img = _convertBGRA8888(image);
    }

    imglib.PngEncoder pngEncoder = new imglib.PngEncoder();

    // Convert to png
    List<int> png = pngEncoder.encodeImage(img);
    return png;
  } catch (e) {
    print(">>>>>>>>>>>> ERROR:" + e.toString());
  }
  return null;
}

// CameraImage BGRA8888 -> PNG
// Color
imglib.Image _convertBGRA8888(CameraImage image) {
  return imglib.Image.fromBytes(
    image.width,
    image.height,
    image.planes[0].bytes,
    format: imglib.Format.bgra,
  );
}

// CameraImage YUV420_888 -> PNG -> Image (compresion:0, filter: none)
// Black
imglib.Image _convertYUV420(CameraImage image) {
  var img = imglib.Image(image.width, image.height); // Create Image buffer

  Plane plane = image.planes[0];
  const int shift = (0xFF << 24);

  // Fill image buffer with plane[0] from YUV420_888
  for (int x = 0; x < image.width; x++) {
    for (int planeOffset = 0;
        planeOffset < image.height * image.width;
        planeOffset += image.width) {
      final pixelColor = plane.bytes[planeOffset + x];
      // color: 0x FF  FF  FF  FF
      //           A   B   G   R
      // Calculate pixel color
      var newVal = shift | (pixelColor << 16) | (pixelColor << 8) | pixelColor;

      img.data[planeOffset + x] = newVal;
    }
  }

  return img;
}
 */

mixin ImageConverter {
  /*
  static const shift = (0xFF << 24);
  Future<Image> convertYUV420toImageColor(CameraImage image) async {
    try {
      final int width = image.width;
      final int height = image.height;
      final int uvRowStride = image.planes[1].bytesPerRow;
      final int uvPixelStride = image.planes[1].bytesPerPixel;

      print("uvRowStride: " + uvRowStride.toString());
      print("uvPixelStride: " + uvPixelStride.toString());

      // imgLib -> Image package from https://pub.dartlang.org/packages/image
      var img = imglib.Image(width, height); // Create Image buffer

      // Fill image buffer with plane[0] from YUV420_888
      for(int x=0; x < width; x++) {
        for(int y=0; y < height; y++) {
          final int uvIndex = uvPixelStride * (x/2).floor() + uvRowStride*(y/2).floor();
          final int index = y * width + x;

          final yp = image.planes[0].bytes[index];
          final up = image.planes[1].bytes[uvIndex];
          final vp = image.planes[2].bytes[uvIndex];
          // Calculate pixel color
          int r = (yp + vp * 1436 / 1024 - 179).round().clamp(0, 255);
          int g = (yp - up * 46549 / 131072 + 44 -vp * 93604 / 131072 + 91).round().clamp(0, 255);
          int b = (yp + up * 1814 / 1024 - 227).round().clamp(0, 255);
          // color: 0x FF  FF  FF  FF
          //           A   B   G   R
          img.data[index] = shift | (b << 16) | (g << 8) | r;
        }
      }

      imglib.PngEncoder pngEncoder = new imglib.PngEncoder(level: 0, filter: 0);
      List<int> png = pngEncoder.encodeImage(img);
      //muteYUVProcessing = false;
      return Image.memory(png);
    } catch (e) {
      print(">>>>>>>>>>>> ERROR:" + e.toString());
    }
    return null;
  }
  */

  Image? convertImageFromCamera(CameraImage image) {
    try {
      image_lib.Image? img;

      switch (image.format.group) {
        case ImageFormatGroup.unknown:
          // TODO: Handle this case.
          break;
        case ImageFormatGroup.yuv420:
          img = _convertYUV420(cameraImage: image);
          break;
        case ImageFormatGroup.bgra8888:
          img = _convertBGRA8888(cameraImage: image);
          break;
        case ImageFormatGroup.jpeg:
          // TODO: Handle this case.
          break;
      }

      if (img == null) return null;

      // Convert to png
      final png = image_lib.PngEncoder().encodeImage(img);

      return Image.memory(Uint8List.fromList(png));
    } catch (e) {
      print('Error during conversion of CameraImage to Image: $e');
      return null;
    }
  }

  // CameraImage BGRA8888 -> PNG
  // Color
  image_lib.Image _convertBGRA8888({required CameraImage cameraImage}) {
    return image_lib.Image.fromBytes(
      cameraImage.width,
      cameraImage.height,
      cameraImage.planes[0].bytes,
      format: image_lib.Format.bgra,
    );
  }

  // CameraImage YUV420_888 -> PNG -> Image (compression:0, filter: none)
  // Black
  image_lib.Image _convertYUV420({required CameraImage cameraImage}) {
    // Create Image buffer
    final img = image_lib.Image(cameraImage.width, cameraImage.height);

    final Plane plane = cameraImage.planes[0];
    const int shift = 0xFF << 24;

    // Fill image buffer with plane[0] from YUV420_888
    for (int x = 0; x < cameraImage.width; x++) {
      for (int planeOffset = 0;
          planeOffset < cameraImage.height * cameraImage.width;
          planeOffset += cameraImage.width) {
        final pixelColor = plane.bytes[planeOffset + x];
        // color: 0x FF  FF  FF  FF
        //           A   B   G   R
        // Calculate pixel color
        final newVal =
            shift | (pixelColor << 16) | (pixelColor << 8) | pixelColor;

        img.data[planeOffset + x] = newVal;
      }
    }

    return img;
  }
}
