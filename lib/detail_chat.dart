import 'package:flutter/material.dart';

class Message {
  final String chat;
  final bool isMe;

  Message({
    required this.chat,
    required this.isMe,
  });
}

class DetailChat extends StatefulWidget {
  const DetailChat({super.key});

  @override
  State<DetailChat> createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {
// tambahkan controller untuk mengelola input teks
  TextEditingController textPesan = TextEditingController();

  final List<Message> messages = [
    Message(chat: "Halo", isMe: true),
    Message(chat: "Apa kabar?", isMe: false),
    Message(chat: "Baik, kamu?", isMe: true),
    Message(chat: "Aku juga baik", isMe: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Chat')),
      body: const Center(child: Text('Detail Chat Page')),
    );
  }
}
