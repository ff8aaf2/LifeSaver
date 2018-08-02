//
//  fahd.m
//  Borsa
//
//  Created by FAHD ALDOBIAN on 4/1/18.
//  Copyright © 2018 FAHD ALDOBIAN. All rights reserved.
//

#import "fahd.h"

@interface fahd ()

@end

@implementation fahd

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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





-(IBAction)CALL1:(id)sender{
    
    
    /*
     NSString *phone_number  =_phone_no_n0.text;
     
     NSString *phoneStrh = [[NSString alloc] initWithFormat:@"telprompt://%@",phone_number];
     NSURL *phoneURL = [[NSURL alloc] initWithString:phoneStrh];
     [[UIApplication sharedApplication] openURL:phoneURL];
     */
    
    
    
    
    
    NSString*url=@"https://api.whatsapp.com/send?";
    NSString*ph=@"phone=";
    NSString*sph=@"966592271719";
    
    NSString*mes=@"&text=";
    
    
    NSString*m0=@" - ";
    NSString*m1=@"\n";
    NSString*m2=@"  السلام عليكم اخي م/ فهد لقد اطلعت على تطبيق بورصه ولدي رغبة بعمل تطبيق   ";
    NSString*m3=@" علما بأن التطبيق عبارة عن:  ";
    
    NSString *message =[NSString stringWithFormat:@"%@%@%@%@%@",m2,m0,m1,m3,m1];
    NSString *all =[NSString stringWithFormat:@"%@%@%@%@%@",url,ph,sph,mes,message];
    
    NSString *dataUrl = all;
    
    
    dataUrl = [dataUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];    // fahd to arabic
    
    //   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://api.whatsapp.com/send?phone=966592271719&text=fofofofofof"]];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:dataUrl]];
    
    
    
    
}






- (IBAction)btn_back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}





@end
