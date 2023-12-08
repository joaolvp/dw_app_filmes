import 'package:app_filmes/application/ui/loader/loader_mixin.dart';
import 'package:app_filmes/application/ui/messages/messages_mixin.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin{

  final loading = false.obs;
  final message = Rxn<MessageModel> ();

  @override
  void onInit() {
    loaderListener(loading);
    messageListenner(message);
    super.onInit();
  }

  Future<void> login() async{
    loading(true);
    await 2.seconds.delay();
    //await Future.delayed(const Duration(seconds: 2));
    loading(false);
    message(MessageModel(title: 'Titulo Erro', message: 'Mensagem de Erro', type: MessageType.error));
    await 1.seconds.delay();
    message(MessageModel(title: 'Titulo Sucesso', message: 'Mensagem de Sucesso', type: MessageType.info));
  }
}