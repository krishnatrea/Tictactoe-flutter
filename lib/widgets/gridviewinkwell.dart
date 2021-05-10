import 'package:flutter/material.dart';

InkWell gridView(
    {BuildContext context, int index, Map isclicked, Function taped}) {
  return InkWell(
    onTap: () {
      if (!isclicked[index][0]) taped(index);
    },
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        maxRadius: 40,
        minRadius: 10,
        child: isclicked[index][1] == null
            ? Offstage()
            : Center(
                child: Text(
                  isclicked[index][1],
                  style: Theme.of(context).textTheme.headline2.copyWith(
                        color: Color.fromRGBO(0, 48, 73, 1),
                      ),
                ),
              ),
      ),
    ),
  );
}
