// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$MobX on _MobX, Store {
  final _$listAtom = Atom(name: '_MobX.list');

  @override
  List<int> get list {
    _$listAtom.context.enforceReadPolicy(_$listAtom);
    _$listAtom.reportObserved();
    return super.list;
  }

  @override
  set list(List<int> value) {
    _$listAtom.context.conditionallyRunInAction(() {
      super.list = value;
      _$listAtom.reportChanged();
    }, _$listAtom, name: '${_$listAtom.name}_set');
  }

  final _$_MobXActionController = ActionController(name: '_MobX');

  @override
  dynamic rotate(int i) {
    final _$actionInfo = _$_MobXActionController.startAction();
    try {
      return super.rotate(i);
    } finally {
      _$_MobXActionController.endAction(_$actionInfo);
    }
  }
}
