//
//  orders.m

//
//  Created by mac on 7/1/1438 AH.
//  Copyright © 1438 فهد الدبيان. All rights reserved.
//

#import "orders.h"

@interface orders ()

@end

@implementation orders


@synthesize jsonArray,jsonArray2;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    CGRect frame8 = _v_pass.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _v_pass.frame= frame8;
    
    _spass.text=@"fkjdhgfdhfhdkjhzsghfhghfgjkh";
    
    [_scroll_all setScrollEnabled:YES];    //////للتمرير
    [_scroll_all setContentSize:CGSizeMake(1,999)];  //////للتمرير
    
    _search_url.text=@"http://dolciksa.com/app/ios/show_orders/ios/self_stored_ios.php?";
    
    [self retrieveData_pass];
   // [self retrieveData_orders];

    /*
    NSURL *buttonURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"saved" ofType:@"mp3"]];
    //    NSURL *buttonURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"next" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)buttonURL, &SoundID);
    AudioServicesPlaySystemSound(SoundID);
    
    */

    

    
    
}






- (void) retrieveData_pass
{
 
    
    
    NSString *NSurl =@"http://dolciksa.com/app/ios/pass/ios/self_pass_ios.php";
    NSURL * url = [NSURL URLWithString:[NSurl stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding]];
    
    
    
    //  NSString *NSurl =getDataURL;
    //  NSURL * url = [NSURL URLWithString:[NSurl stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding]];
    
    //   NSURL * url = [NSURL URLWithString:getDataURL];
    NSData * data = [NSData dataWithContentsOfURL:url];
    
    jsonArray =[NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    
    /*
     
     UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"لايوجد حساب حالياً   "
     message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
     [alert show];
     
     */
    
    
    //Loop through our jsonarray
    for (int i = 0; i <= jsonArray.count; i++)
            {
        
        
        
        
        if  (0 < jsonArray.count) {
            
            
            _spass.text=[[jsonArray objectAtIndex:0] objectForKey:@"password"];

            

        }
}

}
    
    
    


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





- (void) retrieveData_orders
{
    
    
    
    NSString *NSurl =_search_url.text;
    NSURL * url = [NSURL URLWithString:[NSurl stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding]];
    
    
    
    //  NSString *NSurl =getDataURL;
    //  NSURL * url = [NSURL URLWithString:[NSurl stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding]];
    
    //   NSURL * url = [NSURL URLWithString:getDataURL];
    NSData * data = [NSData dataWithContentsOfURL:url];
    
    jsonArray2 =[NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    
    /*
     
     UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"لايوجد حساب حالياً   "
     message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
     [alert show];
     
     */
    
    
    //Loop through our jsonarray2
    for (int i = 0; i <= jsonArray2.count; i++)
            {
        
      
        
        if  (0 < jsonArray2.count) {

            _mobile_n0.text=[[jsonArray2 objectAtIndex:0] objectForKey:@"mobile"];
            _descr_n0.text=[[jsonArray2 objectAtIndex:0] objectForKey:@"locations"];
            _v_n0.hidden=NO;

            

            
        }else{
            _v_n0.hidden=YES;
        }
        
        
        
        if  (1 < jsonArray2.count) {
            
            _mobile_n1.text=[[jsonArray2 objectAtIndex:1] objectForKey:@"mobile"];
            _descr_n1.text=[[jsonArray2 objectAtIndex:1] objectForKey:@"locations"];
            _v_n1.hidden=NO;
            
        }else{
            _v_n1.hidden=YES;
        }

        
        if  (2 < jsonArray2.count) {
            
            _mobile_n2.text=[[jsonArray2 objectAtIndex:2] objectForKey:@"mobile"];
            _descr_n2.text=[[jsonArray2 objectAtIndex:2] objectForKey:@"locations"];
            _v_n2.hidden=NO;
            
        }else{
            _v_n2.hidden=YES;
        }
        
        
        if  (3 < jsonArray2.count) {
            
            _mobile_n3.text=[[jsonArray2 objectAtIndex:3] objectForKey:@"mobile"];
            _descr_n3.text=[[jsonArray2 objectAtIndex:3] objectForKey:@"locations"];
            _v_n3.hidden=NO;
            
        }else{
            _v_n3.hidden=YES;
        }
        
        
        if  (4 < jsonArray2.count) {
            
            _mobile_n4.text=[[jsonArray2 objectAtIndex:4] objectForKey:@"mobile"];
            _descr_n4.text=[[jsonArray2 objectAtIndex:4] objectForKey:@"locations"];
            _v_n4.hidden=NO;
            
        }else{
            _v_n4.hidden=YES;
        }
        
        
        if  (5 < jsonArray2.count) {
            
            _mobile_n5.text=[[jsonArray2 objectAtIndex:5] objectForKey:@"mobile"];
            _descr_n5.text=[[jsonArray2 objectAtIndex:5] objectForKey:@"locations"];
            _v_n5.hidden=NO;
            _next.hidden=NO;

            
        }else{
            _v_n5.hidden=YES;
            _next.hidden=YES;
        }
        

        
        
        
 }
    
}









//////////////////




- (IBAction)btn_n0:(id)sender {
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[[jsonArray2 objectAtIndex:0] objectForKey:@"descr"]
                                                    message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
    [alert show];
    
    
    
}

- (IBAction)btn_n1:(id)sender {
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[[jsonArray2 objectAtIndex:1] objectForKey:@"descr"]
                                                    message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
    [alert show];
    
    
    
}
- (IBAction)btn_n2:(id)sender {
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[[jsonArray2 objectAtIndex:2] objectForKey:@"descr"]
                                                    message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
    [alert show];
    
    
    
}
- (IBAction)btn_n3:(id)sender {
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[[jsonArray2 objectAtIndex:3] objectForKey:@"descr"]
                                                    message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
    [alert show];
    
    
    
}
- (IBAction)btn_n4:(id)sender {
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[[jsonArray2 objectAtIndex:4] objectForKey:@"descr"]
                                                    message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
    [alert show];
    
    
    
}
- (IBAction)btn_n5:(id)sender {
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[[jsonArray2 objectAtIndex:5] objectForKey:@"descr"]
                                                    message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
    [alert show];
    
    
    
}






- (IBAction)btn_whats_n0:(id)sender {
    

    
    NSString * tt1=[NSString stringWithFormat:@"%@ ---- %@", [[jsonArray2 objectAtIndex:0] objectForKey:@"descr"],[[jsonArray2 objectAtIndex:0] objectForKey:@"mobile"]];
    
    NSArray* sharedObjects=[NSArray arrayWithObjects:tt1,  nil];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc]
                                                        initWithActivityItems:sharedObjects applicationActivities:nil];
    activityViewController.popoverPresentationController.sourceView = self.view;
    [self presentViewController:activityViewController animated:YES completion:nil];
    
}


- (IBAction)btn_whats_n1:(id)sender {
    
    NSString * tt1=[NSString stringWithFormat:@"%@ ---- %@", [[jsonArray2 objectAtIndex:1] objectForKey:@"descr"],[[jsonArray2 objectAtIndex:1] objectForKey:@"mobile"]];
    
    NSArray* sharedObjects=[NSArray arrayWithObjects:tt1,  nil];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc]
                                                        initWithActivityItems:sharedObjects applicationActivities:nil];
    activityViewController.popoverPresentationController.sourceView = self.view;
    [self presentViewController:activityViewController animated:YES completion:nil];
    
}


- (IBAction)btn_whats_n2:(id)sender {
    
    NSString * tt1=[NSString stringWithFormat:@"%@ ---- %@", [[jsonArray2 objectAtIndex:2] objectForKey:@"descr"],[[jsonArray2 objectAtIndex:2] objectForKey:@"mobile"]];
    
    NSArray* sharedObjects=[NSArray arrayWithObjects:tt1,  nil];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc]
                                                        initWithActivityItems:sharedObjects applicationActivities:nil];
    activityViewController.popoverPresentationController.sourceView = self.view;
    [self presentViewController:activityViewController animated:YES completion:nil];
    
}


- (IBAction)btn_whats_n3:(id)sender {
    
    NSString * tt1=[NSString stringWithFormat:@"%@ ---- %@", [[jsonArray2 objectAtIndex:3] objectForKey:@"descr"],[[jsonArray2 objectAtIndex:3] objectForKey:@"mobile"]];
    
    NSArray* sharedObjects=[NSArray arrayWithObjects:tt1,  nil];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc]
                                                        initWithActivityItems:sharedObjects applicationActivities:nil];
    activityViewController.popoverPresentationController.sourceView = self.view;
    [self presentViewController:activityViewController animated:YES completion:nil];
    
}


- (IBAction)btn_whats_n4:(id)sender {
    
    NSString * tt1=[NSString stringWithFormat:@"%@ ---- %@", [[jsonArray2 objectAtIndex:4] objectForKey:@"descr"],[[jsonArray2 objectAtIndex:4] objectForKey:@"mobile"]];
    
    NSArray* sharedObjects=[NSArray arrayWithObjects:tt1,  nil];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc]
                                                        initWithActivityItems:sharedObjects applicationActivities:nil];
    activityViewController.popoverPresentationController.sourceView = self.view;
    [self presentViewController:activityViewController animated:YES completion:nil];
    
}


- (IBAction)btn_whats_n5:(id)sender {
    
    NSString * tt1=[NSString stringWithFormat:@"%@ ---- %@", [[jsonArray2 objectAtIndex:5] objectForKey:@"descr"],[[jsonArray2 objectAtIndex:5] objectForKey:@"mobile"]];
    
    NSArray* sharedObjects=[NSArray arrayWithObjects:tt1,  nil];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc]
                                                        initWithActivityItems:sharedObjects applicationActivities:nil];
    activityViewController.popoverPresentationController.sourceView = self.view;
    [self presentViewController:activityViewController animated:YES completion:nil];
    
}










//////////////////////////

- (IBAction)login:(id)sender {

if([_tpass.text isEqual: _spass.text]){
    

    CGRect frame8 = _v_pass.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 1111;//pass bbbbbb the cordinate which you want
    _v_pass.frame= frame8;
    
    _timer_update = [NSTimer scheduledTimerWithTimeInterval:10.50 target:self selector:@selector(timer_chick) userInfo:nil repeats:YES];
    
    
    
    [self retrieveData_orders];

}else{
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"  كلمة المرور غير صحيحة   "
                                                    message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
    [alert show];


}
}




- (IBAction)next:(id)sender {

    NSString * tn=[NSString stringWithFormat:@"%@%@%@", _search_url.text,@"&id=",[[jsonArray2 objectAtIndex:5] objectForKey:@"id"]];

    _search_url.text=tn;
    
    [self retrieveData_orders];
    
    /*
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:tn
                                                    message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
    [alert show];
     */
}
- (IBAction)top:(id)sender {
    
    _search_url.text=@"http://dolciksa.com/app/ios/show_orders/ios/self_stored_ios.php?";

    [self retrieveData_orders];

}



- (IBAction)search:(id)sender {

    NSString * tn=[NSString stringWithFormat:@"%@%@%@",@"http://dolciksa.com/app/ios/show_orders/ios/self_stored_ios.php?",@"&mobile=",_word.text];
    
    _search_url.text=tn;
    
    [self retrieveData_orders];
    

    
}



-(void) timer_chick {
    
/*
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"uuuuuuuu"
                                                    message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
    [alert show];
    */
    if([_newid.text isEqual: [[jsonArray2 objectAtIndex:0] objectForKey:@"id"]]){
        
        [self retrieveData_orders];

    }else{
    
        _search_url.text=@"http://dolciksa.com/app/ios/show_orders/ios/self_stored_ios.php?";

      
        // play sound
        NSURL *buttonURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"saved" ofType:@"mp3"]];
        //    NSURL *buttonURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"next" ofType:@"wav"]];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)buttonURL, &SoundID);
        AudioServicesPlaySystemSound(SoundID);
        
        
        // save url
        NSString *S_f300 =[[jsonArray2 objectAtIndex:0] objectForKey:@"id"];
        NSUserDefaults *D_f300 =[NSUserDefaults standardUserDefaults];
        [D_f300 setObject :S_f300 forKey:@"newid"];
        [D_f300 synchronize];

        // load
        NSUserDefaults *L_f300 =[NSUserDefaults standardUserDefaults];
        NSString *M_f300 = [L_f300 objectForKey:@"newid"];
        [_newid setText:M_f300];
        
        _search_url.text=@"http://dolciksa.com/app/ios/show_orders/ios/self_stored_ios.php?";

        [self retrieveData_orders];


}

}


- (IBAction)DismissKeyboard:(id)sender {
    
    
    [_tpass resignFirstResponder];
    [_word resignFirstResponder];

    
    
    
    
    
}


    


@end
