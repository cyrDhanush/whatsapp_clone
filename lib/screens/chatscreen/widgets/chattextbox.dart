import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/thememodal.dart';

class ChatTextbox extends StatefulWidget {
  const ChatTextbox({super.key});

  @override
  State<ChatTextbox> createState() => _ChatTextboxState();
}

class _ChatTextboxState extends State<ChatTextbox> {
  TextEditingController textboxcontroller = TextEditingController();
  double msglines = 0;
  lineCounter() {
    int lc = 0;
    String text = textboxcontroller.text.trim();
    for (int i = 0; i < text.length; i++) {
      if (text[i] == '\n') {
        lc += 1;
      }
    }
    msglines = ((lc >= 3) ? (3) : (lc)).toDouble();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      margin: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: Colors.blue.withAlpha(0),
      ),
      child: Row(
        children: [
          const SizedBox(width: 5),
          Expanded(
            child: Container(
              // height: 50,
              decoration: BoxDecoration(
                color: theme.oppmsgbg,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.emoji_emotions,
                      color: theme.subonbg,
                    ),
                  ),
                  Expanded(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: 50 + (msglines * 15),
                      child: TextField(
                        controller: textboxcontroller,
                        style: theme.body2,
                        keyboardType: TextInputType.multiline,
                        cursorColor: theme.fabbg,
                        maxLines: 3,
                        onChanged: (text) {
                          lineCounter();
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          hintText: 'Message',
                          hintStyle: theme.body2.copyWith(color: theme.subonbg),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white.withAlpha(0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white.withAlpha(0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.attach_file_rounded,
                      color: theme.subonbg,
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: (textboxcontroller.text.length == 0) ? (45) : (0),
                    child: Visibility(
                      visible: (textboxcontroller.text.length == 0)
                          ? (true)
                          : (false),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.currency_rupee_rounded,
                          color: theme.subonbg,
                        ),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: (textboxcontroller.text.length == 0) ? (45) : (0),
                    child: Visibility(
                      visible: (textboxcontroller.text.length == 0)
                          ? (true)
                          : (false),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.camera_alt_rounded,
                          color: theme.subonbg,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 5),
          Container(
            height: 50,
            width: 50,
            child: FloatingActionButton(
              elevation: 0,
              onPressed: () {
                print(msglines);
              },
              backgroundColor: theme.fabbg,
              shape: const CircleBorder(),
              child: AnimatedCrossFade(
                crossFadeState: (textboxcontroller.text.length == 0)
                    ? (CrossFadeState.showFirst)
                    : (CrossFadeState.showSecond),
                duration: const Duration(milliseconds: 800),
                firstCurve: Curves.fastLinearToSlowEaseIn,
                secondCurve: Curves.fastLinearToSlowEaseIn,
                firstChild: const Icon(
                  Icons.mic,
                  color: Colors.white,
                ),
                secondChild: const Icon(
                  Icons.send,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }
}
