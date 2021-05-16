//
//  UIResponder+NextResponder.m
//  EventPassByResponder
//
//  Created by Tom.Liu on 2021/5/16.
//

#import "UIResponder+NextResponder.h"
#import <objc/runtime.h>

static void *kNextResponderKey = "com.tom.NextResponderKey";

@implementation UIResponder (NextResponder)

-(void)passEventName:(NSString *)eventName fromObject:(id )obj withUserInfo:(NSDictionary *)userInfo {
    [[self nextResponder] passEventName:eventName fromObject:obj withUserInfo:userInfo];
}


- (void)setNr_eventDelegate:(id)nr_eventDelegate {
    objc_setAssociatedObject(self, kNextResponderKey, nr_eventDelegate, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


- (id)nr_eventDelegate {
    return objc_getAssociatedObject(self, kNextResponderKey);
}



@end
