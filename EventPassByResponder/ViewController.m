//
//  ViewController.m
//  EventPassByResponder
//
//  Created by Tom.Liu on 2021/5/16.
//

#import "ViewController.h"
#import "HomeView.h"
#import "HomePrsenter.h"
@interface ViewController ()
@property (nonatomic,strong)HomeView * homeView;
@property (nonatomic,strong)HomePrsenter *presenter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"首页";
    [self.view addSubview:self.homeView];
    self.view.backgroundColor = [UIColor colorWithWhite:0.95 alpha:1];
    
}



- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    [self.homeView setFrame:CGRectMake(0, 64+10, [UIScreen mainScreen].bounds.size.width, 512)];
    
    
}


- (HomeView *)homeView {
    if(!_homeView){
        HomeView* homeView = [[[NSBundle mainBundle] loadNibNamed:@"HomeView" owner:nil options:nil] lastObject];
        homeView.nr_eventDelegate = self.presenter;
        _homeView = homeView;
    }
    return _homeView;
}


- (HomePrsenter *)presenter {
    if(!_presenter){
        HomePrsenter * presenter = [[HomePrsenter alloc] init];
        _presenter = presenter;
    }
    return _presenter;
}


@end
