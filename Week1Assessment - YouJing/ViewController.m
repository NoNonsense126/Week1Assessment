//
//  ViewController.m
//  Week1Assessment - YouJing
//
//  Created by Wong You Jing on 15/01/2016.
//  Copyright © 2016 NoNonsense. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *operandOne;
@property (weak, nonatomic) IBOutlet UITextField *operandTwo;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *webNavButton;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)calculateButtonTapped:(id)sender {
    int opOne = [self.operandOne.text intValue];
    int opTwo = [self.operandTwo.text intValue];
    int total = opOne * opTwo;
    self.title = [NSString stringWithFormat:@"%d", total];
    self.navigationItem.title = [NSString stringWithFormat:@"%d", total];
    [self dismissKeyboard];
    [self calculationViewChanges:total];

}

-(void)calculationViewChanges:(int)total{
    if(total % 3 == 0){
        self.webNavButton.enabled = true;
    }else{
        self.webNavButton.enabled = false;
    }
    if(total > 20){
        self.view.backgroundColor = [UIColor purpleColor];
    }else{
        self.view.backgroundColor = [UIColor whiteColor];
    }
}


-(void)dismissKeyboard {
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
}
@end
