import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'inscription_page_widget.dart' show InscriptionPageWidget;
import 'package:flutter/material.dart';

class InscriptionPageModel extends FlutterFlowModel<InscriptionPageWidget> {
  ///  Local state fields for this page.

  String? selectedLeagueId;

  String? selectedClub;

  String? selctedSport;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Connexionbutton widget.
  List<ClubFavRow>? result;
  // Stores action output result for [Backend Call - Update Row(s)] action in Connexionbutton widget.
  List<ClubFavRow>? results;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
