import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/thememodal.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 15),
        foregroundColor: theme.subonbg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Container(
        height: 80,
        // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        child: Row(
          children: [
            CircleAvatar(
              radius: 28,
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Person Name',
                          style: theme.body1,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '8:34 pm',
                        style: theme.body3.copyWith(
                          color: theme.subonbg,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.done_all_rounded,
                        size: 18,
                        color: theme.subonbg,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          'the sub text',
                          style: theme.body2.copyWith(
                            color: theme.subonbg,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
