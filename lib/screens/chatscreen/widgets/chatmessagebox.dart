import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/thememodal.dart';

class ChatMessageBox extends StatelessWidget {
  final String message;
  final bool selfmsg;
  const ChatMessageBox(
      {super.key, this.message = 'Message', this.selfmsg = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: (selfmsg == true)
                  ? (MainAxisAlignment.end)
                  : (MainAxisAlignment.start),
              children: [
                Stack(
                  // alignment: Alignment.centerRight,
                  children: [
                    ClipPath(
                      clipper: (selfmsg == true)
                          ? (MessageClipSelf())
                          : (MessageClipOpp()),
                      child: Container(
                        constraints: BoxConstraints(
                          minWidth: 120,
                          maxWidth: MediaQuery.of(context).size.width * 0.7,
                        ),
                        padding: EdgeInsets.only(
                          right: 15 + ((selfmsg == true) ? (10) : (0)),
                          left: 15 + ((selfmsg == true) ? (0) : (10)),
                          top: 10,
                          bottom: 20,
                        ),
                        color: (selfmsg == true)
                            ? (theme.msgbg)
                            : (theme.oppmsgbg),
                        child: Text(
                          message,
                          style: theme.body2,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 3,
                      right: (selfmsg == true) ? (20) : (10),
                      child: Row(
                        children: [
                          Text(
                            '3.16 pm',
                            style: theme.body4.copyWith(color: theme.subonbg),
                          ),
                          Visibility(
                            visible: (selfmsg == true) ? (true) : (false),
                            child: SizedBox(
                              width: 5,
                            ),
                          ),
                          Visibility(
                            visible: (selfmsg == true) ? (true) : (false),
                            child: Icon(
                              Icons.done_all_rounded,
                              size: 15,
                              // color: theme.subonbg,
                              color: Colors.lightBlueAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MessageClipSelf extends CustomClipper<Path> {
  final double borderradius = 20;
  final double padding = 10;
  @override
  Path getClip(Size size) {
    Path msgclip = Path();
    msgclip.moveTo(0, borderradius);

    msgclip.lineTo(0, size.height - borderradius); //  bottom left
    msgclip.quadraticBezierTo(
        0, size.height, borderradius, size.height); // left bottom border radius

    msgclip.lineTo(
        size.width - padding - borderradius, size.height); // right bottom
    msgclip.quadraticBezierTo(
        size.width - padding,
        size.height,
        size.width - padding,
        size.height - borderradius); //right bottom borderradius

    msgclip.lineTo(size.width - padding, 12.5); // right top below
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

class MessageClipOpp extends CustomClipper<Path> {
  final double borderradius = 20;
  final double padding = 10;
  @override
  Path getClip(Size size) {
    Path msgclip = Path();
    msgclip.moveTo(0, 0);
    msgclip.lineTo(padding, 12.5);

    msgclip.lineTo(padding, size.height - borderradius); //  bottom left
    msgclip.quadraticBezierTo(padding, size.height, borderradius + padding,
        size.height); // left bottom border radius

    msgclip.lineTo(size.width - borderradius, size.height); // right bottom
    msgclip.quadraticBezierTo(size.width, size.height, size.width,
        size.height - borderradius); //right bottom border radius

    msgclip.lineTo(size.width, borderradius); // top right
    msgclip.quadraticBezierTo(
        size.width, 0, size.width - borderradius, 0); // top right border radius

    msgclip.lineTo(borderradius, 0); //  top left
    msgclip.quadraticBezierTo(0, 0, 0, 0); // top left border radius

    return msgclip;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
