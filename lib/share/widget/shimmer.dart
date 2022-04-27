// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:shimmer/shimmer.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/share/UI/spacing.dart';

Widget listShimmer() => Shimmer.fromColors(
      baseColor: Colors.grey[800]!,
      highlightColor: Colors.grey[100]!,
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (_, __) => Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            children: <Widget>[
              Container(
                height: 48,
                width: 48,
                color: Colors.white,
              ),
              UISpacing.horizontal_16,
              Expanded(
                child: Column(
                  children: <Widget>[
                    UISpacing.vertical_8,
                    Container(
                      width: double.infinity,
                      height: 16,
                      color: Colors.white,
                    ),
                    UISpacing.vertical_8,
                    Container(
                      width: double.infinity,
                      height: 16,
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        itemCount: 2,
      ),
    );
