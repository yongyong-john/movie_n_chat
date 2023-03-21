import 'package:flutter/material.dart';
import 'package:movie_n_chat/custom/button_card.dart';
import 'package:movie_n_chat/model/chat_model.dart';
import 'package:movie_n_chat/pages/chat_page.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({Key? key}) : super(key: key);

  @override
  _ChatListPageState createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  late ChatModel sourceChat;
  List<ChatModel> chatModels = [
    ChatModel(
      name: "Dev Stack",
      isGroup: false,
      currentMessage: "Hi Everyone",
      time: "4:00",
      icon: "person.svg",
      id: 1,
    ),
    ChatModel(
      name: "Kishor",
      isGroup: false,
      currentMessage: "Hi Kishor",
      time: "13:00",
      icon: "person.svg",
      id: 2,
    ),
    ChatModel(
      name: "Collins",
      isGroup: false,
      currentMessage: "Hi Dev Stack",
      time: "8:00",
      icon: "person.svg",
      id: 3,
    ),
    ChatModel(
      name: "Balram Rathore",
      isGroup: false,
      currentMessage: "Hi Dev Stack",
      time: "2:00",
      icon: "person.svg",
      id: 4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chatModels.length,
          itemBuilder: (context, index) => InkWell(
                onTap: () {
                  // sourceChat = chatModels.removeAt(index);
                  Navigator.push(context, MaterialPageRoute(builder: (builder) => const ChatPage()));
                },
                child: ButtonCard(
                  name: chatModels[index].name,
                  icon: Icons.person,
                ),
              )),
    );
  }
}
