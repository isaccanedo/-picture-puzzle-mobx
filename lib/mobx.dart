import 'package:mobx/mobx.dart';
import 'dart:math';


part 'mobx.g.dart';

class MobX = _MobX with _$MobX;

abstract class _MobX with Store{
  @observable
  List<int> list = List.generate(28, (_) => Random().nextInt(4));

  @action
  rotate(int i) {
    list = List.from(list);
    if(list[i]==3) list[i]=0;
    else list[i]++;
  }
}