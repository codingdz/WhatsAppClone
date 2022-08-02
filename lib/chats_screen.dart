import 'package:flutter/material.dart';
import '../chats_model.dart';
class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(

        itemCount: dummyData.length,
      itemBuilder: (BuildContext context, int i) => Column(
            children: [
              Divider(
                height: 10.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(dummyData[i].avatarUrl),
                ),
                title:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(dummyData[i].name),
                    Text(dummyData[i].time),

                  ],
                ),
                 subtitle: Container(
                   padding: EdgeInsets.only(top: 5),
                   child: Text(dummyData[i].message),
                 )
                 ,
              ),
            ],
          )


    );
  }
}
