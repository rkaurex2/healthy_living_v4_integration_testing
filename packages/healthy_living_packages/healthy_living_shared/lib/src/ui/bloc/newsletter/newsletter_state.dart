import 'package:design_system/design_system.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'newsletter_state.freezed.dart';

enum NewsletterStatus { initial, loading, success, failure }

@freezed
sealed class NewsletterState with _$NewsletterState {
  const factory NewsletterState({
    @Default('') String email,
    @Default('') String zipCode,
    @Default('') String country,
    @Default(NewsletterStatus.initial) NewsletterStatus status,
    Exception? exception,
    @Default(DSTextInputState.defaultState)
    DSTextInputState emailTextInputState,
    @Default(DSTextInputState.defaultState) DSTextInputState zipTextInputState,
  }) = _NewsletterState;
}
