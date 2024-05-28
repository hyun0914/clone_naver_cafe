import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NeighborWidget extends StatefulWidget {
  const NeighborWidget({super.key});

  @override
  State<NeighborWidget> createState() => _NeighborWidgetState();
}

class _NeighborWidgetState extends State<NeighborWidget> with TickerProviderStateMixin {
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
            Text('이웃 소식', style: TextStyle(fontSize: 18),),
            Text('중고거래', style: TextStyle(fontSize: 18),),
            Text('인기 동네카페', style: TextStyle(fontSize: 18),),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              neighborhoodNews(),
              usedTrade(),
              popularNeighborhoodCafe(),
            ]
          ),
        ),
      ],
    );
  }
}

Widget neighborhoodNews() {
  return ListView(
    children: [
      Container(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('17.4° 구름많음'),
                  Row(
                    children: [
                      Text('미세 ', style: TextStyle(color: Colors.white),),
                      Text('좋음', style: TextStyle(color: Colors.blue),),
                      Text(' · ', style: TextStyle(color: Colors.white),),
                      Text('초미세 ', style: TextStyle(color: Colors.white),),
                      Text('좋음', style: TextStyle(color: Colors.blue),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Text('전체', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
                      ),
                      const SizedBox(width: 6,),
                    ],
                  );
                },
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 200,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                if(index == 1) {
                  return Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('지역카페 인기글', style: TextStyle(fontSize: 16),),
                            Text('모두보기', style: TextStyle(fontSize: 14),),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('파인데이 페스티벌 주자창 입구 나눔합니다.', style: TextStyle(fontSize: 17),),
                                        Row(
                                          children: [
                                            Text('종로서대문하이베르힐링', style: TextStyle(fontSize: 14),),
                                            Text('> 자유게시판', style: TextStyle(fontSize: 14),),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: const BoxDecoration(
                                        color: Colors.yellow,
                                        borderRadius: BorderRadius.all(Radius.circular(6))
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                                  child: Container(
                                    width: double.infinity,
                                    height: 1,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }
                        )
                      ],
                    ),
                  );
                }
                if(index == 5) {
                  return Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('내 주변에서 중고거래하기', style: TextStyle(fontSize: 16),),
                                Text('모두보기', style: TextStyle(fontSize: 14),),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Container(
                              height: 280,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 20,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    width: 160,
                                    margin: EdgeInsets.only(right: 10),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 160,
                                          height: 160,
                                          decoration: const BoxDecoration(
                                            color: Colors.lightGreen,
                                            borderRadius: BorderRadius.all(Radius.circular(8))
                                          ),
                                        ),
                                        const SizedBox(height: 8,),
                                        const Text('현대백화점 상품권 기프트 카드 30만원권', style: TextStyle(fontSize: 16),),
                                        const Row(
                                          children: [
                                            Text('250,000', style: TextStyle(fontSize: 16),),
                                            Text('원', style: TextStyle(fontSize: 16),),
                                          ],
                                        ),
                                        const SizedBox(height: 6,),
                                        Row(
                                          children: [
                                            Container(
                                              width: 36,
                                              height: 20,
                                              padding: EdgeInsets.fromLTRB(4, 2, 4, 2),
                                              decoration: const BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius: BorderRadius.all(Radius.circular(6)),
                                              ),
                                              child: Center(child: Text('카페')),
                                            ),
                                            const SizedBox(width: 6,),
                                            Text('을지로 6가')
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  );
                }
                return Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('동네생활정보', style: TextStyle(fontSize: 13),),
                            Icon(Icons.more_horiz, size: 20,)
                          ],
                        ),
                      ),
                      const SizedBox(height: 4,),
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(Radius.circular(50))
                              ),
                            ),
                            const SizedBox(width: 6,),
                            const Text('닉네임', style: TextStyle(fontSize: 16),),
                            const SizedBox(width: 6,),
                            const Text('12시간 전', style: TextStyle(fontSize: 14),),
                            const SizedBox(width: 6,),
                            const Icon(Icons.location_on, size: 16,),
                            const Text('충무로 2가', style: TextStyle(fontSize: 14),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4,),
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text('내용이 있습니다. 테스트 중 입니다.')
                      ),
                      const SizedBox(height: 4,),
                      Container(
                        width: double.infinity,
                        height: 200,
                        color: Colors.yellow,
                        child: const Text('이미지', style: TextStyle(fontSize: 16),),
                      ),
                      const SizedBox(height: 6,),
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.thumb_up_alt_outlined, size: 14,),
                                SizedBox(width: 4,),
                                Text('1'),
                                SizedBox(width: 10,),
                                Icon(Icons.thumb_down_alt_outlined, size: 14,),
                              ],
                            ),
                            Icon(Icons.sms_outlined, size: 14,),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8,),
                      Container(
                        width: double.infinity,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    ],
  );
}

Widget usedTrade() {
  return Column(
    children: [

    ],
  );
}

Widget popularNeighborhoodCafe() {
  return Column(
    children: [

    ],
  );
}