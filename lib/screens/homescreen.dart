import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/thememodal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Whatsapp',
          style: theme.body1.copyWith(
            fontSize: 20,
            color: theme.subonmaincolor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              color: theme.subonmaincolor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
              color: theme.subonmaincolor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_rounded,
              color: theme.subonmaincolor,
            ),
          ),
        ],
        bottom: TabBar(
          controller: tabController,
          indicatorColor: theme.indicatorColor,
          indicatorSize: TabBarIndicatorSize.tab,
          dividerColor: Colors.white.withAlpha(0),
          labelColor: theme.indicatorColor,
          unselectedLabelColor: theme.subonmaincolor,
          labelStyle: TextStyle(
            fontSize: 16,
            color: theme.indicatorColor,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 14,
            color: theme.subonmaincolor,
          ),
          tabs: [
            Tab(
              text: 'Chats',
            ),
            Tab(
              text: 'Status',
            ),
          ],
        ),
      ),
    );
  }
}
