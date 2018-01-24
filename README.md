#  WSButton
使用样例：

1.图片在下

    WSButton *button1 = [WSButton buttonWithType:UIButtonTypeCustom];
    button1.backgroundColor = [UIColor yellowColor];
    [button1 setButtonLayoutType:WSButtonLayoutImageBottom];
    button1.frame = CGRectMake(20, 100, 100, 60);
    button1.titleLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:12];
    [button1 setTitle:@"type1" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button1 setImage:[UIImage imageNamed:@"on"] forState:UIControlStateNormal];
    [self.view addSubview:button1];

2.图片在上

    WSButton *button2 = [WSButton buttonWithType:UIButtonTypeCustom];
    [button2 setButtonLayoutType:WSButtonLayoutImageTop];
    [button2 setImageAndTitleSpace:10];//调整图片和title之前的间距
    button2.backgroundColor = [UIColor blueColor];
    button2.titleLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
    button2.frame = CGRectMake(20, 200, 100, 60);
    [button2 setTitle:@"type2" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button2 setImage:[UIImage imageNamed:@"on"] forState:UIControlStateNormal];
    [self.view addSubview:button2];

3.图片在右

    WSButton *button3 = [WSButton buttonWithType:UIButtonTypeCustom];
    [button3 setButtonLayoutType:WSButtonLayoutImageRight];
    button3.backgroundColor = [UIColor blueColor];
    button3.frame = CGRectMake(20, 300, 100, 60);
    button3.titleLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:16];
    [button3 setTitle:@"type333" forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button3 setImage:[UIImage imageNamed:@"on"] forState:UIControlStateNormal];
    [self.view addSubview:button3];

4.图片在左

    WSButton *button4 = [WSButton buttonWithType:UIButtonTypeCustom];
    [button4 setButtonLayoutType:WSButtonLayoutNormal];
    [button4 setImageAndTitleSpace:8];//调整图片和title之前的间距
    button4.backgroundColor = [UIColor blueColor];
    button4.frame = CGRectMake(20, 400, 100, 60);
    button4.titleLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:18];
    [button4 setTitle:@"type4" forState:UIControlStateNormal];
    [button4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button4 setImage:[UIImage imageNamed:@"on"] forState:UIControlStateNormal];
    [self.view addSubview:button4];


