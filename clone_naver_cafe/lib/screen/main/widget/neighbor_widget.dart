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
  return Container(
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
      ],
    ),
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