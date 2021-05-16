//
//  UIResponder+NextResponder.h
//  EventPassByResponder
//
//  Created by Tom.Liu on 2021/5/16.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIResponder (NextResponder)
-(void)routerEventName:(NSString *)eventName userInfo:(NSDictionary *)userInfo;

@end

NS_ASSUME_NONNULL_END
