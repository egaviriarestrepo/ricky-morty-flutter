library feature.episode;

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/feature/episode/model/episode_filter_model.dart';
import 'package:rick_and_morty/feature/episode/model/episode_model.dart';
import 'package:rick_and_morty/feature/episode/state/episode_sealed_state.dart';
import 'package:rick_and_morty/share/UI/padding.dart';
import 'package:rick_and_morty/share/UI/spacing.dart';
import 'package:rick_and_morty/share/constants/colors.dart';
import 'package:rick_and_morty/share/http/api_provider.dart';
import 'package:rick_and_morty/share/http/api_response.dart';
import 'package:rick_and_morty/share/http/app_exception.dart';
import 'package:rick_and_morty/share/model/info_pagination.dart';
import 'package:rick_and_morty/share/model/wraper_responset.dart';
import 'package:rick_and_morty/share/util/util.dart';
import 'package:rick_and_morty/share/widget/shimmer.dart';

part './provider/epidode_provider.dart';
part './state/episode_notifier_state.dart';
part './widget/epidodes_page.dart';
part './repository/episode_repository.dart';
