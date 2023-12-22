import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoviesHeader extends StatelessWidget {
  const MoviesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 196,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: Get.width,
            child: Image.asset(
              'assets/images/header.png', 
              fit: BoxFit.cover,
              )
            ),
            Container(
              width: Get.width *.9,
              padding: const EdgeInsets.only(bottom: 20),
              child: TextField(
                onTapOutside: (_) => FocusScope.of(context).unfocus(),
                cursorColor: Colors.black.withOpacity(0.7),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.black)
                  ),
                  fillColor: Colors.white.withOpacity(0.8),
                  filled: true,
                  labelText: 'Procurar Filmes',
                  labelStyle: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 17),
                  prefixIcon: Icon(Icons.search, color: Colors.black.withOpacity(0.6),),
                  contentPadding: EdgeInsets.zero,
                  floatingLabelBehavior: FloatingLabelBehavior.never, 
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.black)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.black)
                  ),                  
                  
                ),
              ),
            )
        ],
      ),
    );
  }
}