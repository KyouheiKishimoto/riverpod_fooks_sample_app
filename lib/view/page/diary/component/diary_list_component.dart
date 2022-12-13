import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_fooks_sample_app/models/db/diary_local_database.dart';

Widget diaryListComponent(List<DiaryData> diaryData) {
  return ListView.builder(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: diaryData.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 4),
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.of(context).push(
                          //   UserInfoScreen.route(
                          //       userId: article[index].user.userId),
                          // );
                        },
                      ),
                      Text(diaryData[index].title),
                      const SizedBox(width: 8),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        );
      });
}
