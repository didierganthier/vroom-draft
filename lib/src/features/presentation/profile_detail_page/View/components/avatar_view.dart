import 'package:flutter/material.dart';
import 'package:vroom/src/colors/colors.dart';
import 'package:vroom/src/utils/style/box_decoration_shadows.dart';

@immutable
class AvatarView extends StatelessWidget {
  final String backgroundImage;

  AvatarView({ @required this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 142,
          height: 142,
          decoration: createBoxDecorationWithShadows(
            borderRadius: BorderRadius.circular(65)
          ),
          child: CircleAvatar(backgroundImage: NetworkImage(backgroundImage),)
        ),
        Transform.translate(
          offset: Offset(0, -35),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(color: rosa, borderRadius: BorderRadius.circular(20)),
            child: Icon(Icons.camera_alt, color: white,size: 20,),
          ),
        )
      ],
    );
  }
}
