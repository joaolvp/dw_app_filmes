import 'package:app_filmes/application/ui/loader/loader_mixin.dart';
import 'package:app_filmes/application/ui/messages/messages_mixin.dart';
import 'package:app_filmes/services/login/login_service.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  final LoginService _loginService;
  final loading = false.obs;
  final message = Rxn<MessageModel>();

  LoginController({required LoginService loginService})
      : _loginService = loginService;

  @override
  void onInit() {
    loaderListener(loading);
    messageListenner(message);
    super.onInit();
  }

  Future<void> login() async {
    try {
      loading(true);
      await _loginService.login();
      loading(false);
      message(MessageModel(
          title: 'Sucesso',
          message: 'Login realizado com sucesso',
          type: MessageType.info));
    } on Exception catch (e, s) {
      print('Erro é: $e');
      print(s);
      loading(false);
      message(MessageModel(
          title: 'Login Erro',
          message: 'Erro ao realizar login',
          type: MessageType.error));
    }
  }
}
