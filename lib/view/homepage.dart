
import 'package:flutter/material.dart';

import '../global.dart' as global;
import '../controller/userInfo_api.dart';
import '../view/userDetail.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  GetUserInfo getUserInfo = GetUserInfo();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserInfo.getUserInfoAPI();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1c232d),
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
         child: Container(
           child: StreamBuilder(
             stream: global.userInfoStream.stream,
             builder: (context,AsyncSnapshot snapshot){
               if(snapshot.data == null){
                 return Center(
                   child: CircularProgressIndicator()
                 );
               }else{
                 return ListView.builder(
                     shrinkWrap: true,
                     itemCount:snapshot.data.results.length ?? 0  ,
                     itemBuilder: (context,index){
                       var data = snapshot.data.results[index];
                       return Card(
                         elevation: 0,
                         child: ListTile(
                           leading: CircleAvatar(
                               backgroundImage:NetworkImage('${data.picture.medium}'),
                             minRadius: 10,
                             maxRadius: 20,
                           ),
                           title: Text('${data.name.first}\t${data.name.last}'),
                           subtitle: Text('${data.phone}\n${data.email}',overflow: TextOverflow.ellipsis,),
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetailScreen(data)));
                           },
                         ),
                       );
                     });
               }
             },
           ),
         ),
      ),
    );
  }
}
