import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bid_for_an_auction_model.dart';
export 'bid_for_an_auction_model.dart';

class BidForAnAuctionWidget extends StatefulWidget {
  const BidForAnAuctionWidget({
    Key? key,
    required this.auctionId,
    required this.auctioneerId,
    required this.minStartBid,
    required this.auctionTitle,
  }) : super(key: key);

  final int? auctionId;
  final int? auctioneerId;
  final int? minStartBid;
  final String? auctionTitle;

  @override
  _BidForAnAuctionWidgetState createState() => _BidForAnAuctionWidgetState();
}

class _BidForAnAuctionWidgetState extends State<BidForAnAuctionWidget> {
  late BidForAnAuctionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BidForAnAuctionModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Create Bid',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Readex Pro',
                    color: Color(0xFF6783CA),
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Container(
                width: double.infinity,
                child: TextFormField(
                  controller: _model.textController,
                  focusNode: _model.textFieldFocusNode,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Enter amount',
                    hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondaryText,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyLarge,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  validator:
                      _model.textControllerValidator.asValidator(context),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9]'))
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 40.0, 16.0, 40.0),
              child: FFButtonWidget(
                onPressed: () async {
                  _model.apiResulttxr = await POSTCreateBidCall.call(
                    authToken: FFAppState().token,
                    auctionId: widget.auctionId,
                    bidAmount: int.tryParse(_model.textController.text),
                    auctioneerId: widget.auctioneerId,
                    minStartBid: widget.minStartBid,
                  );
                  if ((_model.apiResulttxr?.succeeded ?? true)) {
                    context.pushNamed(
                      'view_auction_page',
                      queryParameters: {
                        'auctionId': serializeParam(
                          widget.auctionId,
                          ParamType.int,
                        ),
                      }.withoutNulls,
                    );

                    _model.apiResultzyf = await NotifyAuctioneerAPICall.call(
                      auctionTitle: widget.auctionTitle,
                      bidAmount: int.tryParse(_model.textController.text),
                      auctioneerId: widget.auctioneerId,
                      authToken: FFAppState().token,
                    );
                    unawaited(
                      () async {
                        await NotifyPreviousBidderCall.call(
                          auctionTitle: widget.auctionTitle,
                          bidAmount: int.tryParse(_model.textController.text),
                          authToken: FFAppState().token,
                          previousBidderId: getJsonField(
                            (_model.apiResulttxr?.jsonBody ?? ''),
                            r'''$.previousBidderId''',
                          ),
                        );
                      }(),
                    );
                  } else {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('You couldn\'t bid for this auction!'),
                          content: Text(getJsonField(
                            (_model.apiResulttxr?.jsonBody ?? ''),
                            r'''$.responseMessage''',
                          ).toString()),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                    context.safePop();
                  }

                  setState(() {});
                },
                text: 'Create Bid',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFF6783CA),
                  textStyle: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Inter',
                        color: Colors.white,
                      ),
                  elevation: 2.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
