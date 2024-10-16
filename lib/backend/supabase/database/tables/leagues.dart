import '../database.dart';

class LeaguesTable extends SupabaseTable<LeaguesRow> {
  @override
  String get tableName => 'leagues';

  @override
  LeaguesRow createRow(Map<String, dynamic> data) => LeaguesRow(data);
}

class LeaguesRow extends SupabaseDataRow {
  LeaguesRow(super.data);

  @override
  SupabaseTable get table => LeaguesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get leagueName => getField<String>('league_name')!;
  set leagueName(String value) => setField<String>('league_name', value);

  String get leagueIcon => getField<String>('league_icon')!;
  set leagueIcon(String value) => setField<String>('league_icon', value);
}
