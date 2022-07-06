import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/layouts/doc_home_layout/Doctor_Cubit/doc_cubit.dart';
import 'package:graduation_project/layouts/doc_home_layout/Doctor_Cubit/doc_states.dart';
import 'package:graduation_project/layouts/owner_home_layout/cubit/owner_state.dart';
import 'package:graduation_project/models/comment_model.dart';

import '../../layouts/owner_home_layout/cubit/owner_cubit.dart';
import '../../shared/component/components.dart';
import '../../shared/styles/icon_broken.dart';

class OwnerCommentScreen extends StatelessWidget {

  final String? postId;
  const OwnerCommentScreen({Key? key, this.postId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OwnerCubit.get(context).getComments(postId: postId!);
    var textController=TextEditingController();
    return BlocConsumer<OwnerCubit,OwnerState>(
        builder: (context,state){
          return Scaffold(
              appBar: AppBar(
                title: Text("Comments"),
              ),
              body:   Column(
                children: [
                  Expanded(
                    child:ListView.separated(
                        itemBuilder: (context,index)=>buildCommentItem(context,OwnerCubit.get(context).comments[index]),
                        separatorBuilder:(context,index)=> myDivider(),
                        itemCount: OwnerCubit.get(context).comments.length),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            controller: textController,
                            keyboardType: TextInputType.text,

                            decoration: InputDecoration(
                                labelText: 'اكتب تعليقك'

                            ),),
                        ),
                      ),
                      IconButton(
                          onPressed: (){
                            OwnerCubit.get(context).addComment(
                                postId!,
                                textController.text,
                                OwnerCubit.get(context).ownerModel!.studName,
                                OwnerCubit.get(context).ownerModel!.image);
                            OwnerCubit.get(context).getComments(postId: postId!);
                          },
                          icon: Icon(IconBroken.Send,color: Colors.blue,)
                      )
                    ],
                  )
                ],
              )
          );
        },
        listener: (context,state){});
  }

  Widget buildCommentItem(context,CommentModel model)=> Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(OwnerCubit.get(context).userModel!.image),
          radius: 20.0,

        ),
        SizedBox(width: 15.0,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${model.ownName}',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Colors.black
                ),
              ),
              Text(
                '${model.text}',
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              )
            ],
          ),
        )
      ],
    ),
  );
}
