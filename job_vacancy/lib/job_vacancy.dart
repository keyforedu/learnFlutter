import 'package:flutter/material.dart';
import 'package:job_vacancy/job_vacancy_item.dart';

class JobVacancy extends StatefulWidget {
  const JobVacancy({Key? key}) : super(key: key);

  @override
  State<JobVacancy> createState() {
    return _JobVacancyState();
  }
}

class _JobVacancyState extends State<JobVacancy> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              pinned: true,
              title: getAppBar(),
            ),
            SliverToBoxAdapter(
              child: getSearchBox(),
            ),
            SliverToBoxAdapter(
              child: getCategories(),
            ),
          ],
        ),
      ),
    );
  }

  getAppBar() {
    return const Row(
      children: [
        Text(
          "Job Vacancy",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24),
        )
      ],
    );
  }

  getSearchBox() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              padding: const EdgeInsets.only(bottom: 3),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.05),
                        spreadRadius: .5,
                        blurRadius: .5,
                        offset: const Offset(0, 0))
                  ]),
              child: const TextField(
                decoration: InputDecoration(
                    prefix: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 27,
                    ),
                    border: InputBorder.none,
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  getCategories() {
    return const SingleChildScrollView(
      padding: EdgeInsets.only(left: 15, top: 10),
      child: Row(
        List.generate(job.length, (index) => JobVacancyItem()),
      ),
    );
  }
}
