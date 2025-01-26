import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterapp/routes/app_routes.dart';



//provider, notifier provider, future provider, async_notifier provider, stream provider
      

void main (){
  runApp(ProviderScope(child: Main()));

}
class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
   }
}
