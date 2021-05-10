import 'package:flutter/material.dart';

InkWell gridView(
    BuildContext context, int index, List clicked, Function taped) {
  return InkWell(
    onTap: () {
      if (!clicked[0]) taped(index);
    },
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        maxRadius: 40,
        minRadius: 10,
        child: clicked[1] == null
            ? Offstage()
            : Center(
                child: Text(
                  clicked[index][1],
                  style: Theme.of(context).textTheme.headline2.copyWith(
                        color: Color.fromRGBO(0, 48, 73, 1),
                      ),
                ),
              ),
      ),
    ),
  );
}
