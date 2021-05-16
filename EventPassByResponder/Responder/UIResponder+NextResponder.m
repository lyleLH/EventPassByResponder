//
//  UIResponder+NextResponder.m
//  EventPassByResponder
//
//  Created by Tom.Liu on 2021/5/16.
//

#import "UIResponder+NextResponder.h"

@implementation UIResponder (NextResponder)

-(void)routerEventName:(NSString *)eventName userInfo:(NSDictionary *)userInfo{
    [[self nextResponder] routerEventName:eventName userInfo:userInfo];
}

@end
