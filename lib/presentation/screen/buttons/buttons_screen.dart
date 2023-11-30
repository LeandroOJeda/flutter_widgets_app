import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.keyboard_backspace),
        onPressed: (){
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 10,
        children: [
          ElevatedButton(
            onPressed: (){}, 
            child: const Text('Elevated Button')
          ),

          const ElevatedButton(
            onPressed: null, 
            child: Text('Elevated Disabled')
          ),

          ElevatedButton.icon(
            icon: const Icon(Icons.access_alarm_sharp),
            label: const Text('Elevated Icon'),
            onPressed: (){}, 
          ),
            
          FilledButton(
            onPressed: (){}, 
            child: const Text('Filled')
          ),
            
          FilledButton.icon(
            icon: const Icon(Icons.access_alarms_outlined),
            onPressed: (){}, 
            label: const Text('Filled Icon'),
          ),

          OutlinedButton(
            child: const Text('Outlined Button'),
            onPressed: (){},
          ),
         
          OutlinedButton.icon(
            icon: const Icon(Icons.terminal),
            label: const Text('Outlined Icon'),
            onPressed: (){},
          ),

          TextButton(
            child: const Text('Text'),
            onPressed: (){},
          ),

          TextButton.icon(
            icon: const Icon(Icons.face),
            label: const Text('Text Icon'),
            onPressed: (){},
          ),

          IconButton(
            icon: const Icon(Icons.fullscreen),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(colors.primary),
            ),
            onPressed: (){},
          ),

          IconButton(
            icon: const Icon(Icons.face),
            onPressed: (){},
          ),

          const CustomButton(),

        ],
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child:  InkWell(
          onTap: (){},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola Mundo', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}