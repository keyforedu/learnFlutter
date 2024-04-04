import 'package:flutter/material.dart';

class JobVacancyItem extends StatelessWidget {
  const JobVacancyItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.05),
                blurRadius: .5,
                spreadRadius: .5,
                offset: const Offset(1, 1))
          ]),
      child: const Row(
        children: [
          Text(
            "Health",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
