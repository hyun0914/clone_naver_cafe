import 'package:flutter/material.dart';

class MyNewsWidget extends StatefulWidget {
  const MyNewsWidget({super.key});

  @override
  State<MyNewsWidget> createState() => _MyNewsWidgetState();
}

class _MyNewsWidgetState extends State<MyNewsWidget> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2, vsync: this, initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tabController,
          tabs: const [
            Text('전체', style: TextStyle(fontSize: 18),),
            Text('내 활동', style: TextStyle(fontSize: 18),),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              entire(),
              myActivities(),
            ],
          ),
        ),
      ],
    );
  }
}

Widget entire() {
  return ListView.builder(
    itemCount: 3,
    padding: const EdgeInsets.only(top: 16),
    itemBuilder: (BuildContext context, int index) {
      return Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                ),
                const SizedBox(width: 12,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('새로운 전체 공지가 있습니다.', style: TextStyle(fontSize: 14),),
                    Text('00에게 재미있는 덱을 추천해주세요', style: TextStyle(fontSize: 16),),
                    Text('카페 명 · 2024.06.06', style: TextStyle(fontSize: 12),),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 3,
              margin: const EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all()
              ),
            ),
          ],
        ),
      );
    },
  );
}

Widget myActivities() {
  return const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('내소식이 없습니다.', style: TextStyle(fontSize: 20),),
      SizedBox(height: 12,),
      Text('가입한 카페의 활동 알림과 댓글 알림을\n이옷에서 확인할 수 있어오.', style: TextStyle(fontSize: 16), textAlign: TextAlign.center,),
    ],
  );
}