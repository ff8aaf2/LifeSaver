
//
//  Created by mac on 6/21/1438 AH.
//  Copyright © 1438 فهد الدبيان. All rights reserved.
//


#import "about.h"
//#import "zzz.h"

@interface about ()
 
@end

@implementation about

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    // load _myphone
    NSUserDefaults *L_f300 =[NSUserDefaults standardUserDefaults];
    NSString *M_f300 = [L_f300 objectForKey:@"myphone"];
    [_myphone setText:M_f300];
    
    
    
    [_scroll_all setScrollEnabled:YES];    //////للتمرير
    [_scroll_all setContentSize:CGSizeMake(1,2299)];  //////للتمرير
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



 


- (IBAction)email:(id)sender {
    
    
    
    // Email Subject
    NSString *emailTitle = @" تطبيق   بورصه";
    // Email Content
    NSString *messageBody = @"  اكتب الرسالة هنا";
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"cream.dolci@gmail.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
    
    
}





- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
        {
            case MFMailComposeResultCancelled:
        NSLog(@"Mail cancelled");
        break;
            case MFMailComposeResultSaved:
        NSLog(@"Mail saved");
        break;
            case MFMailComposeResultSent:
        NSLog(@"Mail sent");
        break;
            case MFMailComposeResultFailed:
        NSLog(@"Mail sent failure: %@", [error localizedDescription]);
        break;
            default:
        break;
        }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"تم بنجاح "
                                                    message:@"  " delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
    [alert show];
    
    
    
}






- (IBAction)twitter:(id)sender {
    
    
    
 //   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/@ffffff"]];
    
}


- (IBAction)instgram:(id)sender {
    
    
    
  //  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://instagram.com/Dolci.578008008/"]];
    
    
}


- (IBAction)snapchat:(id)sender {
    
    
    
 //   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.snapchat.com/add/Dolci8008008"]];
    
    
    /*
     
     NSString *mystr=[[NSString alloc] initWithFormat:@"Snapchat://location?id=1"];
     NSURL *myurl=[[NSURL alloc] initWithString:mystr];
     [[UIApplication sharedApplication] openURL:myurl];
     */
    
}


- (IBAction)youtube:(id)sender {
    
    
    
 //   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://youtu.be/fffffff"]];
    
    
}




-(IBAction)CALL1:(id)sender{
    
    
    NSString *phone_number  =@"0592243987";
    
    NSString *phoneStrh = [[NSString alloc] initWithFormat:@"telprompt://%@",phone_number];
    NSURL *phoneURL = [[NSURL alloc] initWithString:phoneStrh];
    [[UIApplication sharedApplication] openURL:phoneURL];
    
}




-(IBAction)notfication_test:(id)sender{
/*

    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@" سوف يتم ارسال الاشعار بعد ١٠ ثواني ،لمشاهدة الاشعار يجب الخروج من التطبيق"
                                                    message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
    [alert show];
    
// tis to cancel notifaction
//[[UIApplication sharedApplication] cancelAllLocalNotifications];



// this to   Registering notification types
UIUserNotificationType types = UIUserNotificationTypeBadge |
UIUserNotificationTypeSound | UIUserNotificationTypeAlert;

UIUserNotificationSettings *mySettings =
[UIUserNotificationSettings settingsForTypes:types categories:nil];

[[UIApplication sharedApplication] registerUserNotificationSettings:mySettings];



// this local notification
UILocalNotification *localNotification = [[UILocalNotification alloc] init];
localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:15];
localNotification.alertBody = @"  اطلع علي اخر العروض في تطبيق    ";
localNotification.timeZone = [NSTimeZone defaultTimeZone];

[[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
// localNotification.soundName = @"sound1.mp3";
//local sound
// localNotification.soundName = UILocalNotificationDefaultSoundName;

 
 */
}










- (IBAction)btn_bank_message:(id)sender {
    
    if ( ([_name_bank.text isEqual:@""]) || ([_name_person_bank.text isEqual:@""])  |  ([_price_bank.text isEqual:@""])      ) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"  اكمل البيانات    "
                                                        message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
        [alert show];
    }else{
        
        
        NSString*kx=@"\n";
        NSString*k1=_name_bank.text;
        NSString*k2=_name_person_bank.text;
        NSString*k3=_price_bank.text;
        NSString*k4=@" ريال ";
        NSString*k5=@" رقم البائع: ";
        NSString*k6=_myphone.text;
        NSString *message =[NSString stringWithFormat:@"%@%@%@%@%@%@%@%@%@",k1,kx,k2,kx,k3,k4,kx,k5,k6];
        
        
        
        NSString*myurl=@"http://ayjabiun.com/app/email.php?";
        
        NSString*s1=@"subject=";
        NSString*p1=@" حوالة بنكية ";
        
        NSString*s2=@"&body=";
        NSString*p2=message;
        
        
        
        
        NSString *strURL =[NSString stringWithFormat:@"%@%@%@%@%@",myurl,s1,p1,s2,p2];
        
        
        
        //     NSData *dataURL = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL]];  // english
        
        NSData *dataURL =[[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:[strURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];            // uknown
        
        
        
        NSString *strResult = [[NSString alloc] initWithData:dataURL encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@", strResult);
        
        // _what.text=strResult;
        
        
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"  تم الارسال   "
                                                        message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
        [alert show];
        
        
    }
    
}








- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if(scrollView == _scroll_all) {
        
        [self DisKey ];
    }
}


- (IBAction)DismissKeyboard:(id)sender {
    
    
    [self DisKey ];
    
    
}

-(void) DisKey {
    
 
    [_name_bank resignFirstResponder];
    [_price_bank resignFirstResponder];
    [_name_person_bank resignFirstResponder];
 
}






- (IBAction)btn_back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}








@end
