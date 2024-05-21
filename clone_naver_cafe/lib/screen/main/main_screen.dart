import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool switchValue = true;
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
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 80,
                color: Colors.greenAccent,
                child: const Center(child: Text('광고'),),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(10, 16, 10, 20),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('내 카페', style: TextStyle(fontSize: 20),),
                        Row(
                          children: [
                            const Text('최신글', style: TextStyle(fontSize: 14),),
                            Transform.scale(
                              scale: 0.7,
                              child: Switch(
                                value: switchValue,
                                onChanged: (bool value) {
                                  switchValue = value;
                                },
                              ),
                            ),
                            const Text('더보기', style: TextStyle(fontSize: 14),),
                          ],
                        )
                      ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: const BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.all(Radius.circular(24))
                                  ),
                                ),
                                const SizedBox(width: 8,),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('카폐 명', style: TextStyle(fontSize: 20),),
                                    Text('새글 12', style: TextStyle(fontSize: 12),),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 8,),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: const EdgeInsets.only(left: 8),
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) {
                                return const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('최신글 제목', style: TextStyle(fontSize: 18),),
                                    Text('4시간 전'),
                                  ],
                                );
                              },
                            ),
                            const SizedBox(height: 8,),
                            index == 3?
                            Container(
                              width: double.infinity,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              child: Center(child: Text('최신글 더보기', style: TextStyle(color: Colors.white),)),
                            )
                            : const SizedBox(),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black45,
        showUnselectedLabels: true,
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
            icon: Icon(Icons.sms),
          ),
        ],
      ),
    );
  }
}
