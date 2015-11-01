//
//  MessagesViewController.m
//  Pivot
//
//  Created by Lauren Caponong on 11/1/15.
//  Copyright © 2015 Jason Wang. All rights reserved.
//

#import "MessagesViewController.h"

@interface MessagesViewController ()
@property (weak, nonatomic) IBOutlet UILabel *senderLabel;
@property (weak, nonatomic) IBOutlet UILabel *receiverLabel;

@property (weak, nonatomic) IBOutlet UITextField *messageTextField;
@end

@implementation MessagesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)sendButtonTapped:(UIButton *)sender {
    
    if(![self.senderLabel.text isEqualToString:@"Label"]){
        self.receiverLabel.text = self.messageTextField.text;
        
        self.messageTextField.text = @"";
    }else{
    
    self.senderLabel.text = self.messageTextField.text;
    
        self.messageTextField.text = @"";
    }
    
    

}


@end
