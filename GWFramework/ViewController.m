//
//  ViewController.m
//  GWFramework
//
//  Created by 郭炜 on 2017/5/23.
//  Copyright © 2017年 郭炜. All rights reserved.
//

/**
 *  http://xfit.webuildus.com/index.php/Train/trainingDetails
 *
 memberId = 75;
 tokenId = 40d7c25c18333ba0a9b8520f7d1bea9d78274218;
 wodId = "(null)";
 */
#import "ViewController.h"
#import "Contains.h"
#import "BaseListView.h"
#import "PinLunEntity.h"
#import "PinLunCell.h"
#import "MJChiBaoZiFooter2.h"
#import "MJChiBaoZiHeader.h"

@interface ViewController ()

@property (nonatomic, strong) BaseListView *listView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.listView = [[BaseListView alloc] init];
    self.listView.useOwnRefreshHeaderControll = YES;
    self.listView.useOwnRefreshFooterControll = YES;
    self.listView.MJRefreshHeaderClass = [MJChiBaoZiHeader class];
    self.listView.MJRefreshFooterClass = [MJChiBaoZiFooter2 class];
    [self.listView registerNibView:[UINib nibWithNibName:@"PinLunCell" bundle:nil] forCellReuseIdentifier:@"PinLunCell"];
    [self.listView setModelClass:[PinLunEntity class]];
    self.listView.preHandleDataSource = self;
    self.listView.para = [NSMutableDictionary dictionaryWithObjectsAndKeys:@75,@"memberId",
                          @"40d7c25c18333ba0a9b8520f7d1bea9d78274218",@"tokenId",
                          @"1",@"wodId", nil];
    self.listView.action = @"/index.php/Train/trainingDetails";
    [self.view addSubview:self.listView.view];
    self.listView.didBeforeRefresh = ^{
        [SVProgressHUD showWithStatus:@"正在刷新"];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [SVProgressHUD dismiss];
        });
    };
}

- (void)baseListviewWillShow:(NSMutableArray *)dataSource {
    if (self.listView.emptyViewShowing) {
        [self.listView.emptyView removeFromSuperview];
    }
    if (dataSource.count == 0) {
        self.listView.para = [NSMutableDictionary dictionaryWithObjectsAndKeys:@75,@"memberId",
                              @"40d7c25c18333ba0a9b8520f7d1bea9d78274218",@"tokenId",
                              @"null",@"wodId", nil];
        [self.listView showEmptyViewWithText:@"未获取到数据" detailText:@"请重新刷新" buttonTitle:@"点击刷新" buttonAction:@selector(refresh:)];
    }
}


@end
