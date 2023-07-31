import 'package:flutter/material.dart';
import './questions_screen.dart';


class QuizzScreen extends StatelessWidget {
  const QuizzScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quizz Flutter'),),
      body: Center(
        child: Container(
          height: 390,
          width: 390,
          decoration: const BoxDecoration(
              color: Colors.orange,
              boxShadow: [
                BoxShadow(color: Colors.grey, offset: Offset(4, 4), blurRadius: 5),
              ]
          ),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width * 0.9,
                margin: const EdgeInsets.all(8.0),
                child: Image.network('https://scontent.fsgn8-2.fna.fbcdn.net/v/t1.6435-9/93098183_122938272691120_8263948137601695744_n.jpg?_nc_cat=100&cb=99be929b-59f725be&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=WtKUozyaQKQAX8L5pGW&_nc_ht=scontent.fsgn8-2.fna&oh=00_AfC2IYM3qFe9LGNN9H7DWXp-snYBLq0mmtg-JxAXMTokKw&oe=64EE8795', fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return const QuestionsScreen();
                    }));
                  },
                  child: const Text('Nhấn vào đây',
                  style: TextStyle(color: Colors.white),),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }

}
