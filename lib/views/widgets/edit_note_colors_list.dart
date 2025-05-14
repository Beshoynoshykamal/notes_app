import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';

import 'color_item.dart';

class EditNoteColorsList extends StatefulWidget {
 const  EditNoteColorsList({super.key, required this.note});
  final NoteModel note;
 
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
 List<Color>colors=kColors;
 int currentIndex=0;
@override
  void initState() {
   colors[0]=Color(widget.note.color);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 76,
      child: ListView.builder(itemBuilder:(context,index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: GestureDetector(
            onTap: (){
              setState(() {
                 currentIndex=index;
             widget.note.color=colors[index].value;
              });
            
              
            },
            child: ColorItem(isActive: currentIndex==index,color:kColors[index],),),
        );
      },
       itemCount:kColors.length,
       scrollDirection: Axis.horizontal,),
    );
  }
}