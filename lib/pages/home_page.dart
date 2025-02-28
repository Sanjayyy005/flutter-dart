import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterapp/providers/api_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final apiState = ref.watch(apiProvider);
    return Scaffold(
      body: apiState.when(
          data: (data){
            return Text('data show');
          },
          error: (err, st){
            return Text('$err');
          },
          loading: () => Center(child: CircularProgressIndicator())
      ),
    );
  }
}

