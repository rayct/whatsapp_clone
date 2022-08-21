import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.all(10.0),
      color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1420356697059647492/Nd9MEA37_400x400.jpg',
                ),
                radius: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              const Text(
                'Raymond Turner',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.grey),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
