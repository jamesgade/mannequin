import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'delete_product_confirm_dialog_model.dart';
export 'delete_product_confirm_dialog_model.dart';

class DeleteProductConfirmDialogWidget extends StatefulWidget {
  const DeleteProductConfirmDialogWidget({
    Key? key,
    required this.productDataRef,
    required this.shouldNavigateBack,
    required this.imageURLToDelete,
  }) : super(key: key);

  final DocumentReference? productDataRef;
  final bool? shouldNavigateBack;
  final String? imageURLToDelete;

  @override
  _DeleteProductConfirmDialogWidgetState createState() =>
      _DeleteProductConfirmDialogWidgetState();
}

class _DeleteProductConfirmDialogWidgetState
    extends State<DeleteProductConfirmDialogWidget> {
  late DeleteProductConfirmDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteProductConfirmDialogModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 150.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Do you want to delete this product?',
            style: FlutterFlowTheme.of(context).bodyLarge,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'Cancel',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondary,
                    textStyle: FlutterFlowTheme.of(context).bodyLarge,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    if (widget.shouldNavigateBack == true) {
                      await action_blocks.deleteProduct(
                        context,
                        productReference: widget.productDataRef,
                        imageURL: widget.imageURLToDelete,
                      );
                      Navigator.pop(context);
                      context.safePop();
                    } else {
                      await action_blocks.deleteProduct(
                        context,
                        productReference: widget.productDataRef,
                        imageURL: widget.imageURLToDelete,
                      );
                      Navigator.pop(context);
                    }
                  },
                  text: 'Delete',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
