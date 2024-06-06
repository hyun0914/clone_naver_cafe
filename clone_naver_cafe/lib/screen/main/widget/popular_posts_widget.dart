import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularPostsWidget extends StatefulWidget {
  const PopularPostsWidget({super.key});

  @override
  State<PopularPostsWidget> createState() => _PopularPostsWidgetState();
}

class _PopularPostsWidgetState extends State<PopularPostsWidget> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 3, vsync: this, initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tabController,
          tabs: const [
            Text('실시간 HOT', style: TextStyle(fontSize: 18),),
            Text('주간 TOP', style: TextStyle(fontSize: 18),),
            Text('내카페 인기글', style: TextStyle(fontSize: 18),),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              realTimeTOP(),
              weeklyTOP(),
              myCafePopularPosts(),
            ],
          )
        ),
      ],
    );
  }
}

Widget realTimeTOP() {
  return ListView(
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 10, top: 16, bottom: 20),
        child: Row(
          children: [
            Text('오전 7시 인기글(다음 업데이트 오후 7시)'),
            SizedBox(width: 6,),
            Icon(Icons.help, size: 14,),
          ],
        ),
      ),
      ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 300,
                          child: Text('테스트 제목 입니다. 실시간 TOP 제목 테스트 중 입니다.', style: TextStyle(fontSize: 16),)
                        ),
                        Row(
                          children: [
                            Text('조회 1,119'),
                            SizedBox(width: 8,),
                            Icon(Icons.favorite_outline, size: 14,),
                            SizedBox(width: 4,),
                            Text('2'),
                            SizedBox(width: 8,),
                            Icon(Icons.sms_outlined, size: 14,),
                            SizedBox(width: 4,),
                            Text('28'),
                          ],
                        ),
                        Text('카페명 표시'),
                      ],
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.all(Radius.circular(8))
                      ),
                    )
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 3,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all()
                  ),
                ),
              ],
            ),
          );
        },
      )
    ],
  );
}

Widget weeklyTOP() {
  return ListView(
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 10, top: 16, bottom: 20),
        child: Row(
          children: [
            Text('지난 한 주간의 인기글입니다.'),
            SizedBox(width: 6,),
            Icon(Icons.help, size: 14,),
          ],
        ),
      ),
      ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 200,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${index+1}', style: TextStyle(fontSize: 16),),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 280,
                          child: Text('테스트 제목 입니다. 실시간 TOP 제목 테스트 중 입니다.', style: TextStyle(fontSize: 16),)
                        ),
                        Row(
                          children: [
                            Text('조회 1,119'),
                            SizedBox(width: 8,),
                            Icon(Icons.favorite_outline, size: 14,),
                            SizedBox(width: 4,),
                            Text('2'),
                            SizedBox(width: 8,),
                            Icon(Icons.sms_outlined, size: 14,),
                            SizedBox(width: 4,),
                            Text('28'),
                          ],
                        ),
                        Text('카페명 표시'),
                      ],
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.all(Radius.circular(8))
                      ),
                    )
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 3,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all()
                  ),
                ),
              ],
            ),
          );
        },
      )
    ],
  );
}

Widget myCafePopularPosts() {
  return ListView(
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 10, top: 16, bottom: 20),
        child: Text('가입카페 중 내 활동이 많은 카페의 인기글입니다.'),
      ),
      ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 300,
                          child: Text('테스트 제목 입니다. 실시간 TOP 제목 테스트 중 입니다.', style: TextStyle(fontSize: 16),)
                        ),
                        Row(
                          children: [
                            Text('조회 1,119'),
                            SizedBox(width: 8,),
                            Icon(Icons.favorite_outline, size: 14,),
                            SizedBox(width: 4,),
                            Text('2'),
                            SizedBox(width: 8,),
                            Icon(Icons.sms_outlined, size: 14,),
                            SizedBox(width: 4,),
                            Text('28'),
                          ],
                        ),
                        Text('카페명 표시'),
                      ],
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.all(Radius.circular(8))
                      ),
                    )
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 3,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all()
                  ),
                ),
              ],
            ),
          );
        },
      )
    ],
  );
}