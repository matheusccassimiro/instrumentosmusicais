import 'package:flutter/material.dart';
import '../models/group.dart';
import '../models/group_db.dart';

class GroupTile extends StatelessWidget {
  Group group;
  Function function;
  GroupTile({super.key, required this.group, required this.function});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: 350,
      decoration: BoxDecoration(
        color: Color(0xFFFBE8DA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: GestureDetector(
        onTap: () => function(),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                group.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFF1A0B1E)
                ),
              ),

              //shoe pic
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(group.imagePath,
                  width: 230,),

              ),


            ],
          ),
        ),
      ),
    );
  }
}
