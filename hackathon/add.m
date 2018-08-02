//
//  add.m
//  hackathon
//
//  Created by FAHD ALDOBIAN on 8/2/18.
//  Copyright © 2018 FAHD ALDOBIAN. All rights reserved.
//

#import "add.h"

@interface add ()

@end

@implementation add

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    // load lat
    NSUserDefaults *L_f300zq =[NSUserDefaults standardUserDefaults];
    NSString *M_f300zq = [L_f300zq objectForKey:@"xxxlat"];
    [_xlat setText:M_f300zq];
    
    // load lon
    NSUserDefaults *L_f300zqw =[NSUserDefaults standardUserDefaults];
    NSString *M_f300zqw = [L_f300zqw objectForKey:@"xxxlon"];
    [_xlon setText:M_f300zqw];
    
    
}





- (IBAction)btn_show_type:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"اختر التصنيف"
                                                                   message:@""
                                                            preferredStyle:UIAlertControllerStyleActionSheet]; // 1
    
    
    
    UIAlertAction *aler_n0 = [UIAlertAction actionWithTitle:@"طبيب"
                                                      style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                                                          NSLog(@"You pressed button _n1");
                                                          _type.text=@"طبيب";
                                       
                                                      }];
    
    
    
    
    
    
    UIAlertAction *aler_n1 = [UIAlertAction actionWithTitle:@"اسعافات اولية"
                                                      style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                                                          NSLog(@"You pressed button _n1");
                                                          _type.text=@"اسعافات اولية";
                                                          
                                                      }];
    
    
    
    
    UIAlertAction *aler_n2 = [UIAlertAction actionWithTitle:@"ssssss"
                                                      style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                                                          NSLog(@"You pressed button _n1");
                                                          _type.text=@"طبيبة";
                                                          
                                                      }];
    
    
    
    
    
    
    
    [alert addAction:aler_n0];
    [alert addAction:aler_n1];
    [alert addAction:aler_n2];
    //  [alert addAction:aler_n4];
    
    alert.view.tintColor = [UIColor blackColor];
    
    
    
    [self presentViewController:alert animated:YES completion:nil];
    
}










    

- (IBAction)btn_buy_total:(id)sender {
    
    if(  ([_name.text isEqual: @""])  ||   ([_mobile.text isEqual: @""])     ){
        
        
        
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"    يجب تسجيل بياناتك    "
                                                        message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
        [alert show];
        
        [self.tabBarController setSelectedIndex:2];
        
        
    }else{
        
        
        
        
                NSString *url=@"http://ff8aaf.com/myapp/hackathon/add_service.php?";
                NSString *p0=@"name=";
                NSString *p1=_name.text;
                NSString *p2=@"&mobile=";
                NSString *p3=_mobile.text;
                NSString *p4=@"&spcia=";
                NSString *p5=_spcia.text;
                NSString *p6=@"&type=";
                NSString *p7=_type.text;
                NSString *p8=@"&active=";
                NSString *p9=@"0";
        
        NSString *p10=@"&lat=";
        NSString *p11=_xlat.text;
        NSString *p12=@"&lon=";
        NSString *p13=_xlon.text;
        
        
        
        // load lat
        NSUserDefaults *L_f300zq =[NSUserDefaults standardUserDefaults];
        NSString *M_f300zq = [L_f300zq objectForKey:@"xxxlat"];
        [_xlat setText:M_f300zq];
        
        // load lon
        NSUserDefaults *L_f300zqw =[NSUserDefaults standardUserDefaults];
        NSString *M_f300zqw = [L_f300zqw objectForKey:@"xxxlon"];
        [_xlon setText:M_f300zqw];

        
        
                
                NSString *strURL =[NSString stringWithFormat:@"%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@",url,p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13];
                
        
        
                
                //   NSData *dataURL = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL]];  // english
                
                NSData *dataURL =[[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:[strURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];            // uknown
                
                
                
                NSString *strResult = [[NSString alloc] initWithData:dataURL encoding:NSUTF8StringEncoding];
                
                NSLog(@"%@", strResult);
                
                // _what.text=strResult;
                
                
                
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"   تم استلام الطلب وسوف يتم الاتصال بكم لتأكيد    "
                                      
                                      
                                                                message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
                [alert show];
                
                
        
        
                

        
            
            

        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
}








@end
