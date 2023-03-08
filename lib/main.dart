import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}
class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List quotes = ['“We cannot solve problems with the kind of thinking we employed when we came up with them.” — Albert Einstein', '“Learn as if you will live forever, live like you will die tomorrow.” — Mahatma Gandhi',
  '“Stay away from those people who try to disparage your ambitions. Small minds will always do that, but great minds will give you a feeling that you can become great too.” — Mark Twain'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: quotes.map((q) {
        return Text(q);}).toList(),
      ),
    );
  }
}
