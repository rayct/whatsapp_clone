import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';
// import 'package:whatsapp_clone/colors.dart';
// import 'package:whatsapp_clone/features/chat/screens/mobile_chat_screen.dart';
import 'package:whatsapp_clone/widgets/my_message_card.dart';
import 'package:whatsapp_clone/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
        return SenderMessageCard(
          message: messages[index]['text'].toString(),
          date: messages[index]['time'].toString(),
        );
      },
    );
  }
}





// class ContactsList extends StatelessWidget {
//   const ContactsList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 10.0),
//       child: ListView.builder(
//         shrinkWrap: true,
//         itemCount: info.length,
//         itemBuilder: (context, index) {
//           return Column(
//             children: [
//               InkWell(
//                 onTap: () {
//                   Navigator.pushNamed(
//                     context,
//                     MobileChatScreen.routeName,
//                     arguments: {
//                       // 'name': groupData.name,
//                       // 'uid': groupData.groupId,
//                       'isGroupChat': true,
//                       // 'profilePic': groupData.groupPic,
//                     },
//                   );
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.only(bottom: 8.0),
//                   child: ListTile(
//                     title: Text(
//                       info[index]['name'].toString(),
//                       style: const TextStyle(
//                         fontSize: 18,
//                       ),
//                     ),
//                     subtitle: Padding(
//                       padding: const EdgeInsets.only(top: 6.0),
//                       child: Text(
//                         info[index]['message'].toString(),
//                         style: const TextStyle(fontSize: 15),
//                       ),
//                     ),
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                         info[index]['profilePic'].toString(),
//                       ),
//                       radius: 30,
//                     ),
//                     trailing: Text(
//                       info[index]['time'].toString(),
//                       style: const TextStyle(
//                         color: Colors.grey,
//                         fontSize: 13,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const Divider(color: dividerColor, indent: 85),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
