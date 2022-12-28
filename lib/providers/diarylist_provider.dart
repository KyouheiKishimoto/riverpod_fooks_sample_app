/// 無限スクロール
// final diaryListData = StateProvider<List<DiaryData>?>((ref) => []);
//
// // final diaryListProvider =
// //     FutureProvider.autoDispose<List<DiaryData>?>((ref) async {
// //   final repository = DiaryRepository(diaryDao: ref.read(diaryDaoProvider));
// //   var dld = ref.read(diaryListData);
// //   dld = await repository.getDiaryData(1, 2);
// //   return dld;
// // });
//
// final itemsProvider = StateProvider<List<String>>((ref) => []);
// final itemController = Provider<ItemController>((ref) => ItemController(ref));
//
// class ItemController extends StateNotifier<List<String>> {
//   final Ref _ref;
//   ItemController(this._ref) : super([]);
//   bool _isLoading = false;
//   bool _hitTheBottom = false;
//
//   List<String> get _items => _ref.read(itemsProvider);
//   int get listLength => (_items?.length ?? 0) + (_hitTheBottom ? 0 : 1);
//
//   Future<void> loadItemsIfNeeded() async {
//     if (_isLoading || _hitTheBottom) {
//       return;
//     }
//     _isLoading = true;
//     await Future.delayed(const Duration(seconds: 1));
//
//     state = [
//       ..._items,
//       'Item ${_items?.length ?? 0}',
//       'Item ${(_items?.length ?? 0) + 1}'
//     ];
//     _isLoading = false;
//     if (10 <= _items.length) {
//       _hitTheBottom = true;
//     }
//   }
// }
