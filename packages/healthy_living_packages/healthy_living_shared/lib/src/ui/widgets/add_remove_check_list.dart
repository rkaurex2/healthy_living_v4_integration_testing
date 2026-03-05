import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/models/add_remove_list_status.dart';

class AddRemoveCheckList extends StatelessWidget {
  final AddRemoveListStatus status;
  final AddRemoveListState state;
  final double? borderWidth;
  final double? iconPadding;
  final Key? iconKey;
  const AddRemoveCheckList({
    required this.status,
    this.state = AddRemoveListState.normal,
    this.borderWidth,
    this.iconPadding,
    this.iconKey,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = status == AddRemoveListStatus.add;
    final spec = DesignSystemUtil.getDSChecklistSizeSpec();
    return Container(
      key: iconKey,
      width: spec.size,
      height: spec.size,
      padding: EdgeInsets.all(iconPadding ?? 2.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:
            state == AddRemoveListState.disable
                ? context.dsColors.surfaceNeutralDisabled
                : isSelected
                ? context.dsColors.iconNeutralDefault
                : context.dsColors.surfaceNeutralContainerWhite,
        border: Border.all(
          color:
              state == AddRemoveListState.disable
                  ? context.dsColors.surfaceNeutralDisabled
                  : context.dsColors.iconNeutralDefault,
          width: borderWidth ?? 1.0,
        ),
      ),
      child:
          isSelected
              ? DSImage.asset(
                DSIcons.icAdd,
                color:
                    state == AddRemoveListState.disable
                        ? context.dsColors.iconNeutralDisabled
                        : context.dsColors.iconOnSurfaceDefault,
              )
              : DSImage.asset(
                DSIcons.icMinus,
                color:
                    state == AddRemoveListState.disable
                        ? context.dsColors.iconNeutralDisabled
                        : context.dsColors.iconPrimary,
              ),
    );
  }
}
