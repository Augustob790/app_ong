import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class GetViewCP<C, P> extends GetView<C> {
  const GetViewCP({Key? key}) : super(key: key);

  P get presenter => GetInstance().find<P>(tag: tag)!;
}
