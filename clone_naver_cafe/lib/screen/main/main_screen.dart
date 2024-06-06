import 'package:flutter/material.dart';

import 'widget/cafe_home_widget.dart';
import 'widget/chatting_widget.dart';
import 'widget/my_news_widget.dart';
import 'widget/neighbor_widget.dart';
import 'widget/popular_posts_widget.dart';
import 'widget/subscribe_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final List<Widget> screenList = <Widget> [
    const CafeHomeWidget(),
    const NeighborWidget(),
    const SubscribeWidget(),
    const PopularPostsWidget(),
    const MyNewsWidget(),
    const ChattingWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Clone Cafe'),
        leading: const Icon(Icons.add),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 20,),
          Icon(Icons.settings),
          SizedBox(width: 14,),
        ],
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 1));
          },
          child: screenList.elementAt(currentIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: '카페홈',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '이웃',
            icon: Icon(Icons.where_to_vote_outlined),
          ),
          BottomNavigationBarItem(
            label: '구독',
            icon: Icon(Icons.article_outlined),
          ),
          BottomNavigationBarItem(
            label: '인기글',
            icon: Icon(Icons.local_fire_department_outlined),
          ),
          BottomNavigationBarItem(
            label: '내소삭',
            icon: Icon(Icons.notifications_none),
          ),
          BottomNavigationBarItem(
            label: '채팅',
            icon: Icon(Icons.sms_outlined),
          ),
        ],
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}