import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/provider.dart';


class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('hello jee'),
          Consumer(
            builder: (context, ref, child){
              final somejee = ref.watch(dataProvider);
              return Text(somejee);
            }
            ),
        ],
      ),
    );
  }
}