import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context){
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(
        label: 'Ok!', 
        onPressed: (){}),
        duration: const Duration(seconds: 2),);
  
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

void openDialog (BuildContext context){

  showDialog(context: context,barrierDismissible: false, builder: (context)=>AlertDialog(
    title: const Text('¿Estas Seguro?'),
    content: const Text('Ipsum adipisicing id labore ullamco irure.Veniam minim laborum fugiat labore.'),
    actions: [
      TextButton(onPressed: ()=> context.pop(), child: const Text('Cancelar')),
      FilledButton(onPressed: ()=> context.pop(), child: const Text('Aceptar'))
    ],
  ));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars')
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  applicationName: 'Flutter Widget',
                  context: context,
                  children: [
                    const Text('Ex sint velit dolor aliqua dolore velit ut cupidatat. Mollit do proident cillum sint do labore dolore laboris ea. Sint ad dolore sint id mollit ipsum irure duis est magna Lorem sunt. Mollit esse officia exercitation do laborum irure elit et fugiat. Elit sint est cillum consectetur. Do mollit ut do fugiat voluptate occaecat quis magna aute culpa ea reprehenderit. Labore ea mollit officia voluptate deserunt ea esse sint aliqua in eu.')
                  ]);
              }, 
              child: const Text('Licencias Usadas')),

            FilledButton.tonal(
              onPressed: ()=> openDialog(context), 
              child: const Text('Mostrar Dialogos')),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context), 
      ),
    );
  }
}