import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/category/category.dart';
import '../../domain/entities/live_channel/live_channel.dart';
import '../../domain/usecases/live_channels/get_live_channels.dart';
import '../../shared/types/category_type.dart';
import '../../shared/types/no_parameters.dart';
import 'view_state.dart';

class LiveStates extends ViewState {
  late final _getChannels = locator.get<GetLiveChannels>();
  @override
  late FutureProvider<List<Category>> categories = FutureProvider(
    (_) async => await super.getCategories(CategoryType.liveChannels),
  );

  @override
  late FutureProvider<List<LiveChannel>> items = FutureProvider(
    (_) async => await _getChannels(NoParameters()),
  );
}
