//
//  HeaderView.m
//  EventPassByResponder
//
//  Created by Tom.Liu on 2021/5/16.
//

#import "HeaderView.h"


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
    [self passEventName:@"textfieldEditingDidEnd" fromObject:sender withUserInfo:@{}];
     
}

- (IBAction)confirmButtonClicked:(UIButton*)sender {
    [self passEventName:@"confirmButtonClicked" fromObject:sender withUserInfo:@{}];

}
 
- (void)setTextField:(UITextField *)textField {
    [textField addTarget:self action:@selector(textfieldEditingChange:) forControlEvents:UIControlEventEditingChanged];
    _textField  = textField;
}
@end
