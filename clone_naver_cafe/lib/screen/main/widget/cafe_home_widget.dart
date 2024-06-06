import 'package:flutter/material.dart';

class CafeHomeWidget extends StatelessWidget {
  const CafeHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool switchValue = true;
    return ListView(
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
              ),
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
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(18))
                      ),
                    ),
                    const SizedBox(width: 8,),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('카페 명', style: TextStyle(fontSize: 20),),
                        Text('새글 12', style: TextStyle(fontSize: 12),),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8,),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
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
          height: 14,
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
                shrinkWrap: true,
                itemCount: 4,
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
        const SizedBox(height: 2,),
        Container(
          width: double.infinity,
          height: 14,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
          ),
        ),
        Container(
          width: double.infinity,
          height: 60,
          color: Colors.greenAccent,
          child: const Center(child: Text('광고'),),
        ),
        Container(
          width: double.infinity,
          height: 14,
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
                shrinkWrap: true,
                itemCount: 4,
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
        const SizedBox(height: 10,),
        Container(
          width: double.infinity,
          height: 14,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('주제별 인기 카페', style: TextStyle(fontSize: 18),),
              const SizedBox(height: 8,),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ListView.builder(
                  itemCount: 25,
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
                          child: const Text('가족/육아', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
                        ),
                        const SizedBox(width: 6,),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 4,),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 20,
                separatorBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 8),
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${index+1}'),
                          const SizedBox(width: 8,),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.all(Radius.circular(18))
                            ),
                          ),
                          const SizedBox(width: 8,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('카페명', style: TextStyle(fontSize: 16),),
                              SizedBox(width: 300, child: Text('영화/연극/공연등 티켓 교환 더 즐겁게 디즈니 플러스와도 함께 해요', style: TextStyle(fontSize: 12),)),
                              SizedBox(height: 4,),
                              Row(
                                children: [
                                  Icon(Icons.person, size: 14,),
                                  Text('32,000', style: TextStyle(fontSize: 12),),
                                  SizedBox(width: 4,),
                                  Text('가지 4단계', style: TextStyle(fontSize: 12),),
                                  Icon(Icons.arrow_circle_up, size: 14,),
                                  SizedBox(width: 4,),
                                  Text('2,700', style: TextStyle(fontSize: 12),),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 30),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: const Center(child: Text('더보기', style: TextStyle(color: Colors.white),)),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(Icons.back_hand, size: 18,),
                              ),
                              const SizedBox(width: 8,),
                              const Text('네이버 대표 카페', style: TextStyle(fontSize: 18),),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(Icons.back_hand, size: 18,),
                              ),
                              const SizedBox(width: 8,),
                              const Text('네이버 대표 카페', style: TextStyle(fontSize: 18),),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40,),
            ],
          ),
        ),
      ],
    );
  }
}
