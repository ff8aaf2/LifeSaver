//
//  Details.m
//  Borsa
//
//  Created by FAHD ALDOBIAN on 3/19/18.
//  Copyright © 2018 FAHD ALDOBIAN. All rights reserved.
//

#import "Details.h"

@interface Details ()

@end







@implementation Details
@synthesize jsonArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
 
    _store_name_n0.text=@"";
    _price_n0.text=@"";
    _other_n0.text=@"";
    _plase_n0.text=@"";
    _phone_no_n0.text=@"";
    _store_desc_n0.text=@"";

    
    [_scroll_all setScrollEnabled:YES];    //////للتمرير
    [_scroll_all setContentSize:CGSizeMake(1,1333)];  //////للتمرير
    
    
    // load _search_url
    NSUserDefaults *L_f300z =[NSUserDefaults standardUserDefaults];
    NSString *M_f300z = [L_f300z objectForKey:@"search_url"];
    [_search_url setText:M_f300z];
    
    
    // load myid
    NSUserDefaults *L_f300zx =[NSUserDefaults standardUserDefaults];
    NSString *M_f300zx = [L_f300zx objectForKey:@"myid"];
    [_myid setText:M_f300zx];
    
    
 
    
    NSString*t1=@"http://ayjabiun.com/app/ios/show_stored/self_stored.php?store_id=";
    NSString*t2=_myid.text;
    
    
    NSString *detail_url =[NSString stringWithFormat:@"%@%@",t1,t2];

    _search_url.text=detail_url;
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.10 target:self selector:@selector(updateTimer) userInfo:nil repeats:NO];

 
    
}






-(void) updateTimer {
    
    
    [self retrieveData];
    
}









- (void) retrieveData
{
    
    
    
    
    NSString *NSurl =_search_url.text;
    NSURL * url = [NSURL URLWithString:[NSurl stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding]];
    
    
    
    NSData * data = [NSData dataWithContentsOfURL:url];
    
    jsonArray =[NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    
    
    
    
    
    //Loop through our jsonarray
    for (int i = 0; i <= jsonArray.count; i++)
    {
        
        
        

        if  (0 < jsonArray.count) {
            
            _store_name_n0.text=[[jsonArray objectAtIndex:0] objectForKey:@"store_name"];
            _price_n0.text=[[jsonArray objectAtIndex:0] objectForKey:@"price"];
            _other_n0.text=[[jsonArray objectAtIndex:0] objectForKey:@"other"];
            _url_n0.text=[[jsonArray objectAtIndex:0] objectForKey:@"url"];
            _phone_no_n0.text= [[jsonArray objectAtIndex:0] objectForKey:@"phone_no"];
            _store_desc_n0.text =[[jsonArray objectAtIndex:0] objectForKey:@"store_desc"];

            
            NSString* store_address =[[jsonArray objectAtIndex:0] objectForKey:@"store_address"];
            NSString* type1 =[[jsonArray objectAtIndex:0] objectForKey:@"type1"];
            NSString* barcode =[[jsonArray objectAtIndex:0] objectForKey:@"barcode"];

            NSString*s=@" - ";
            NSString*sa=store_address;
            NSString*sb=type1;
            NSString*sc=barcode;
            _plase_n0.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
            
            
            
            
        }else{
 
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"لا يوجد نتيجة   "
                                                            message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
            [alert show];
        }
        
    }
    
    
    
    
    
    
    
    
    _show_loading.hidden=YES;
[_timer3 invalidate];
_timer3 = [NSTimer scheduledTimerWithTimeInterval:0.10 target:self selector:@selector(im_url) userInfo:nil repeats:NO];


}







- (void) im_url {
    
    
    NSString *surn0 = _url_n0.text;
    NSString *stu0  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt0  =surn0;
    NSString *imgURL0 =[NSString stringWithFormat:@"%@%@",stu0,stt0];
    
//    NSData *data0 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL0]];
//    [_im_n0 setImage:[UIImage imageWithData:data0]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////
    NSString *urlString =imgURL0;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_w_n0 loadRequest:urlRequest];
    
    [self.activityIndicatorView_n0 stopAnimating];

}
    
    
    
- (IBAction)btn_store_desc:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[[jsonArray objectAtIndex:0] objectForKey:@"store_desc"]                                                            message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
    [alert show];
}
    






-(IBAction)CALL1:(id)sender{
    
    
    /*
    NSString *phone_number  =_phone_no_n0.text;
    
    NSString *phoneStrh = [[NSString alloc] initWithFormat:@"telprompt://%@",phone_number];
    NSURL *phoneURL = [[NSURL alloc] initWithString:phoneStrh];
    [[UIApplication sharedApplication] openURL:phoneURL];
    */
    
    
    

    
    NSString*url=@"https://api.whatsapp.com/send?";
    NSString*ph=@"phone=";
    NSString*sph=_phone_no_n0.text;
    
    NSString*mes=@"&text=";
    
    
    NSString*m0=@" - ";
    NSString*m1=@"\n";
    NSString*m2=@" السلام عليكم ، بخصوص إعلانك في تطبيق بورصه الحي  ";
    NSString*m3=_store_name_n0.text;
    
    NSString *message =[NSString stringWithFormat:@"%@%@%@",m2,m1,m3];
    NSString *all =[NSString stringWithFormat:@"%@%@%@%@%@%@%@%@",url,ph,sph,mes,m2,m1,m3,m1];
    
    NSString *dataUrl = all;
    
    
    dataUrl = [dataUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];    // fahd to arabic
    
    //   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://api.whatsapp.com/send?phone=966592271719&text=fofofofofof"]];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:dataUrl]];
    
    
    
    
}









    

- (IBAction)btn_show_all_imahe:(id)sender {
    

    
    // save _search_url
    NSString *S_f11 =@"store";
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"ref"];
    [D_f11 synchronize];
    
    
    // save _search_url
    NSString *S_f12 =_myid.text;
    NSUserDefaults *D_f12 =[NSUserDefaults standardUserDefaults];
    [D_f12 setObject :S_f12 forKey:@"ref_id"];
    [D_f12 synchronize];
    

    
    
    
    [self performSegueWithIdentifier:@"go_i" sender:self];
}





- (IBAction)btn_geer_lauag:(id)sender {
    
    // save
    NSString *S_f11 =_myid.text;
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid_x"];
    [D_f11 synchronize];
    
    
}




- (IBAction)btn_back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}




@end
