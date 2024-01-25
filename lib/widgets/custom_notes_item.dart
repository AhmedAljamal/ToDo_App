import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, left: 16, bottom: 24),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter tips',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16 ,),
              child: Text(
                'Build your Career with Ahmed Gad',
                style: TextStyle(
                    fontSize: 18, color: Colors.black.withOpacity(.5)),
              ),
            ),
            trailing: IconButton(
              onPressed: null,
              icon: Icon(FontAwesomeIcons.trash,
              color: Colors.black,
              size: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              'May21 , 2024',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(.4),
              ),
            ),
          )
        ],
      ),
    );
  }
}
