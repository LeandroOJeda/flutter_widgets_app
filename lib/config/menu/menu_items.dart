

import 'package:flutter/material.dart';

class MenuItem{

  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
  });
}

const List<MenuItem> appMenuItems = [

  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined
    ),

  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/card',
    icon: Icons.credit_card
    ),

  MenuItem(
    title: 'ProgressIndicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded
    ),

  MenuItem(
    title: 'Snackbars y dialogos',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbar',
    icon: Icons.info_sharp
    ),
    
  MenuItem(
    title: 'Animated Container',
    subTitle: 'Stateful widget animao',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded
    ),
    
  MenuItem(
    title: 'UI Controls + Tiles',
    subTitle: 'Controles de Flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined
    ),
    
  MenuItem(
    title: 'Introduccion a la aplicacion',
    subTitle: 'Pequeño tutorial introductorio',
    link: '/tutorial',
    icon: Icons.accessibility_new_outlined
    ),
    
  MenuItem(
    title: 'Infinite Scroll',
    subTitle: 'Listas infinitas',
    link: '/infinite-scroll',
    icon: Icons.list_rounded
    ),
    
  MenuItem(
    title: 'Counter',
    subTitle: 'contador',
    link: '/counter',
    icon: Icons.onetwothree_rounded
    ),

  MenuItem(
    title: 'Theme changer',
    subTitle: 'Cambio de tema',
    link: '/theme_changer',
    icon: Icons.color_lens_outlined
    ),
];