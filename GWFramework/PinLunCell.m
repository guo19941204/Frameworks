//
//  PinLunCell.m
//  XFitClub
//
//  Created by 郭炜 on 2017/4/20.
//  Copyright © 2017年 aidspp@163.com. All rights reserved.
//

#import "PinLunCell.h"
#import "QMUIKit.h"
#import "Contains.h"

@implementation PinLunCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.portrait_url.layer.masksToBounds = YES;
    self.portrait_url.layer.cornerRadius = flat(65/2.0);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (CGSize)sizeThatFits:(CGSize)size {
    CGSize resultSize = CGSizeMake(size.width, 0);
    
//    resultSize.height = resultHeight;
    CGFloat textWidth = self.content.width;
    CGFloat resultHeight = self.portrait_url.height+14+6;
    resultHeight += [self.content sizeThatFits:CGSizeMake(textWidth, CGFLOAT_MAX)].height;
    resultSize.height = resultHeight;
    return resultSize;
}

- (IBAction)handleDianZan:(id)sender {
    if (self.callBackDianZan) {
        self.callBackDianZan();
    }
}
@end
