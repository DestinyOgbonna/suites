import 'package:stacked_services/stacked_services.dart';
import 'package:suites/app/app.locator.dart';
import 'package:suites/widgets/custom_dialog.dart';

void setupDialogUi() {
  final dialogService = locator<DialogService>();

  final dialogBuilder = {
    DialogType.login: (context, request, completer) => CustomDialog(
          request: request,
          completer: completer,
          title: 'Logging In..',
        ),
    DialogType.register: (context, request, completer) => CustomDialog(
          request: request,
          completer: completer,
          title: 'Registering User..',
        ),
    DialogType.signOut: (context, request, completer) => CustomDialog(
          request: request,
          completer: completer,
          title: 'Signing out user..',
        ),
  };

  dialogService.registerCustomDialogBuilders(dialogBuilder);
}

enum DialogType { login, register, signOut }
