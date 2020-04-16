//
//  XZHomeViewController.m
//  Pods-ios-shell-tuofu
//
//  Created by 小站 on 2020/4/3.
//

#import "XZHomeViewController.h"
#import <Masonry/Masonry.h>
#import "XZHomeModuleUtils.h"
#import <XZProtocolModule/XZUserInfoProtocol.h>

@interface XZHomeViewController ()
@property (nonatomic,strong)UIImageView *hImageView;
@end

@implementation XZHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"首页";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.hImageView];
    [_hImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(200);
    }];
    _hImageView.image = [XZHomeModuleUtils xz_imageNamed:@"btn_back_black"];
}

#pragma mark - Event
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    XZRouter *router = [[XZRouter alloc] initWithSource:nil routerProtocolKey:@protocol(XZUserInfoRouterProtocol)];
    UIViewController<XZUserInfoRouterProtocol> *vc = (UIViewController<XZUserInfoRouterProtocol> *)router.destination;
    [vc setNameTitle:@"传入"];
    router.options = XZRouterActionPush;
    [router submit];
    
}

#pragma mark - 懒加载
- (UIImageView *)hImageView {
    if(!_hImageView){
        _hImageView = [[UIImageView alloc] init];
    }
    return _hImageView;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
