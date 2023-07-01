import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'trending_model.dart';
export 'trending_model.dart';

class TrendingWidget extends StatefulWidget {
  const TrendingWidget({Key? key}) : super(key: key);

  @override
  _TrendingWidgetState createState() => _TrendingWidgetState();
}

class _TrendingWidgetState extends State<TrendingWidget> {
  late TrendingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrendingModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 56.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://cdn.dribbble.com/users/1419100/screenshots/6337844/image.png?resize=400x0',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      badges.Badge(
                        badgeContent: Text(
                          '0',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).secondary,
                              ),
                        ),
                        showBadge: true,
                        shape: badges.BadgeShape.circle,
                        badgeColor: FlutterFlowTheme.of(context).error,
                        elevation: 1.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(7.0, 7.0, 7.0, 7.0),
                        position: badges.BadgePosition.topEnd(),
                        animationType: badges.BadgeAnimationType.scale,
                        toAnimate: true,
                        child: FaIcon(
                          FontAwesomeIcons.solidBell,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 26.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
