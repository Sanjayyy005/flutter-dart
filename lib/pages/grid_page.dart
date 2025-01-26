import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttermangsir/models/sample.dart';
import 'package:go_router/go_router.dart';


class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          context.pop();
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: GridView.builder(
          itemCount: samples.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
          ),
          itemBuilder: (context, index){
            final sample = samples[index];
            return   Card(
              child: Column(
                children: [
                  CachedNetworkImage(
                      errorWidget: (c,s,t) => Text('no-image') ,
                      imageUrl:  sample.image)
                ],
              ),
            );
          }
      ),
    );
  }
}