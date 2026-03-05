import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class CreateListSheetWidget extends StatefulWidget {
  final String title;
  final String hintText;
  final String? controllerText;
  final String buttonText;
  final void Function(String listName) onCreateButtonTap;
  final VoidCallback? onClose;
  final bool isLoading;
  final bool isButtonEnabled;
  final bool isDarkTheme;
  final DSButtonState dsButtonState;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  const CreateListSheetWidget({
    required this.title,
    required this.hintText,
    required this.buttonText,
    required this.onCreateButtonTap,
    required this.dsButtonState,
    this.isDarkTheme = false,
    this.controllerText,
    this.onClose,
    this.isLoading = false,
    this.isButtonEnabled = true,
    this.onChanged,
    this.onFieldSubmitted,
    super.key,
  });

  @override
  State<CreateListSheetWidget> createState() => _CreateListSheetWidgetState();
}

class _CreateListSheetWidgetState extends State<CreateListSheetWidget> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.controllerText ?? "";
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    return Container(
      decoration: BoxDecoration(
        color:
            widget.isDarkTheme ? context.dsColors.surfacePrimaryDefault : null,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(context.dsRadius.rd500),
          topLeft: Radius.circular(context.dsRadius.rd500),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom + 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: widget.onClose,
                    child: DSImage.asset(
                      DSIcons.icClose,
                      width: context.dsSizes.sz500,
                      height: context.dsSizes.sz500,
                      color:
                          widget.isDarkTheme
                              ? context.dsColors.iconOnSurfaceDefault
                              : context.dsColors.iconPrimary,
                    ),
                  ),
                  Center(
                    child: DSText(
                      text: widget.title,
                      textStyle: DSTextStyleType.primaryBodyMRegular,
                      textColor:
                          widget.isDarkTheme
                              ? context.dsColors.textOnSurfaceDefault
                              : context.dsColors.textPrimaryDefault,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp700),
              // KEY: TestKeys.listNameField
              DSTextInput(
                key: const Key('list_name_field'),
                focusNode: _focusNode,
                controller: _controller,
                hintText: widget.hintText,
                state: DSTextInputState.defaultState,
                size: DSTextInputSize.large,
                onFieldSubmitted: widget.onFieldSubmitted,
                onChanged: widget.onChanged,
                caption:
                    healthyLivingSharedLocalizations
                        .healthyLivingShared_list_maxLength,
                maxLength: IntegerConstants.createListNameLength,
                captionTextColor:
                    widget.isDarkTheme
                        ? context.dsColors.textOnSurfaceDefault
                        : null,
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),
              widget.isDarkTheme
                  ? DSButtonSecondary(
                    textStyle: DSTextStyleType.primaryButtonLRegular,
                    onPressed:
                        widget.isButtonEnabled && !widget.isLoading
                            ? () => widget.onCreateButtonTap(
                              _controller.text.trim(),
                            )
                            : null,
                    text: widget.buttonText,
                    size: DSButtonSize.small,
                    state: widget.dsButtonState,
                  )
                  : DSButtonPrimary(
                    textStyle: DSTextStyleType.primaryButtonLRegular,
                    onPressed:
                        widget.isButtonEnabled && !widget.isLoading
                            ? () => widget.onCreateButtonTap(
                              _controller.text.trim(),
                            )
                            : null,
                    text: widget.buttonText,
                    size: DSButtonSize.small,
                    state: widget.dsButtonState,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
