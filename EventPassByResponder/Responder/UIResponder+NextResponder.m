//
//  UIResponder+NextResponder.m
//  EventPassByResponder
//
//  Created by Tom.Liu on 2021/5/16.
//

#import "UIResponder+NextResponder.h"

@implementation UIResponder (NextResponder)

-(void)passEventName:(NSString *)eventName fromObject:(id )obj withUserInfo:(NSDictionary *)userInfo {
    [[self nextResponder] passEventName:eventName fromObject:obj withUserInfo:userInfo];
}

@end
