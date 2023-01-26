import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/vigis.jpg'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('User Name'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Female , 17 Jul 1998'),
                      ],
                    ),
                  ],
                ),
              ),
              const InfoRow(
                title: 'first name',
                hint: 'Your first name ',
              ),
              const SizedBox(
                height: 8,
              ),
              const InfoRow(
                title: 'first last',
                hint: 'Your first last ',
              ),
              const SizedBox(
                height: 8,
              ),
              const InfoRow(
                title: 'Emai;',
                hint: 'Your Email ',
              ),
              const SizedBox(
                height: 8,
              ),
              const InfoRow(
                title: 'gender',
                hint: 'Your gender ',
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String title, hint;
  const InfoRow({
    Key? key,
    required this.title,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 350,
            child: TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                label: Text(hint),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
