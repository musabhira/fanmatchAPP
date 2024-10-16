import '../database.dart';

class FavoriteClubsViewTable extends SupabaseTable<FavoriteClubsViewRow> {
  @override
  String get tableName => 'favorite_clubs_view';

  @override
  FavoriteClubsViewRow createRow(Map<String, dynamic> data) =>
      FavoriteClubsViewRow(data);
}

class FavoriteClubsViewRow extends SupabaseDataRow {
  FavoriteClubsViewRow(super.data);

  @override
  SupabaseTable get table => FavoriteClubsViewTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get userName => getField<String>('user_name');
  set userName(String? value) => setField<String>('user_name', value);

  String? get userSurname => getField<String>('user_surname');
  set userSurname(String? value) => setField<String>('user_surname', value);

  String? get clubId => getField<String>('club_id');
  set clubId(String? value) => setField<String>('club_id', value);

  String? get clubName => getField<String>('club_name');
  set clubName(String? value) => setField<String>('club_name', value);

  String? get clubIcon => getField<String>('club_icon');
  set clubIcon(String? value) => setField<String>('club_icon', value);

  DateTime? get favoriteAddedAt => getField<DateTime>('favorite_added_at');
  set favoriteAddedAt(DateTime? value) =>
      setField<DateTime>('favorite_added_at', value);
}
