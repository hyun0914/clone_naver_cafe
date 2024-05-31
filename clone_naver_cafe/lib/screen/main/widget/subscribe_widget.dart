import 'package:flutter/material.dart';

class SubscribeWidget extends StatelessWidget {
  const SubscribeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text('가입 카페에서 관심있는\n키워드, 멤버, 게시판을 구독해보세요!\n구독한 글만 편리하게 확인할 수 있어요.'),
        Container(
          width: double.infinity,
          height: 10,
          margin: const EdgeInsets.only(top: 30, bottom: 30),
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
          ),
        ),
        Container(
          height: 480,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(16))
                ),
                child: Column(
                  children: [
                    Container(
                      width: 360,
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                margin: EdgeInsets.only(right: 8),
                                decoration: const BoxDecoration(
                                  color: Colors.lightGreen,
                                  borderRadius: BorderRadius.all(Radius.circular(50))
                                ),
                              ),
                              const Column(
                                children: [
                                  Text('카페명 >'),
                                  Text('좋아요 TOP')
                                ],
                              )
                            ],
                          ),
                          const Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                    Container(
                      width: 360,
                      height: 320,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${index+1}', style: const TextStyle(fontSize: 18),),
                                    const SizedBox(width: 16,),
                                    const Column(
                                      children: [
                                        Text('5월 마지막 일정'),
                                        Row(
                                          children: [
                                            Text('닉네임'),
                                            SizedBox(width: 8,),
                                            Icon(Icons.favorite_outline, size: 14,),
                                            Text('5'),
                                            SizedBox(width: 8,),
                                            Icon(Icons.chat_bubble_outline, size: 14,),
                                            Text('5'),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                index == 2?
                                const SizedBox()
                                : Container(
                                  width: double.infinity,
                                  height: 1,
                                  margin: const EdgeInsets.only(top: 20, bottom: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.restart_alt, size: 20,),
                          Text('좋아요TOP 더보기'),
                          SizedBox(width: 4,),
                          Text('1 / 5'),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
