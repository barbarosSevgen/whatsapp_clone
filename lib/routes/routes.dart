import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/home/home_view.dart';

abstract class Approutes{
  static const homeVeiw = '/homeView';

  static Map<String,WidgetBuilder> get appRoutes{
    return{
      homeVeiw:(context) => const HomeView(),
    };
  }
}