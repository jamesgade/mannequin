import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddProductPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for productNameTextField widget.
  TextEditingController? productNameTextFieldController;
  String? Function(BuildContext, String?)?
      productNameTextFieldControllerValidator;
  String? _productNameTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name cannot be empty';
    }

    if (val.length < 3) {
      return 'Minimum 3 characters required';
    }

    return null;
  }

  // State field(s) for productDescriptionTextField widget.
  TextEditingController? productDescriptionTextFieldController;
  String? Function(BuildContext, String?)?
      productDescriptionTextFieldControllerValidator;
  String? _productDescriptionTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Description cannot be  empty';
    }

    if (val.length < 10) {
      return 'Minimum 10 characters required';
    }
    if (val.length > 250) {
      return 'Maximum 250 characters allowed';
    }

    return null;
  }

  // State field(s) for SizeDropDown widget.
  String? sizeDropDownValue;
  FormFieldController<String>? sizeDropDownValueController;
  // State field(s) for GenderDropDown widget.
  String? genderDropDownValue;
  FormFieldController<String>? genderDropDownValueController;
  // State field(s) for CategoryDropDown widget.
  String? categoryDropDownValue;
  FormFieldController<String>? categoryDropDownValueController;
  // State field(s) for purchaseTypeChoiceChips widget.
  String? purchaseTypeChoiceChipsValue;
  FormFieldController<List<String>>? purchaseTypeChoiceChipsValueController;
  // State field(s) for AmazonTextField widget.
  TextEditingController? amazonTextFieldController;
  String? Function(BuildContext, String?)? amazonTextFieldControllerValidator;
  // State field(s) for WhatsappTextField widget.
  TextEditingController? whatsappTextFieldController;
  String? Function(BuildContext, String?)? whatsappTextFieldControllerValidator;
  // State field(s) for MyntraTextField widget.
  TextEditingController? myntraTextFieldController;
  String? Function(BuildContext, String?)? myntraTextFieldControllerValidator;
  // State field(s) for AjioTextField widget.
  TextEditingController? ajioTextFieldController;
  String? Function(BuildContext, String?)? ajioTextFieldControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ProductsRecord? addProductOutput;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    productNameTextFieldControllerValidator =
        _productNameTextFieldControllerValidator;
    productDescriptionTextFieldControllerValidator =
        _productDescriptionTextFieldControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    productNameTextFieldController?.dispose();
    productDescriptionTextFieldController?.dispose();
    amazonTextFieldController?.dispose();
    whatsappTextFieldController?.dispose();
    myntraTextFieldController?.dispose();
    ajioTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
