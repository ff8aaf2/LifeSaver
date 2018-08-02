//
//  tell_us.m
//  Borsa
//
//  Created by FAHD ALDOBIAN on 4/26/18.
//  Copyright © 2018 FAHD ALDOBIAN. All rights reserved.
//


#import "tell_us.h"

@interface tell_us ()

@end

@implementation tell_us

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    // load myid
    NSUserDefaults *L_f300zx =[NSUserDefaults standardUserDefaults];
    NSString *M_f300zx = [L_f300zx objectForKey:@"myid_x"];
    [_myid setText:M_f300zx];
    
    
    
}










- (IBAction)btn_bank_message:(id)sender {
    
    if ( ([_comment.text isEqual:@""])      ) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"  اكتب ملاحظتك على  الاعلان     "
                                                        message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
        [alert show];
    }else{
        
        
        NSString*kx=@"\n";
        NSString*k1=_myid.text;
        NSString*k2=_comment.text;
        NSString *message =[NSString stringWithFormat:@"%@%@%@",k1,kx,k2];
        
        
        
        NSString*myurl=@"http://ayjabiun.com/app/email.php?";
        
        NSString*s1=@"subject=";
        NSString*p1=@"  اعلان غير لائق ";
        
        NSString*s2=@"&body=";
        NSString*p2=message;
        
        
        
        
        NSString *strURL =[NSString stringWithFormat:@"%@%@%@%@%@",myurl,s1,p1,s2,p2];
        
        
        
        //     NSData *dataURL = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL]];  // english
        
        NSData *dataURL =[[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:[strURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];            // uknown
        
        
        
        NSString *strResult = [[NSString alloc] initWithData:dataURL encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@", strResult);
        
        // _what.text=strResult;
        
        
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"  شكرا لك تم الارسال   "
                                                        message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
        [alert show];
        
        
    }
    
}






- (IBAction)btn_back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}








@end
