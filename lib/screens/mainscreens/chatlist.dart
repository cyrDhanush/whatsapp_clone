import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/chattile.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 100,
        padding: EdgeInsets.symmetric(vertical: 7),
        itemBuilder: (context, i) {
          return ChatTile();
        },
      ),
    );
  }
}
