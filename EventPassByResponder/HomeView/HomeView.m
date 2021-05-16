//
//  HomeView.m
//  EventPassByResponder
//
//  Created by Tom.Liu on 2021/5/16.
//

#import "HomeView.h"
#import "HeaderView.h"
#import <Masonry/Masonry.h>
#import "HomeViewEventProtocol.h"
@interface HomeView ()
@property (weak, nonatomic) IBOutlet UIView *searheaderView;

@end


@implementation HomeView


-(void)awakeFromNib {
    [super awakeFromNib];
    HeaderView * headerView = [[[NSBundle mainBundle] loadNibNamed:@"HeaderView" owner:nil options:nil] lastObject];
    [self.searheaderView addSubview:headerView];
    self.searheaderView.clipsToBounds  = YES;
    UIEdgeInsets padding = UIEdgeInsetsMake(0, 0, 0, 0);

    [headerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.searheaderView).with.insets(padding);

        
    }];
}


- (IBAction)menuButtonClicked:(UIButton*)sender {
    [self passEventName:@"menuButtonClicked" fromObject:sender withUserInfo:@{}];
}



-(void)passEventName:(NSString *)eventName fromObject:(id )obj withUserInfo:(NSDictionary *)userInfo {
    ///此处可以接收到子控件传过来的事件
    ///从子控件向父控件传递的消息
    ///可以根据eventName来进行不同的响应
    if ([eventName isEqualToString:@"textfieldEditingDidEnd"]) {
        [self.nr_eventDelegate homeView:self textFieldvalueChanged:obj];
    }else if ([eventName isEqualToString:@"confirmButtonClicked"]){
        [self.nr_eventDelegate homeView:self confirmButtonClicked:obj];
    }else if ([eventName isEqualToString:@"menuButtonClicked"]){
        [self.nr_eventDelegate homeView:self menuButtonClicked:obj];
    }
}


 
@end
