# ZTNavigationItem
iOS11导航栏item适配
一句代码调用，即可实现导航栏返回item以及右侧一个、两个、三个、四个item的操作
<<<<<<< HEAD
具体使用方法:

//1、左侧item:因为我设置了所有二级页面左侧按钮为返回，所以这一行注释掉。
//如果在二级页面需要改变左侧按钮及点击事件，直接调用以下方法即可。具体位置调整,可以去方法里更改UIEdgeInsetsMake()
//[self addLeftBarButtonWithImage:[UIImage imageNamed:@"聚会点赞红色"] action:@selector(leftBarbuttonAction)];

//2、右侧两个item
[self addRightTwoBarButtonsWithFirstImage:[UIImage imageNamed:@"聚会点赞红色"] firstAction:@selector(rightFirstBarbuttonAction) secondImage:[UIImage imageNamed:@"聚会点赞红色"] secondAction:@selector(rightSecondBarbuttonAction)];

//3、右侧四个item
//[self addRightFourBarButtonsWithFirstImage:[UIImage imageNamed:@"聚会点赞红色"] firstAction:@selector(rightFirstBarbuttonAction) secondImage:[UIImage imageNamed:@"聚会点赞红色"] secondAction:@selector(rightFirstBarbuttonAction) thirdImage:[UIImage imageNamed:@"聚会点赞红色"] thirdAction:@selector(rightFirstBarbuttonAction) fourthImage:[UIImage imageNamed:@"聚会点赞红色"] fourthAction:@selector(rightFirstBarbuttonAction)];
=======
具体使用方法见ViewController
>>>>>>> 8bcca3da5a812e376a73b425cae9f1bf54c6cc65
