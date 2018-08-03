//
//  HM.m
//  hackathon
//
//  Created by FAHD ALDOBIAN on 8/2/18.
//  Copyright © 2018 FAHD ALDOBIAN. All rights reserved.
//

#import "HM.h"

@interface HM ()

@end

@implementation HM

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [_scroll_all setScrollEnabled:YES];    //////للتمرير
    [_scroll_all setContentSize:CGSizeMake(1,1111)];  //////للتمرير
    
    
    
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




- (IBAction)btn_h1:(id)sender {
    
    NSString *sw  =@"https://maps.google.com/?q=";
    
    NSString *slat  =@"21.3346274";
    NSString *sc  =@",";
    NSString *slon  =@"39.9871123";
    
    NSString *mylocation =[NSString stringWithFormat:@"%@%@%@%@",sw,slat,sc,slon];
    // _mylocation.text=mylocation;
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:mylocation]];
    

}





- (IBAction)btn_h2:(id)sender {
    NSString *sw  =@"https://maps.google.com/?q=";
    
    NSString *slat  =@"21.3346269";
    NSString *sc  =@",";
    NSString *slon  =@"39.9870694";
    
    NSString *mylocation =[NSString stringWithFormat:@"%@%@%@%@",sw,slat,sc,slon];
    // _mylocation.text=mylocation;
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:mylocation]];
    
    
    
}


- (IBAction)btn_h3:(id)sender {
    NSString *sw  =@"https://maps.google.com/?q=";
    
    NSString *slat  =@"21.3731402";
    NSString *sc  =@",";
    NSString *slon  =@"39.9884828";
    
    NSString *mylocation =[NSString stringWithFormat:@"%@%@%@%@",sw,slat,sc,slon];
    // _mylocation.text=mylocation;
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:mylocation]];
    
    
   
}












- (IBAction)btn_v0:(id)sender {
    NSString *sw  =@"http://ff8aaf.com/myapp/hackathon/video/Demo.m4v";
    
    NSString *slat  =@"";
    NSString *sc  =@"";
    NSString *slon  =@"";
    
    NSString *mylocation =[NSString stringWithFormat:@"%@%@%@%@",sw,slat,sc,slon];
    // _mylocation.text=mylocation;
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:mylocation]];
    
}



- (IBAction)btn_v1:(id)sender {
    NSString *sw  =@"http://ff8aaf.com/myapp/hackathon/video/blood.m4v";
    
    NSString *slat  =@"";
    NSString *sc  =@"";
    NSString *slon  =@"";
    
    NSString *mylocation =[NSString stringWithFormat:@"%@%@%@%@",sw,slat,sc,slon];
    // _mylocation.text=mylocation;
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:mylocation]];
    
    
}



- (IBAction)btn_v3:(id)sender {
    NSString *sw  =@"http://ff8aaf.com/myapp/hackathon/video/snak.m4v";
    
    NSString *slat  =@"";
    NSString *sc  =@"";
    NSString *slon  =@"";
    
    NSString *mylocation =[NSString stringWithFormat:@"%@%@%@%@",sw,slat,sc,slon];
    // _mylocation.text=mylocation;
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:mylocation]];
    
    
}










- (IBAction)btn_back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}


@end
