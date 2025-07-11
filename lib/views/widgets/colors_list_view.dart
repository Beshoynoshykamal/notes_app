import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/views/widgets/color_item.dart';


class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});
  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {

  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(itemBuilder:(context,index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: GestureDetector(
            onTap: (){
              BlocProvider.of<AddNoteCubit>(context).color=kColors[index];
              setState(() {
                currentIndex=index;
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