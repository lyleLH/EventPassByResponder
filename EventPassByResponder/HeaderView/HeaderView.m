//
//  HeaderView.m
//  EventPassByResponder
//
//  Created by Tom.Liu on 2021/5/16.
//

#import "HeaderView.h"
#import "UIResponder+NextResponder.h"


@interface HeaderView ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation HeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (void)textfieldEditingChange:(UITextField *)sender {
    
    [self routerEventName:@"textfieldEditingDidEnd" userInfo:@{@"textField":sender}];
}

- (IBAction)confirmButtonClicked:(UIButton*)sender {
    
    [self routerEventName:@"confirmButtonClicked" userInfo:@{@"button":sender}];
}
 
- (void)setTextField:(UITextField *)textField {
    [textField addTarget:self action:@selector(textfieldEditingChange:) forControlEvents:UIControlEventEditingChanged];
    _textField  = textField;
}
@end
