import 'dart:io';

import 'package:dotte_repository/dotte_repository.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:universal_platform/universal_platform.dart';

import '../../theme/color_name.dart';
import '../constants.dart';

class AvatarWidget extends StatefulWidget {
  const AvatarWidget({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  _AvatarWidgetState createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {
  late Widget avatarImage;

  @override
  void initState() {
    super.initState();

    avatarImage = widget.user.avatarUrl == null
        ? const Icon(
            Icons.people,
            size: kLargeIconSize,
          )
        : Image.network(widget.user.avatarUrl!);
  }

  void _updateAvatar() async {
    /// [ImagePicker] Plugin don't support Mac, Window, Linux operation.
    if (UniversalPlatform.isDesktop || UniversalPlatform.isWeb) return;

    final _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      File imageFile = File(image.path);

      /// Crop image picked.
      /// Desktop and Web dont support crop image.
      if (!UniversalPlatform.isDesktop && !UniversalPlatform.isWeb) {
        File? croppedFile = await ImageCropper.cropImage(
          sourcePath: image.path,
          aspectRatioPresets: [
            CropAspectRatioPreset.square,
            CropAspectRatioPreset.ratio3x2,
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.ratio4x3,
            CropAspectRatioPreset.ratio16x9
          ],
          androidUiSettings: const AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false,
          ),
          iosUiSettings: const IOSUiSettings(
            minimumAspectRatio: 1.0,
          ),
        );

        if (croppedFile != null) {
          imageFile = croppedFile;
        }
      }
      avatarImage = Image.file(
        imageFile,
        fit: BoxFit.cover,
        width: kAvatarRadius * 2,
      );
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(
            kAvatarRadius,
          ),
          child: Container(
            height: kAvatarRadius * 2,
            width: kAvatarRadius * 2,
            color: ColorName.greyThirdary,
            child: avatarImage,
          ),
        ),
        if (!UniversalPlatform.isDesktop && !UniversalPlatform.isWeb)
          Positioned(
            bottom: kPaddingDefault2,
            right: kPaddingDefault2,
            child: GestureDetector(
              onTap: _updateAvatar,
              child: Container(
                padding: const EdgeInsets.all(kPaddingDefault1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: ColorName.greyPrimary,
                    width: 1,
                  ),
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.edit,
                  size: kSmallIconSize,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
