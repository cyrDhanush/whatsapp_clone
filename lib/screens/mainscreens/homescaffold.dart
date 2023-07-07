import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/mainscreens/calllist.dart';
import 'package:whatsapp_clone/screens/mainscreens/chatlist.dart';
import 'package:whatsapp_clone/screens/mainscreens/statuslist.dart';
import 'package:whatsapp_clone/screens/settingsscreen.dart';
import 'package:whatsapp_clone/theme/colors.dart';
import 'package:whatsapp_clone/theme/darktheme.dart';
import 'package:whatsapp_clone/theme/lighttheme.dart';
import 'package:whatsapp_clone/theme/thememodal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late Size size;
  late double tabsize;
  List<IconData> fabIcons = [
    Icons.message_rounded,
    Icons.camera_alt_rounded,
    Icons.add_ic_call_rounded,
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    tabsize = (size.width - 60) / 3;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'WhatsApp',
          style: theme.body1.copyWith(
            fontSize: 22,
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
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingScreen()));
            },
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
          splashBorderRadius: BorderRadius.circular(12),
          labelStyle: theme.body2,
          unselectedLabelStyle: theme.body2,
          isScrollable: true,
          labelPadding: EdgeInsets.all(0),
          padding: EdgeInsets.all(0),
          tabs: [
            Container(
              width: 60,
              child: Icon(
                Icons.group_rounded,
                color: (tabController.index == 0)
                    ? (theme.indicatorColor)
                    : (theme.subonmaincolor),
              ),
            ),
            Container(
              width: tabsize,
              child: Tab(
                text: 'Chats',
              ),
            ),
            Container(
              width: tabsize,
              child: Tab(
                text: 'Status',
              ),
            ),
            Container(
              width: tabsize,
              child: Tab(
                text: 'Calls',
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        physics: BouncingScrollPhysics(),
        children: [
          Scaffold(),
          ChatList(),
          StatusList(),
          CallList(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: AnimatedOpacity(
        duration: Duration(milliseconds: 1000),
        opacity: (tabController.index == 0) ? (0) : (1),
        curve: Curves.fastLinearToSlowEaseIn,
        child: Container(
          height: 150,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              AnimatedPositioned(
                bottom: (tabController.index == 2) ? (80) : (0),
                duration: Duration(milliseconds: 800),
                curve: Curves.fastLinearToSlowEaseIn,
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: theme.subfab,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(50),
                        offset: Offset(1, 1),
                        spreadRadius: 2,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.edit_rounded,
                    color: theme.body1.color,
                  ),
                ),
              ),
              FloatingActionButton(
                  onPressed: () {},
                  shape: const CircleBorder(),
                  backgroundColor: theme.fabbg,
                  child: (tabController.index != 0)
                      ? (Icon(
                          fabIcons[tabController.index - 1],
                          color: white,
                        ))
                      : (Container())),
            ],
          ),
        ),
      ),
    );
  }
}
