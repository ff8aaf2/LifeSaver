//
//  search.m
//  hackathon
//
//  Copyright © 2018 FAHD ALDOBIAN. All rights reserved.
//

#import "search.h"

@interface search ()

@end


@implementation search


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    // load _search_url
    NSUserDefaults *L_f300z =[NSUserDefaults standardUserDefaults];
    NSString *M_f300z = [L_f300z objectForKey:@"search_url"];
    [_search_url setText:M_f300z];
    
    

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}








- (IBAction)btn_1:(id)sender {
    
    
    NSString* myurl=_search_url.text;
    
    
    NSString* s0  =@"&type=";
    NSString* p0  =@"متطوع";
    
    NSString *x_myurl =[NSString stringWithFormat:@"%@%@%@",myurl,s0,p0];
    
    // save _search_url
    NSString *S_f11u =x_myurl;
    NSUserDefaults *D_f11u =[NSUserDefaults standardUserDefaults];
    [D_f11u setObject :S_f11u forKey:@"search_url"];
    [D_f11u synchronize];
    
    
    [self performSegueWithIdentifier:@"go" sender:self];
    
    
    
    
}






- (IBAction)btn_2:(id)sender {
    
    
    NSString* myurl=_search_url.text;
    
    
    NSString* s0  =@"&type=";
    NSString* p0  =@"سيارة";
    
    NSString *x_myurl =[NSString stringWithFormat:@"%@%@%@",myurl,s0,p0];
    
    // save _search_url
    NSString *S_f11u =x_myurl;
    NSUserDefaults *D_f11u =[NSUserDefaults standardUserDefaults];
    [D_f11u setObject :S_f11u forKey:@"search_url"];
    [D_f11u synchronize];
    
    
    [self performSegueWithIdentifier:@"go" sender:self];
    
    
    
    
}



- (IBAction)btn_back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}











@end
