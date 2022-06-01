import 'package:flutter/material.dart';



Widget profileCard({
  Widget? profileImg,
  Widget? badge,
  double width = 150,
  double height = 250,
  Color color = Colors.white,
  Color textColor = Colors.black,
  double elevation = 5,
  String shortBio = "Android Developer",
  String username = "Ahmed",
  int followers = 0,
  int following = 0,
  String font = 'arial',
  //
  List<double> borderRadius = const [10, 80, 10, 10],
}) {
  height = height < 200
      ? 200
      : height > 300
      ? 300
      : height;
  double smallFont  = height / 17;
  double bigFont = height / 10 * 1.2;
  String followersStr = "$followers";
  String followingStr = "$following";
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadiusDirectional.only(
        topStart: Radius.circular(borderRadius[0]),
        topEnd: Radius.circular(borderRadius[1]),
        bottomEnd: Radius.circular(borderRadius[2]),
        bottomStart: Radius.circular(borderRadius[3]),
      ),
    ),
    child: Padding(
      padding:
      EdgeInsets.symmetric(horizontal: 20.0, vertical: height / 30 * 2),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: height / 5,
                              width: 1,
                              color: Colors.grey,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text(
                                  username,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontFamily: font,
                                      fontSize: bigFont,
                                      fontWeight: FontWeight.bold,
                                      color: textColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: height / 8,
                              width: 1,
                              color: Colors.deepOrange.shade900,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text(
                                  shortBio,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontFamily: font,
                                    fontSize: smallFont,
                                    fontWeight: FontWeight.bold,
                                    color: textColor.withOpacity(0.5),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                    radius: height * 0.25,
                    child: profileImg ??  Icon(
                      Icons.account_circle_sharp,
                      size: height * 25,
                    )),
              ],
            ),
          ),
          Container(
            height: 1,
            margin: const EdgeInsets.all(10.0),
            color: Colors.grey.shade300,
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Followers",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: font,
                          fontSize: smallFont,
                          color: textColor,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.supervised_user_circle_sharp),
                          Text(
                            followersStr,
                            style: TextStyle(
                              fontFamily: font,
                              fontSize: smallFont,
                              color: textColor.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Expanded(child: SizedBox()),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Following",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: font,
                          fontSize: smallFont,
                          color: textColor,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.account_circle_sharp),
                          Text(
                            followingStr,
                            style: TextStyle(
                              fontFamily: font,
                              fontSize: smallFont,
                              color: textColor.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Expanded(child: SizedBox()),
                Expanded(
                  flex: 2,
                  child: badge ??  Icon(
                    Icons.account_circle_sharp,
                    size: height * 0.25,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
