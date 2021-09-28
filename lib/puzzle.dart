import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'mobx.dart';


class Puzzle extends StatelessWidget {
  final MobX _mobX = MobX();

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width-10;
    final h = MediaQuery.of(context).size.height-16;
    final size = (w/4) < (h/7) ? (w/4) : (h/7);
    return Material(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.all(1.0),
        child: Center(
          child: Wrap(
            children: List.generate(28, (i){
              return GestureDetector(
                onTap: () => _mobX.rotate(i),
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: SizedBox.fromSize(
                    size: Size.square(size),
                    child: Observer(
                      builder: (_) => RotatedBox(
                        quarterTurns: _mobX.list[i],
                        child: Image.asset(
                          'assets/${11+i}.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      )
    );
  }
}
