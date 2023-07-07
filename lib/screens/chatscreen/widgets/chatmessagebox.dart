import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/thememodal.dart';

class ChatMessageBox extends StatelessWidget {
  const ChatMessageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MessageClip(),
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width * 0.7,
        color: theme.msgbg,
      ),
    );
  }
}

class MessageClip extends CustomClipper<Path> {
  final double borderradius = 20;
  @override
  Path getClip(Size size) {
    Path msgclip = Path();
    msgclip.moveTo(0, borderradius);

    msgclip.lineTo(0, size.height - borderradius); //  bottom left
    msgclip.quadraticBezierTo(
        0, size.height, borderradius, size.height); // left bottom border radius

    msgclip.lineTo(size.width - 10 - borderradius, size.height); // right bottom
    msgclip.quadraticBezierTo(size.width - 10, size.height, size.width - 10,
        size.height - borderradius); //right bottom borderradius

    msgclip.lineTo(size.width - 10, 12.5); // right top below
    msgclip.lineTo(size.width - 3, 3); // top right
    msgclip.quadraticBezierTo(
        size.width, 0, size.width - 3, 0); // after curvature

    msgclip.lineTo(borderradius, 0); //  top left
    msgclip.quadraticBezierTo(0, 0, 0, borderradius); // top left border radius

    return msgclip;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
