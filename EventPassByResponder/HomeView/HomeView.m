//
//  HomeView.m
//  EventPassByResponder
//
//  Created by Tom.Liu on 2021/5/16.
//

#import "HomeView.h"
#import "HeaderView.h"
#import <Masonry/Masonry.h>
#import "UIResponder+NextResponder.h"
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



 
@end
