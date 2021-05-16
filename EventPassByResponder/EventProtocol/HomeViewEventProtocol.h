//
//  HomeViewEventProtocol.h
//  EventPassByResponder
//
//  Created by Tom.Liu on 2021/5/16.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@protocol HomeViewEventProtocol <NSObject>

- (void)homeView:(UIView*)view textFieldvalueChanged:(UITextField *)textField;
- (void)homeView:(UIView*)view confirmButtonClicked:(UIButton *)button;
- (void)homeView:(UIView*)view menuButtonClicked:(UIButton *)button;
@end

NS_ASSUME_NONNULL_END
