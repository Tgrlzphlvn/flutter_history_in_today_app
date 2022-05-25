part of 'service.dart';

enum _ServiceEndPoints { tarihtebugun }

extension ServiceEndPointExtension on _ServiceEndPoints {
  String get rawValue {
    switch (this) {
      case _ServiceEndPoints.tarihtebugun:
        return 'tarihtebugun';
    }
  }
}
