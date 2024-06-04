import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
        decoration: BoxDecoration(
          color: const Color(0xffffcc80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter tips',
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text('bulid your carerr with abdallah tolba ',
                    style: TextStyle(color: Colors.black38, fontSize: 18)),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete),
                color: Colors.black,
                iconSize: 24,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 30),
              child:
                  Text('21May,2024', style: TextStyle(color: Colors.black38)),
            )
          ],
        ),
      );
  }
}