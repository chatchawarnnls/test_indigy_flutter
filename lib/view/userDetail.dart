import 'package:flutter/material.dart';



class UserDetailScreen extends StatelessWidget {
  final dynamic data;
  const UserDetailScreen(this.data, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1c232d),
        title: Text('ข้อมูลผู้ติดต่อ'),
        centerTitle: true,
      ),body:SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Center(
             child: Column(
               children: [
                 CircleAvatar(
                   backgroundImage: NetworkImage('${data.picture.medium}'),
                   minRadius: 40,
                   maxRadius: 70,
                 ),
                 Container(
                   margin: EdgeInsets.only(top: 15,bottom: 25),
                   child: Text('${data.name.first}\t${data.name.last}',style: TextStyle(fontSize: 20),),
                 )
               ],
             ),
           ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('เบอร์โทรศัพท์ \t${data.phone}',style: TextStyle(fontSize: 16),),
                  Text('อีเมล \t${data.email}',style: TextStyle(fontSize: 16),)
                ],
              ),
            )
          ],
        ),
      ),
    ) ,
    );
  }
}
