import 'dart:html';

Future<MediaStream?> getCameraStream() async {
  try {
    final stream = await window.navigator.mediaDevices?.getUserMedia({
      'video': {'facingMode': 'environment'}
    });
    return stream;
  } catch (e) {
    print('Error accessing camera: $e');
    return null;
  }
}
