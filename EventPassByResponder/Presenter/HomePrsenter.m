//
//  HomePrsenter.m
//  EventPassByResponder
//
//  Created by Tom.Liu on 2021/5/16.
//

#import "HomePrsenter.h"
#import "HomeViewEventProtocol.h"

@interface HomePrsenter ()<HomeViewEventProtocol>

@end


@implementation HomePrsenter


 
- (void)homeView:(nonnull UIView *)view confirmButtonClicked:(nonnull UIButton *)button {
    NSLog(@"confirmButtonClicked");
}

- (void)homeView:(nonnull UIView *)view menuButtonClicked:(nonnull UIButton *)button {
    NSLog(@"menuButtonClicked");
    NSLog(@"index :%ld",button.tag - 1000);
}

- (void)homeView:(nonnull UIView *)view textFieldvalueChanged:(nonnull UITextField *)textField {
    NSLog(@"textFieldvalueChanged");
    NSLog(@"%@",textField.text);
}

@end
