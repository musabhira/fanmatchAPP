import '../database.dart';

class ClubFavTable extends SupabaseTable<ClubFavRow> {
  @override
  String get tableName => 'club_fav';

  @override
  ClubFavRow createRow(Map<String, dynamic> data) => ClubFavRow(data);
}

class ClubFavRow extends SupabaseDataRow {
  ClubFavRow(super.data);

  @override
  SupabaseTable get table => ClubFavTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get clubId => getField<String>('club_id');
  set clubId(String? value) => setField<String>('club_id', value);
}
