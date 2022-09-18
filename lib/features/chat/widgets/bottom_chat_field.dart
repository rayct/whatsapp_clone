// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:whatsapp_clone/colors.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:whatsapp_clone/features/chat/controller/chat_controller.dart';
// // import 'package:flutter_sound/public/flutter_sound_recorder.dart';
// // import 'package:path_provider/path_provider.dart';
// // import 'package:permission_handler/permission_handler.dart';
// // import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
// // import 'package:flutter_sound/public/flutter_sound_recorder.dart';

// class BottomChatField extends ConsumerStatefulWidget {
//   final String recieverUserId;
//   final bool isGroupChat;
//   const BottomChatField({
//     Key? key,
//     required this.recieverUserId,
//     required this.isGroupChat,
//   }) : super(key: key);

//   @override
//   ConsumerState<BottomChatField> createState() => _BottomChatFieldState();
// }

// class _BottomChatFieldState extends ConsumerState<BottomChatField> {
//   bool isShowSendButton = false;
//   final TextEditingController _messageController = TextEditingController();
//   // FlutterSoundRecorder? _soundRecorder;
//   bool isRecorderInit = false;
//   bool isShowEmojiContainer = false;
//   bool isRecording = false;
//   FocusNode focusNode = FocusNode();

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _soundRecorder = FlutterSoundRecorder();
//   //   openAudio();
//   // }

//   void sendTextMessage() async {
//     if (isShowSendButton) {
//       ref.read(chatControllerProvider).sendTextMessage(
//             context,
//             _messageController.text.trim(),
//             widget.recieverUserId,
//             widget.isGroupChat,
//           );
//       setState(() {
//         // _messageController.text = '';
//       });
//     } else {
//       // var tempDir = await getTemporaryDirectory();
//       // var path = '${tempDir.path}/flutter_sound.aac';
//       if (!isRecorderInit) {
//         return;
//       }
//       if (isRecording) {
//         // await _soundRecorder!.stopRecorder();
//         // sendFileMessage(File(path), MessageEnum.audio);
//       } else {
//         // await _soundRecorder!.startRecorder(
//         // toFile: path,
//         // );
//       }

//       setState(() {
//         isRecording = !isRecording;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           child: TextFormField(
//             onChanged: (val) {
//               if (val.isNotEmpty) {
//                 setState(() {
//                   isShowSendButton = true;
//                 });
//               } else {
//                 setState(() {
//                   isShowSendButton = false;
//                 });
//               }
//             },
//             decoration: InputDecoration(
//               filled: true,
//               fillColor: mobileChatBoxColor,
//               prefixIcon: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                 child: SizedBox(
//                   width: 100,
//                   child: Row(
//                     children: [
//                       IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Icons.emoji_emotions,
//                           color: Colors.grey,
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Icons.gif,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               suffixIcon: SizedBox(
//                 width: 100,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     IconButton(
//                       onPressed: () {},
//                       icon: const Icon(
//                         Icons.camera_alt,
//                         color: Colors.grey,
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: const Icon(
//                         Icons.attach_file,
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               hintText: 'Type a message!',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20.0),
//                 borderSide: const BorderSide(
//                   width: 0,
//                   style: BorderStyle.none,
//                 ),
//               ),
//               contentPadding: const EdgeInsets.all(10),
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(
//             bottom: 8,
//             right: 2,
//             left: 2,
//           ),
//           child: CircleAvatar(
//             backgroundColor: const Color(0xFF128C7E),
//             radius: 25,
//             child: Icon(
//               isShowSendButton ? Icons.send : Icons.mic,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
