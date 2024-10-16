import '../database.dart';

class SportsTable extends SupabaseTable<SportsRow> {
  @override
  String get tableName => 'sports';

  @override
  SportsRow createRow(Map<String, dynamic> data) => SportsRow(data);
}

class SportsRow extends SupabaseDataRow {
  SportsRow(super.data);

  @override
  SupabaseTable get table => SportsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get item => getField<String>('item');
  set item(String? value) => setField<String>('item', value);

  dynamic get league => getField<dynamic>('league');
  set league(dynamic value) => setField<dynamic>('league', value);
}
