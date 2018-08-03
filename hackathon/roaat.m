//
//  roaat.m
//  Borsa
//
//  Created by FAHD ALDOBIAN on 5/5/18.
//  Copyright © 2018 FAHD ALDOBIAN. All rights reserved.
//

#import "roaat.h"

@interface roaat ()

@end

@implementation roaat






- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:5.30 target:self selector:@selector(updateTimer) userInfo:nil repeats:NO];
    
    
}





-(void) updateTimer {
    
    
    //
       [self performSegueWithIdentifier:@"go" sender:self];
    //
    //    [self.navigationController popViewControllerAnimated:YES];
 


}



@end
