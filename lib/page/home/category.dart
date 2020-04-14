import 'dart:async';

import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CategoryState();
  }
}

class Goods {
  String category;
  List<String> goods;
}

class _CategoryState extends State<Category> {
  int currIndex = 0;
  List<String> categoryList = ['水产', '肉类', '干货', '蔬菜'];
  List<String> get goodsList {
    switch (currIndex) {
      case 0:
        return ['鲍鱼','小黄鱼','蛤蜊','青虾','小龙虾','花甲','牛蛙','青蛙','泥鳅','黄鳝',];
      case 1:
        return ['猪肉','牛肉','羊肉','鸡肉','鸭肉','狗肉','火鸡腿','鱼肉','兔肉','蛇肉',];
      case 2:
        return ['香菇','红枣','枸杞','木耳','腐竹','豆皮',];
      case 3:
        return ['青瓜','丝瓜','冬瓜','油麦菜','白菜','西红柿','香菜','春笋','茄子','豆角',];
      default: 
        return [];
    }
  }
  int recordTouchBottom = 0;
  Timer timer;
  ScrollController _controller = ScrollController();
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        this.setState(() {
          recordTouchBottom = ++recordTouchBottom;
        });
        if (recordTouchBottom == 2) {
          if(currIndex == categoryList.length - 1) {
            this.setState(() {currIndex = 0;recordTouchBottom = 0;});
          } else {
            this.setState((){
              currIndex = ++currIndex;
              recordTouchBottom = 0;
            });
          }
        }
        if (timer == null) {
          timer = Timer(Duration(seconds:3), () {
            timer.cancel();
            this.setState(() { recordTouchBottom = 0; });
          });
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: <Widget>[
        Container(
            width: 80,
            child: ListView.builder(
                itemCount: categoryList.length,
                itemBuilder: (BuildContext context, int index) {
                  return FlatButton(
                    onPressed: () {
                      this.setState(() => currIndex = index);
                    },
                    color: currIndex == index
                        ? Colors.white
                        : Colors.transparent,
                    shape: RoundedRectangleBorder(),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    child: Text(categoryList[index]),
                    padding: EdgeInsets.all(15),
                  );
                })),
        Expanded(
            child: Container(
                color: Colors.white,
                child: ListView.builder(
                    controller: _controller,
                    itemCount: goodsList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 100,
                        child: Text(goodsList[index]),
                      );
                    })))
      ]),
    );
  }
}
