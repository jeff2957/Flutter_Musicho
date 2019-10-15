import 'dart:math';
Random random = Random();
List names = [
  "Username 1",
  "Username 2",
  "Username 3",
  "Username 4",
  "Username 5",
  "Username 6",
  "Username 7",
  "Username 8",
  "Username 9",
  "Username 10",
  "Username 11",
];

List messages = [
  "安安你好嗎",
  "你明天有空嗎？",
  "現在很晚了",
  "哈哈哈",
  "我先睡了",
  "你的文章寫得好好",
  "愛你",
  "明天會下雨",
  ".....",
  "= =",
  "我不知道要說什麼",
];

List notifs = [
  "${names[random.nextInt(10)]} and ${random.nextInt(100)} others liked your post",
  "${names[random.nextInt(10)]} 在留言提到了你",
  "${names[random.nextInt(10)]} 分享了你的貼文",
  "${names[random.nextInt(10)]} 在你的文章留言",
  "${names[random.nextInt(10)]} 回覆了你的貼文",
  "${names[random.nextInt(10)]} 傳給你一則訊息",
  "${names[random.nextInt(10)]} 邀請你加入群組聊天",
  "${names[random.nextInt(10)]} 在留言提到了你",
  "${names[random.nextInt(10)]} 傳送好友邀請給你",
  "${names[random.nextInt(10)]} 傳送給你一則訊息",
  "${names[random.nextInt(10)]} 回覆了你的貼文",
];

List notifications = List.generate(13, (index)=>{
  "name": names[random.nextInt(10)],
  "dp": "assets/cm${random.nextInt(10)}.jpeg",
  "time": "${random.nextInt(50)} min ago",
  "notif": notifs[random.nextInt(10)]
});

List posts = List.generate(13, (index)=>{
    "name": names[random.nextInt(10)],
    "dp": "assets/cm${random.nextInt(10)}.jpeg",
    "time": "${random.nextInt(50)} min ago",
    "img": "assets/cm${random.nextInt(10)}.jpeg"
});

List chats = List.generate(13, (index)=>{
  "name": names[random.nextInt(10)],
  "dp": "assets/cm${random.nextInt(10)}.jpeg",
  "msg": messages[random.nextInt(10)],
  "counter": random.nextInt(20),
  "time": "${random.nextInt(50)} min ago",
  "isOnline": random.nextBool(),
});

List groups = List.generate(13, (index)=>{
  "name": "Group ${random.nextInt(20)}",
  "dp": "assets/cm${random.nextInt(10)}.jpeg",
  "msg": messages[random.nextInt(10)],
  "counter": random.nextInt(20),
  "time": "${random.nextInt(50)} min ago",
  "isOnline": random.nextBool(),
});

List types = ["text", "image"];
List conversation = List.generate(10, (index)=>{
  "username": "Group ${random.nextInt(20)}",
  "time": "${random.nextInt(50)} min ago",
  "type": types[random.nextInt(2)],
  "replyText": messages[random.nextInt(10)],
  "isMe": random.nextBool(),
  "isGroup": false,
  "isReply": random.nextBool(),
});

List friends = List.generate(13, (index)=>{
  "name": names[random.nextInt(10)],
  "dp": "assets/cm${random.nextInt(10)}.jpeg",
  "status": "我是狀態欄(或者其他東西)",
  "isAccept": random.nextBool(),
});