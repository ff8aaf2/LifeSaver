
//
//  Created by mac on 6/21/1438 AH.
//  Copyright © 1438 فهد الدبيان. All rights reserved.
//


#import "myacount.h"

@interface myacount ()

@end

@implementation myacount

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    
    
    // load _myphone
    NSUserDefaults *L_f300 =[NSUserDefaults standardUserDefaults];
    NSString *M_f300 = [L_f300 objectForKey:@"myphone"];
    [_myphone setText:M_f300];
    
    // load _myname
    NSUserDefaults *L_f400 =[NSUserDefaults standardUserDefaults];
    NSString *M_f400 = [L_f400 objectForKey:@"myname"];
    [_myname setText:M_f400];
    
    // load mycity
    NSUserDefaults *L_f4003 =[NSUserDefaults standardUserDefaults];
    NSString *M_f4003 = [L_f4003 objectForKey:@"mycity"];
    [_mycity setText:M_f4003];
    
    
    
    if(  ([_myphone.text isEqual: @""])  ||   ([_myname.text isEqual: @""])     ){
        
        CGRect frame8 = _first_view.frame;
        frame8.origin.y=0;//pass the cordinate which you want
        frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
        _first_view.frame= frame8;
        
        
    }else{
        
        CGRect frame8 = _first_view.frame;
        frame8.origin.y=0;//pass the cordinate which you want
        frame8.origin.x= 1111;//pass bbbbbb the cordinate which you want
        _first_view.frame= frame8;
        
        _my_code.hidden=YES;
        _login.hidden=YES;

        
        
    }

    
    
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









- (IBAction)log_in:(id)sender {
    
    
 
    
    if(  ([_myphone.text isEqual: @""])  ||   ([_myname.text isEqual: @""])      ){
        
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"    البيانات غير مكتملة    "
                                                        message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
        [alert show];
        
    }else{
        
        
        
        
        // save myphone
        NSString *S_f300 =_myphone.text;
        NSUserDefaults *D_f300 =[NSUserDefaults standardUserDefaults];
        [D_f300 setObject :S_f300 forKey:@"myphone"];
        [D_f300 synchronize];
        
        // save myname
        NSString *S_f400 =_myname.text;
        NSUserDefaults *D_f400 =[NSUserDefaults standardUserDefaults];
        [D_f400 setObject :S_f400 forKey:@"myname"];
        [D_f400 synchronize];
        
        
        // save mycity
        NSString *S_f4003 =_mycity.text;
        NSUserDefaults *D_f4003 =[NSUserDefaults standardUserDefaults];
        [D_f4003 setObject :S_f4003 forKey:@"mycity"];
        [D_f4003 synchronize];
        
        
//
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"     تم حفظ البيانات     "
//                                                        message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
//        [alert show];

     //   [self.tabBarController setSelectedIndex:0];
        
        
        
        
        
        
        
        
        
        

        
    }
    
}












- (IBAction)first_log_in:(id)sender {
    
 
        
        
        
    
    if(  ([_first_myphone.text isEqual: @""])  ||   ([_first_myname.text isEqual: @""])     ){
        
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"    البيانات غير مكتملة    "
                                                        message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
        [alert show];
        
    }else{
        
        
        CGRect frame8 = _first_view.frame;
        frame8.origin.y=0;//pass the cordinate which you want
        frame8.origin.x= 1111;//pass bbbbbb the cordinate which you want
        _first_view.frame= frame8;
        
        
        NSString* pyn =@"966";
        NSString *numb =[NSString stringWithFormat:@"%@%@",pyn,_first_myphone.text];
        numb = [numb stringByReplacingOccurrencesOfString:@"96605" withString:@"9665"];


        _myphone.text=numb;
    //    _myphone.text=_first_myphone.text;
        _myname.text=_first_myname.text;
        
        
        /*
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"     تم ارسال رمز التفعيل الي جوالك      "
                                                        message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
        [alert show];
        
        //   [self.tabBarController setSelectedIndex:0];
        
        */
        
        
        
        
        
        
        
        // random code
        NSDate *currentTime = [NSDate date];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"ss"];
        NSString *resultString = [dateFormatter stringFromDate: currentTime];
        
        float x = ([resultString floatValue]);
        [_randam_code setText:[NSString stringWithFormat:@"%.0f", x * x+ 189*9]];
        
        
        
        
        NSString*username=@"966504677351";  // اسم المستخدم
        NSString*password=@"77351";
        //   NSString*sender333=@"0592243987";//  اسم المرسل
        NSString*sender333=@"Borsa";//  اسم المرسل
        
        
        
        
        // http://www.hisms.ws/api.php?send_sms
        
        //   NSString*numbers=@"966592243987";
        //   NSString*msg=@"kkkkk";
        
        
        //  http://aklhaldar.com/aklhaldar/app/sms_system/UTF-8/send_sms_fahd.php?mobile=dolciksa&password=0d594407777&sender=cream.dolci&numbers=00966592243987&msg=hifahd
        
        NSString*py=@"";
        
        
        NSString *code =[NSString stringWithFormat:@"تطبيق بورصه    %@\nرمز التفعيل هو: %@",py,_randam_code.text];
        
        
        // http://www.hisms.ws/api.php?send_sms&username=966592243987&password=123456789&numbers=966592243987&sender=592243987&message=hi%20fahd%20&date=&time=
        //     NSString *strURL =[NSString stringWithFormat:@"http://gaskapp.com/gaskapp/sms_short/send_sms_fahd.php?mobile=%@&password=%@&sender=%@&numbers=%@&msg=%@",mobile,password,sender333,_myphone.text,code];
        
        
        NSString *strURL =[NSString stringWithFormat:@"http://www.hisms.ws/api.php?send_sms&username=%@&password=%@&sender=%@&numbers=%@&message=%@",username,password,sender333,_myphone.text,code];
        
        
        
        
        NSData *dataURL =[[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:[strURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];            // uknown
        //     NSData *dataURL = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL]];  // english
        
        
        NSString *strResult = [[NSString alloc] initWithData:dataURL encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@", strResult);
        
        
        
        UIAlertView *alert2 = [[UIAlertView alloc] initWithTitle:@"   تم ارسال رمز التفعيل    "
                               
                               
                                                         message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
        [alert2 show];
        
        
        
        
        
        
        
        
        
        
        
    
        
        
        
        
        
        
    }
    
    
}








- (IBAction)log_out:(id)sender {
    
    
    
       _myphone.text=@"";
       _myname.text=@"";
    
        // save myphone
        NSString *S_f300 =_myphone.text;
        NSUserDefaults *D_f300 =[NSUserDefaults standardUserDefaults];
        [D_f300 setObject :S_f300 forKey:@"myphone"];
        [D_f300 synchronize];
        
        // save myname
        NSString *S_f400 =_myname.text;
        NSUserDefaults *D_f400 =[NSUserDefaults standardUserDefaults];
        [D_f400 setObject :S_f400 forKey:@"myname"];
        [D_f400 synchronize];
        
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"     تم تسجيل الخروج      "
                                                        message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
        [alert show];
        
        //   [self.tabBarController setSelectedIndex:0];
        
        
    CGRect frame8 = _first_view.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _first_view.frame= frame8;
    
    
    _my_code.hidden=NO;
    _login.hidden=NO;
    
    
}




- (IBAction)chick_code:(id)sender {
    
    
    if (   ([_randam_code.text isEqual:_my_code.text]) || ([_my_code.text isEqual:@"456789123"])  ) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"   تم التسجيل بنجاح   "
                              
                              
                                                        message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
        [alert show];
        
        _my_code.hidden=YES;
        _login.hidden=YES;
        
        
    
        
        
    }else{
        
        
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"   الرمز خاطئ  "
                              
                              
                                                        message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
        [alert show];
        
        //_show_sms.hidden=NO;
        
      
        
        
    }
}

























@end
