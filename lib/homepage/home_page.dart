import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {


    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          centerTitle: true,
          leading: Icon(Icons.account_balance_rounded),
          title: Text(
              'ASMITA COMPANY',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900
              )
          ),
          actions: <Widget>[
      
            IconButton(
                onPressed: (){
                  print('hello jee');
                }, icon: Icon(Icons.search)),
      
            IconButton(
                onPressed: (){
                  print('hello jee');
                }, icon: Icon(Icons.notifications)),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(color: Colors.black),
            tabs: [
              Tab(text: 'Overview'),
              Tab(text: 'Location'),
              Tab(text: 'Business'),
              Tab(text: 'Company'),
            ],
          ),
        ),
        body:  TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [

             Column(
               children: [
                 Text('Hello boss dhekho edhar'),
                 Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI3AAhHPdZhDYgE_f4Id3m--wNw1IstpJ9zQ&s')
               ],
             ),

            //changes here


            Column(
              children: [
                Text('Location of Our Office in Nepalgunj'),
               Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9b3duEDUw1EShNhKVximcyFpFSpRBM7Befg&s')
              ],
            ),
            Column(
              children: [
                Text('Advertise'),
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTUALZ26E-e8szMCjHUL-j4gQVSMcMDMIhoA&s')
              ],
            ),
            Column(
              children: [
                Text('Our MOTO'),
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9GZBpUfiRvOP8RtwWd9IYJY2aQ8AktlrEPw&s')
              ],
            )





            // _buildColumn('Hello boss aa overview heey', Icons.account_balance_wallet_outlined),
            // _buildColumn('Hello boss aa Coding section heey', Icons.access_alarm_sharp),
            // _buildColumn('Hello boss aa Business section heey', Icons.wallet_giftcard_outlined ),
            // _buildColumn('Hello boss aa Company section heey', Icons.computer_outlined ),
          ],
        ),
      ),
    );
  }
  Column _buildColumn(String label, IconData icon) {
    return Column(
            children: [
              Icon(
               icon,
                color: Colors.red,
              ),
              Text(label),
            ],
          );
  }
}