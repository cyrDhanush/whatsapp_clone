import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/messagemodel.dart';
import 'package:whatsapp_clone/screens/chatscreen/widgets/chattextbox.dart';
import 'package:whatsapp_clone/theme/colors.dart';
import 'package:whatsapp_clone/theme/thememodal.dart';
import 'package:whatsapp_clone/screens/chatscreen/widgets/chatmessagebox.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  ScrollController scrollController = ScrollController();
  List<MessageModel> messages = [
    MessageModel(message: 'The First Message'),
  ];

  _scrolldown() {
    // if (scrollController.hasClients == true) {
    //   scrollController.jumpTo(scrollController.position.maxScrollExtent);
    // }
    scrollController.jumpTo(scrollController.position.maxScrollExtent + 100);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _scrolldown();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.zero,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_rounded,
                          color: white,
                        ),
                        CircleAvatar(
                          radius: 18,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: theme.subonmaincolor,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      child: Text(
                        'Name of the Person',
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.body1.copyWith(
                          color: white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.video_call_rounded,
                          color: white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.call_rounded,
                          color: white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert_rounded,
                          color: white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/' +
                ((theme.themename == 'light')
                    ? ('bglight.png')
                    : ('bgdark.jpg'))),
          ),
        ),
        child: Container(
          // margin: EdgeInsets.all(2),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  itemCount: messages.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, i) {
                    return ChatMessageBox(
                      message: messages[i].message,
                      selfmsg: messages[i].isSelf!,
                    );
                  },
                ),
              ),
              ChatTextbox(
                onSend: (MessageModel msg) {
                  messages.add(msg);
                  setState(() {});
                  _scrolldown();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
