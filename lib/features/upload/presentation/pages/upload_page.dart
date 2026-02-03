import 'package:flutter/material.dart';
import 'package:no_ai_sns/features/upload/presentation/sub_widgets/w_new_post_upload_images.dart';
import 'package:velocity_x/velocity_x.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({super.key});

  static const routeName = '/upload';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 'New Post'.text.make()),
      body: SingleChildScrollView(child: VStack([NewPostuploadImagesWidget()])),
    );
  }
}
