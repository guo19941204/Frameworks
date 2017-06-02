//
//  PinLunCell.h
//  XFitClub
//
//  Created by 郭炜 on 2017/4/20.
//  Copyright © 2017年 aidspp@163.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AutoBindCell.h"

@interface PinLunCell : AutoBindCell


@property (weak, nonatomic) IBOutlet UIButton *dianZanButton;
@property (nonatomic, copy) void (^callBackDianZan)(void);

@property (weak, nonatomic) IBOutlet UIImageView *portrait_url;

@property (weak, nonatomic) IBOutlet UILabel *member_name;
@property (weak, nonatomic) IBOutlet UILabel *time;
@property (weak, nonatomic) IBOutlet UILabel *content;

@end
