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
          child: ListView(
            children: [
              Container(
                width: double.infinity,
                height: 80,
                color: Colors.greenAccent,
                child: const Center(child: Text('광고'),),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 16, 10, 0),
                child: Row(
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
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                    ],
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: const Center(child: Text('최신글 더보기', style: TextStyle(color: Colors.white),)),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('달서구 이웃 소식', style: TextStyle(fontSize: 18),),
                            SizedBox(width: 8,),
                            Icon(Icons.my_location),
                          ],
                        ),
                        Text('더보기', style: TextStyle(fontSize: 15),),
                      ],
                    ),
                    const SizedBox(height: 8,),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('이웃', style: TextStyle(fontSize: 16, color: Colors.green),),
                                SizedBox(width: 4,),
                                Text('시를 좋아하시거나 사람들과 함께 시에 관해 이야...', style: TextStyle(fontSize: 16),),
                              ],
                            ),
                            Text('서소문동', style: TextStyle(fontSize: 14),),
                            const SizedBox(height: 8,),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 2,),
              Container(
                width: double.infinity,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.local_fire_department),
                            Text('인기글', style: TextStyle(fontSize: 18),),
                            SizedBox(width: 8,),
                            Text('오후 7시 기준', style: TextStyle(fontSize: 16),),
                          ],
                        ),
                        Text('더보기', style: TextStyle(fontSize: 15),),
                      ],
                    ),
                    const SizedBox(height: 8,),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('서소문동', style: TextStyle(fontSize: 16),),
                            Row(
                              children: [
                                Text('한달만에 여행 (가벼운 밥상차려 놓고)', style: TextStyle(fontSize: 14),),
                                SizedBox(width: 4,),
                                Icon(Icons.favorite_outline, size: 14,),
                                Text('3', style: TextStyle(fontSize: 14,),),
                                SizedBox(width: 4,),
                                Icon(Icons.sms_outlined, size: 14,),
                                Text('3', style: TextStyle(fontSize: 14,),),
                              ],
                            ),
                            const SizedBox(height: 8,),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 60,
                color: Colors.greenAccent,
                child: const Center(child: Text('광고'),),
              ),
              const SizedBox(height: 10,),
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
