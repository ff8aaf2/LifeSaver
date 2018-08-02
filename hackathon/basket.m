
//
//  Created by mac on 6/21/1438 AH.
//  Copyright © 1438 فهد الدبيان. All rights reserved.
//



#import "basket.h"
#import <CoreLocation/CoreLocation.h>



@interface basket()

@end


@implementation basket {
    CLLocationManager *locationManager;
    CLGeocoder *geocoder;
    CLPlacemark *placemark;
}



@synthesize jsonArray;





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    _btn_buy.hidden=NO;

    
    
    [_scroll_all setScrollEnabled:YES];    //////للتمرير
    [_scroll_all setContentSize:CGSizeMake(1,999)];  //////للتمرير
    
    [_scroll_item setScrollEnabled:YES];    //////للتمرير
    [_scroll_item setContentSize:CGSizeMake(1,3300)];  //////للتمرير
    
    [_scroll_one_item setScrollEnabled:YES];    //////للتمرير
    [_scroll_one_item setContentSize:CGSizeMake(1,1411)];  //////للتمرير
    
    
    
    // load mycity
    NSUserDefaults *L_f4003 =[NSUserDefaults standardUserDefaults];
    NSString *M_f4003 = [L_f4003 objectForKey:@"mycity"];
    [_mycity setText:M_f4003];
    
    
    
    _btn_total.layer.masksToBounds = YES;
    _btn_total.layer.cornerRadius = 10.0;
    
    
    _item_price_n0.text=@"0";
    _item_price_n1.text=@"0";
    _item_price_n2.text=@"0";
    _item_price_n3.text=@"0";
    _item_price_n4.text=@"0";
    _item_price_n5.text=@"0";
    _item_price_n6.text=@"0";
    _item_price_n7.text=@"0";
    _item_price_n8.text=@"0";
    _item_price_n9.text=@"0";
    _item_price_n10.text=@"0";
    _item_price_n11.text=@"0";
    _item_price_n12.text=@"0";
    _item_price_n13.text=@"0";
    _item_price_n14.text=@"0";
    _item_price_n15.text=@"0";
    _item_price_n16.text=@"0";
    _item_price_n17.text=@"0";
    _item_price_n18.text=@"0";
    _item_price_n19.text=@"0";
    
    _item_name_n0.text=@"";
    _item_name_n1.text=@"";
    _item_name_n2.text=@"";
    _item_name_n3.text=@"";
    _item_name_n4.text=@"";
    _item_name_n5.text=@"";
    _item_name_n6.text=@"";
    _item_name_n7.text=@"";
    _item_name_n8.text=@"";
    _item_name_n9.text=@"";
    _item_name_n10.text=@"";
    _item_name_n11.text=@"";
    _item_name_n12.text=@"";
    _item_name_n13.text=@"";
    _item_name_n14.text=@"";
    _item_name_n15.text=@"";
    _item_name_n16.text=@"";
    _item_name_n17.text=@"";
    _item_name_n18.text=@"";
    _item_name_n19.text=@"";
    
 
    // show loading
    CGRect frame8 = _show_loading.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_loading.frame= frame8;
    
    
    
    // set background for webview
    [self web_background];
    
    
    
    
    
    // load _myphone
    NSUserDefaults *L_f300 =[NSUserDefaults standardUserDefaults];
    NSString *M_f300 = [L_f300 objectForKey:@"myphone"];
    [_myphone setText:M_f300];
    
    // load _myname
    NSUserDefaults *L_f400 =[NSUserDefaults standardUserDefaults];
    NSString *M_f400 = [L_f400 objectForKey:@"myname"];
    [_myname setText:M_f400];
    
    
    //day in english
    NSDateFormatter * dateformatter = [[NSDateFormatter alloc ]init];
   // [dateformatter setDateFormat:@"yyyy/MM/dd"];
    [dateformatter setDateFormat:@"dd/MM - hh:mm:ssa"];
    
    _day_now.text = [dateformatter stringFromDate:[NSDate date]];

    //day in english
    NSDateFormatter * dateformatter2 = [[NSDateFormatter alloc ]init];
    // [dateformatter setDateFormat:@"yyyy/MM/dd"];
    [dateformatter2 setDateFormat:@"HH"];
    
    
    NSString * hournow = [dateformatter2 stringFromDate:[NSDate date]]; // HHHHHHHH
    
    int valueHH = ([hournow intValue]);
    if(  ((valueHH >= 8) && (valueHH < 12)) || ((valueHH >= 14) && (valueHH < 23)) ) {
        
        
 
        

 
        
    }else{
        
        _btn_buy.hidden=YES;
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ارسال الطلبات متاح من ٨ صباحاً الى ١٢ ظهراً و من ٢ ظهراً الى ١١ ليلاً"
                                                        message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
        [alert show];
    }

    
 


    
    
    
    
    
    // get  my location
    locationManager = [[CLLocationManager alloc] init];
    geocoder = [[CLGeocoder alloc] init];
    
    // this permition and u need string as wel in plist
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    locationManager.distanceFilter = kCLDistanceFilterNone;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)
        [self->locationManager requestWhenInUseAuthorization];
    
    [locationManager startUpdatingLocation];
    
    locationManager.delegate = self;
    

    
    
    
 
    
     if(  ( [( _myphone.text ) length] <= 0 )  ||   ( [( _myname.text ) length] <= 0 )     ){

        
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"    يجب تسجيل بياناتك من قائمة - حسابي    "
                                                        message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
        [alert show];
        
         
         
 
         
         
         [self.tabBarController setSelectedIndex:2];
         
         _indic1.hidden=YES;

        
    }else{
    

    
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.50 target:self selector:@selector(updateTimer) userInfo:nil repeats:NO];
    
    }
    
    
}






-(void) updateTimer {
    
    
    NSString* py =@"http://dolciksa.com/app/ios/show_basket/ios/self_stored_ios.php?xshow=1";
    NSString* py1 =@"&myphone=";
    NSString* py2 =@"&myname=";
    
    //_search_url.text= [NSString stringWithFormat:@"%@%@%@",_py.text,_py1.text,_menu_id_n0.text];
    _search_url.text= [NSString stringWithFormat:@"%@%@%@%@%@",py,py1,_myphone.text,py2,_myname.text];
 
    
    
    
    [self after_menu];
    
    

}










// show View_items when button is pressed

- (void) after_menu {
    
    
    //_tname_n0.text=@"999";
    
    
    // save url
    NSString *S_f300 =_search_url.text;
    NSUserDefaults *D_f300 =[NSUserDefaults standardUserDefaults];
    [D_f300 setObject :S_f300 forKey:@"search_url_basket"];
    [D_f300 synchronize];
    
    // show View_items
    CGRect frame5 = _View_items.frame;
    frame5.origin.y=0;//pass the cordinate which you want
    frame5.origin.x= 0;//pass bbbbbb the cordinate which you want
    _View_items.frame= frame5;
    
    
    CGRect frame6 = _show_menu.frame;
    frame6.origin.y=0;//pass the cordinate which you want
    frame6.origin.x= 1111;//pass bbbbbb the cordinate which you want
    _show_menu.frame= frame6;
    
    [_tsearch resignFirstResponder];
    
    
    // show loading
    CGRect frame8 = _show_loading.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_loading.frame= frame8;
    
    
    
    [self retrieveData3];
    
    
    
}















///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



- (void) retrieveData3
{
    
    
    NSUserDefaults *L_f300 =[NSUserDefaults standardUserDefaults];
    NSString *M_f300 = [L_f300 objectForKey:@"search_url_basket"];
    [_search_url setText:M_f300];
    
    
    NSString *NSurl =_search_url.text;
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
            
            
            _item_name_n0.text=[[jsonArray objectAtIndex:0] objectForKey:@"store_name"];
            _item_photo_url_n0.text=[[jsonArray objectAtIndex:0] objectForKey:@"photo_url"];
            _item_price_n0.text=[[jsonArray objectAtIndex:0] objectForKey:@"price"];
            _item_over_n0.text=[[jsonArray objectAtIndex:0] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n0.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n0 loadRequest:urlRequest];
            
            [_scroll_item setScrollEnabled:YES];    //////للتمرير
            
            _item_v_n0.hidden=NO;
            _basket_empty.hidden=YES;

            
            
            if([_item_over_n0.text isEqual: @""]){
                _item_over_n0.hidden=YES;
            }else{
                
                _item_over_n0.hidden=NO;
            }
            
            
        }else{
            _item_v_n0.hidden=YES;
            [_scroll_item setScrollEnabled:NO];    //////للتمرير
            
            _basket_empty.hidden=NO;
            
            _btn_buy.hidden=YES;

            
        }
        
        
        if  (1 < jsonArray.count) {
            
            
            _item_name_n1.text=[[jsonArray objectAtIndex:1] objectForKey:@"store_name"];
            _item_photo_url_n1.text=[[jsonArray objectAtIndex:1] objectForKey:@"photo_url"];
            _item_price_n1.text=[[jsonArray objectAtIndex:1] objectForKey:@"price"];
            _item_over_n1.text=[[jsonArray objectAtIndex:1] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n1.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n1 loadRequest:urlRequest];
            
            
            _item_v_n1.hidden=NO;
            
            
            if([_item_over_n1.text isEqual: @""]){
                _item_over_n1.hidden=YES;
            }else{
                
                _item_over_n1.hidden=NO;
            }
            
            
        }else{
            _item_v_n1.hidden=YES;
        }
        
        
        
        if  (2 < jsonArray.count) {
            
            
            _item_name_n2.text=[[jsonArray objectAtIndex:2] objectForKey:@"store_name"];
            _item_photo_url_n2.text=[[jsonArray objectAtIndex:2] objectForKey:@"photo_url"];
            _item_price_n2.text=[[jsonArray objectAtIndex:2] objectForKey:@"price"];
            _item_over_n2.text=[[jsonArray objectAtIndex:2] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n2.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n2 loadRequest:urlRequest];
            
            
            _item_v_n2.hidden=NO;
            
            
            if([_item_over_n2.text isEqual: @""]){
                _item_over_n2.hidden=YES;
            }else{
                
                _item_over_n2.hidden=NO;
            }
            
            
        }else{
            _item_v_n2.hidden=YES;
        }
        
        
        
        if  (3 < jsonArray.count) {
            
            
            _item_name_n3.text=[[jsonArray objectAtIndex:3] objectForKey:@"store_name"];
            _item_photo_url_n3.text=[[jsonArray objectAtIndex:3] objectForKey:@"photo_url"];
            _item_price_n3.text=[[jsonArray objectAtIndex:3] objectForKey:@"price"];
            _item_over_n3.text=[[jsonArray objectAtIndex:3] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n3.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n3 loadRequest:urlRequest];
            
            
            _item_v_n3.hidden=NO;
            
            
            if([_item_over_n3.text isEqual: @""]){
                _item_over_n3.hidden=YES;
            }else{
                
                _item_over_n3.hidden=NO;
            }
            
            
        }else{
            _item_v_n3.hidden=YES;
        }
        
        
        
        if  (4 < jsonArray.count) {
            
            
            _item_name_n4.text=[[jsonArray objectAtIndex:4] objectForKey:@"store_name"];
            _item_photo_url_n4.text=[[jsonArray objectAtIndex:4] objectForKey:@"photo_url"];
            _item_price_n4.text=[[jsonArray objectAtIndex:4] objectForKey:@"price"];
            _item_over_n4.text=[[jsonArray objectAtIndex:4] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n4.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n4 loadRequest:urlRequest];
            
            
            _item_v_n4.hidden=NO;
            
            
            if([_item_over_n4.text isEqual: @""]){
                _item_over_n4.hidden=YES;
            }else{
                
                _item_over_n4.hidden=NO;
            }
            
            
        }else{
            _item_v_n4.hidden=YES;
        }
        
        
        
        if  (5 < jsonArray.count) {
            
            
            _item_name_n5.text=[[jsonArray objectAtIndex:5] objectForKey:@"store_name"];
            _item_photo_url_n5.text=[[jsonArray objectAtIndex:5] objectForKey:@"photo_url"];
            _item_price_n5.text=[[jsonArray objectAtIndex:5] objectForKey:@"price"];
            _item_over_n5.text=[[jsonArray objectAtIndex:5] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n5.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n5 loadRequest:urlRequest];
            
            
            _item_v_n5.hidden=NO;
            
            
            if([_item_over_n5.text isEqual: @""]){
                _item_over_n5.hidden=YES;
            }else{
                
                _item_over_n5.hidden=NO;
            }
            
            
        }else{
            _item_v_n5.hidden=YES;
        }
        
        
        
        if  (6 < jsonArray.count) {
            
            
            _item_name_n6.text=[[jsonArray objectAtIndex:6] objectForKey:@"store_name"];
            _item_photo_url_n6.text=[[jsonArray objectAtIndex:6] objectForKey:@"photo_url"];
            _item_price_n6.text=[[jsonArray objectAtIndex:6] objectForKey:@"price"];
            _item_over_n6.text=[[jsonArray objectAtIndex:6] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n6.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n6 loadRequest:urlRequest];
            
            
            _item_v_n6.hidden=NO;
            
            
            if([_item_over_n6.text isEqual: @""]){
                _item_over_n6.hidden=YES;
            }else{
                
                _item_over_n6.hidden=NO;
            }
            
            
        }else{
            _item_v_n6.hidden=YES;
        }
        
        
        
        if  (7 < jsonArray.count) {
            
            
            _item_name_n7.text=[[jsonArray objectAtIndex:7] objectForKey:@"store_name"];
            _item_photo_url_n7.text=[[jsonArray objectAtIndex:7] objectForKey:@"photo_url"];
            _item_price_n7.text=[[jsonArray objectAtIndex:7] objectForKey:@"price"];
            _item_over_n7.text=[[jsonArray objectAtIndex:7] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n7.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n7 loadRequest:urlRequest];
            
            
            _item_v_n7.hidden=NO;
            
            
            if([_item_over_n7.text isEqual: @""]){
                _item_over_n7.hidden=YES;
            }else{
                
                _item_over_n7.hidden=NO;
            }
            
            
        }else{
            _item_v_n7.hidden=YES;
        }
        
        
        
        if  (8 < jsonArray.count) {
            
            
            _item_name_n8.text=[[jsonArray objectAtIndex:8] objectForKey:@"store_name"];
            _item_photo_url_n8.text=[[jsonArray objectAtIndex:8] objectForKey:@"photo_url"];
            _item_price_n8.text=[[jsonArray objectAtIndex:8] objectForKey:@"price"];
            _item_over_n8.text=[[jsonArray objectAtIndex:8] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n8.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n8 loadRequest:urlRequest];
            
            
            _item_v_n8.hidden=NO;
            
            
            if([_item_over_n8.text isEqual: @""]){
                _item_over_n8.hidden=YES;
            }else{
                
                _item_over_n8.hidden=NO;
            }
            
            
        }else{
            _item_v_n8.hidden=YES;
        }
        
        
        
        if  (9 < jsonArray.count) {
            
            
            _item_name_n9.text=[[jsonArray objectAtIndex:9] objectForKey:@"store_name"];
            _item_photo_url_n9.text=[[jsonArray objectAtIndex:9] objectForKey:@"photo_url"];
            _item_price_n9.text=[[jsonArray objectAtIndex:9] objectForKey:@"price"];
            _item_over_n9.text=[[jsonArray objectAtIndex:9] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n9.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n9 loadRequest:urlRequest];
            
            
            _item_v_n9.hidden=NO;
            
            
            if([_item_over_n9.text isEqual: @""]){
                _item_over_n9.hidden=YES;
            }else{
                
                _item_over_n9.hidden=NO;
            }
            
            
        }else{
            _item_v_n9.hidden=YES;
        }
        
        
        
        if  (10 < jsonArray.count) {
            
            
            _item_name_n10.text=[[jsonArray objectAtIndex:10] objectForKey:@"store_name"];
            _item_photo_url_n10.text=[[jsonArray objectAtIndex:10] objectForKey:@"photo_url"];
            _item_price_n10.text=[[jsonArray objectAtIndex:10] objectForKey:@"price"];
            _item_over_n10.text=[[jsonArray objectAtIndex:10] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n10.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n10 loadRequest:urlRequest];
            
            
            _item_v_n10.hidden=NO;
            
            
            if([_item_over_n10.text isEqual: @""]){
                _item_over_n10.hidden=YES;
            }else{
                
                _item_over_n10.hidden=NO;
            }
            
            
        }else{
            _item_v_n10.hidden=YES;
        }
        
        
        
        if  (11 < jsonArray.count) {
            
            
            _item_name_n11.text=[[jsonArray objectAtIndex:11] objectForKey:@"store_name"];
            _item_photo_url_n11.text=[[jsonArray objectAtIndex:11] objectForKey:@"photo_url"];
            _item_price_n11.text=[[jsonArray objectAtIndex:11] objectForKey:@"price"];
            _item_over_n11.text=[[jsonArray objectAtIndex:11] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n11.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n11 loadRequest:urlRequest];
            
            
            _item_v_n11.hidden=NO;
            
            
            if([_item_over_n11.text isEqual: @""]){
                _item_over_n11.hidden=YES;
            }else{
                
                _item_over_n11.hidden=NO;
            }
            
            
        }else{
            _item_v_n11.hidden=YES;
        }
        
        
        
        if  (12 < jsonArray.count) {
            
            
            _item_name_n12.text=[[jsonArray objectAtIndex:12] objectForKey:@"store_name"];
            _item_photo_url_n12.text=[[jsonArray objectAtIndex:12] objectForKey:@"photo_url"];
            _item_price_n12.text=[[jsonArray objectAtIndex:12] objectForKey:@"price"];
            _item_over_n12.text=[[jsonArray objectAtIndex:12] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n12.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n12 loadRequest:urlRequest];
            
            
            _item_v_n12.hidden=NO;
            
            
            if([_item_over_n12.text isEqual: @""]){
                _item_over_n12.hidden=YES;
            }else{
                
                _item_over_n12.hidden=NO;
            }
            
            
        }else{
            _item_v_n12.hidden=YES;
        }
        
        
        
        if  (13 < jsonArray.count) {
            
            
            _item_name_n13.text=[[jsonArray objectAtIndex:13] objectForKey:@"store_name"];
            _item_photo_url_n13.text=[[jsonArray objectAtIndex:13] objectForKey:@"photo_url"];
            _item_price_n13.text=[[jsonArray objectAtIndex:13] objectForKey:@"price"];
            _item_over_n13.text=[[jsonArray objectAtIndex:13] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n13.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n13 loadRequest:urlRequest];
            
            
            _item_v_n13.hidden=NO;
            
            
            if([_item_over_n13.text isEqual: @""]){
                _item_over_n13.hidden=YES;
            }else{
                
                _item_over_n13.hidden=NO;
            }
            
            
        }else{
            _item_v_n13.hidden=YES;
        }
        
        
        
        if  (14 < jsonArray.count) {
            
            
            _item_name_n14.text=[[jsonArray objectAtIndex:14] objectForKey:@"store_name"];
            _item_photo_url_n14.text=[[jsonArray objectAtIndex:14] objectForKey:@"photo_url"];
            _item_price_n14.text=[[jsonArray objectAtIndex:14] objectForKey:@"price"];
            _item_over_n14.text=[[jsonArray objectAtIndex:14] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n14.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n14 loadRequest:urlRequest];
            
            
            _item_v_n14.hidden=NO;
            
            
            if([_item_over_n14.text isEqual: @""]){
                _item_over_n14.hidden=YES;
            }else{
                
                _item_over_n14.hidden=NO;
            }
            
            
        }else{
            _item_v_n14.hidden=YES;
        }
        
        
        
        if  (15 < jsonArray.count) {
            
            
            _item_name_n15.text=[[jsonArray objectAtIndex:15] objectForKey:@"store_name"];
            _item_photo_url_n15.text=[[jsonArray objectAtIndex:15] objectForKey:@"photo_url"];
            _item_price_n15.text=[[jsonArray objectAtIndex:15] objectForKey:@"price"];
            _item_over_n15.text=[[jsonArray objectAtIndex:15] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n15.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n15 loadRequest:urlRequest];
            
            
            _item_v_n15.hidden=NO;
            
            
            if([_item_over_n15.text isEqual: @""]){
                _item_over_n15.hidden=YES;
            }else{
                
                _item_over_n15.hidden=NO;
            }
            
            
        }else{
            _item_v_n15.hidden=YES;
        }
        
        
        
        if  (16 < jsonArray.count) {
            
            
            _item_name_n16.text=[[jsonArray objectAtIndex:16] objectForKey:@"store_name"];
            _item_photo_url_n16.text=[[jsonArray objectAtIndex:16] objectForKey:@"photo_url"];
            _item_price_n16.text=[[jsonArray objectAtIndex:16] objectForKey:@"price"];
            _item_over_n16.text=[[jsonArray objectAtIndex:16] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n16.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n16 loadRequest:urlRequest];
            
            
            _item_v_n16.hidden=NO;
            
            
            if([_item_over_n16.text isEqual: @""]){
                _item_over_n16.hidden=YES;
            }else{
                
                _item_over_n16.hidden=NO;
            }
            
            
        }else{
            _item_v_n16.hidden=YES;
        }
        
        
        
        if  (17 < jsonArray.count) {
            
            
            _item_name_n17.text=[[jsonArray objectAtIndex:17] objectForKey:@"store_name"];
            _item_photo_url_n17.text=[[jsonArray objectAtIndex:17] objectForKey:@"photo_url"];
            _item_price_n17.text=[[jsonArray objectAtIndex:17] objectForKey:@"price"];
            _item_over_n17.text=[[jsonArray objectAtIndex:17] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n17.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n17 loadRequest:urlRequest];
            
            
            _item_v_n17.hidden=NO;
            
            
            if([_item_over_n17.text isEqual: @""]){
                _item_over_n17.hidden=YES;
            }else{
                
                _item_over_n17.hidden=NO;
            }
            
            
        }else{
            _item_v_n17.hidden=YES;
        }
        
        
        
        if  (18 < jsonArray.count) {
            
            
            _item_name_n18.text=[[jsonArray objectAtIndex:18] objectForKey:@"store_name"];
            _item_photo_url_n18.text=[[jsonArray objectAtIndex:18] objectForKey:@"photo_url"];
            _item_price_n18.text=[[jsonArray objectAtIndex:18] objectForKey:@"price"];
            _item_over_n18.text=[[jsonArray objectAtIndex:18] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n18.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n18 loadRequest:urlRequest];
            
            
            _item_v_n18.hidden=NO;
            
            
            if([_item_over_n18.text isEqual: @""]){
                _item_over_n18.hidden=YES;
            }else{
                
                _item_over_n18.hidden=NO;
            }
            
            
        }else{
            _item_v_n18.hidden=YES;
        }
        
        
        
        if  (19 < jsonArray.count) {
            
            
            _item_name_n19.text=[[jsonArray objectAtIndex:19] objectForKey:@"store_name"];
            _item_photo_url_n19.text=[[jsonArray objectAtIndex:19] objectForKey:@"photo_url"];
            _item_price_n19.text=[[jsonArray objectAtIndex:19] objectForKey:@"price"];
            _item_over_n19.text=[[jsonArray objectAtIndex:19] objectForKey:@"over"];
            
            
            NSString *urlString = _item_photo_url_n19.text;
            NSURL *url = [NSURL URLWithString:urlString];
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
            [_item_web_n19 loadRequest:urlRequest];
            
            
            _item_v_n19.hidden=NO;
            _btn_more.hidden=NO;
            
 
            
            if([_item_over_n19.text isEqual: @""]){
                _item_over_n19.hidden=YES;
            }else{
                
                _item_over_n19.hidden=NO;
            }
            
            [self total_buy];
            
            
 
            
            
        }else{
            _item_v_n19.hidden=YES;
            _btn_more.hidden=YES;
            
            
            
            [self total_buy];
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
      //   [self total_buy];
        
        
        
        
            }
    
    
    
    // show loading
    CGRect frame8 = _show_loading.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 1111;//pass bbbbbb the cordinate which you want
    _show_loading.frame= frame8;
    
    
    //[self total_buy];
    
    
}











- (IBAction)btn_item_n0:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:0] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:0] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:0] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:0] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:0] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:0] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:0] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:0] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:0] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:0] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:0] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:0] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:0] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:0] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:0] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:0] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n0.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}







- (IBAction)btn_item_n1:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:1] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:1] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:1] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:1] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:1] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:1] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:1] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:1] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:1] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:1] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:1] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:1] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:1] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:1] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:1] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:1] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n1.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






- (IBAction)btn_item_n2:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:2] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:2] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:2] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:2] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:2] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:2] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:2] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:2] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:2] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:2] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:2] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:2] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:2] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:2] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:2] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:2] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n2.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






- (IBAction)btn_item_n3:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:3] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:3] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:3] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:3] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:3] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:3] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:3] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:3] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:3] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:3] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:3] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:3] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:3] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:3] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:3] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:3] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n3.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






- (IBAction)btn_item_n4:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:4] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:4] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:4] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:4] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:4] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:4] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:4] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:4] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:4] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:4] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:4] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:4] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:4] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:4] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:4] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:4] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n4.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






- (IBAction)btn_item_n5:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:5] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:5] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:5] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:5] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:5] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:5] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:5] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:5] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:5] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:5] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:5] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:5] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:5] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:5] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:5] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:5] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n5.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






- (IBAction)btn_item_n6:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:6] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:6] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:6] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:6] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:6] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:6] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:6] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:6] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:6] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:6] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:6] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:6] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:6] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:6] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:6] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:6] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n6.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






- (IBAction)btn_item_n7:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:7] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:7] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:7] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:7] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:7] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:7] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:7] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:7] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:7] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:7] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:7] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:7] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:7] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:7] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:7] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:7] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n7.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






- (IBAction)btn_item_n8:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:8] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:8] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:8] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:8] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:8] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:8] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:8] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:8] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:8] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:8] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:8] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:8] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:8] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:8] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:8] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:8] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n8.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






- (IBAction)btn_item_n9:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:9] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:9] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:9] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:9] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:9] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:9] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:9] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:9] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:9] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:9] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:9] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:9] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:9] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:9] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:9] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:9] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n9.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






- (IBAction)btn_item_n10:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:10] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:10] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:10] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:10] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:10] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:10] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:10] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:10] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:10] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:10] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:10] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:10] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:10] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:10] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:10] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:10] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n10.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






- (IBAction)btn_item_n11:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:11] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:11] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:11] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:11] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:11] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:11] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:11] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:11] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:11] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:11] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:11] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:11] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:11] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:11] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:11] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:11] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n11.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






- (IBAction)btn_item_n12:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:12] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:12] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:12] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:12] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:12] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:12] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:12] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:12] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:12] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:12] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:12] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:12] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:12] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:12] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:12] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:12] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n12.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






- (IBAction)btn_item_n13:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:13] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:13] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:13] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:13] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:13] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:13] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:13] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:13] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:13] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:13] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:13] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:13] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:13] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:13] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:13] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:13] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n13.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






- (IBAction)btn_item_n14:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:14] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:14] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:14] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:14] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:14] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:14] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:14] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:14] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:14] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:14] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:14] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:14] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:14] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:14] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:14] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:14] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n14.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






- (IBAction)btn_item_n15:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:15] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:15] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:15] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:15] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:15] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:15] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:15] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:15] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:15] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:15] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:15] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:15] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:15] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:15] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:15] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:15] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n15.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






- (IBAction)btn_item_n16:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:16] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:16] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:16] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:16] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:16] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:16] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:16] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:16] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:16] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:16] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:16] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:16] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:16] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:16] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:16] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:16] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n16.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






- (IBAction)btn_item_n17:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:17] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:17] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:17] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:17] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:17] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:17] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:17] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:17] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:17] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:17] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:17] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:17] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:17] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:17] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:17] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:17] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n17.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






- (IBAction)btn_item_n18:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:18] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:18] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:18] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:18] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:18] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:18] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:18] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:18] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:18] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:18] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:18] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:18] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:18] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:18] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:18] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:18] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n18.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






- (IBAction)btn_item_n19:(id)sender {
    
    
    _item_id_nx.text=[[jsonArray objectAtIndex:19] objectForKey:@"store_id"];
    _item_name_nx.text=[[jsonArray objectAtIndex:19] objectForKey:@"store_name"];
    _item_photo_url_nx.text=[[jsonArray objectAtIndex:19] objectForKey:@"photo_url"];
    _item_price_nx.text=[[jsonArray objectAtIndex:19] objectForKey:@"price"];
    _item_over_nx.text=[[jsonArray objectAtIndex:19] objectForKey:@"over"];
    _item_about_nx.text=[[jsonArray objectAtIndex:19] objectForKey:@"store_desc"];
    _item_phone_nx.text=[[jsonArray objectAtIndex:19] objectForKey:@"phone_no"];
    _item_lat_nx.text=[[jsonArray objectAtIndex:19] objectForKey:@"lat"];
    _item_lon_nx.text=[[jsonArray objectAtIndex:19] objectForKey:@"lon"];
    _item_city_nx.text=[[jsonArray objectAtIndex:19] objectForKey:@"store_address"];
    _item_instgram_nx.text=[[jsonArray objectAtIndex:19] objectForKey:@"website"];
    _item_user_nx.text=[[jsonArray objectAtIndex:19] objectForKey:@"barcode"];
    _item_rate_nx.text=[[jsonArray objectAtIndex:19] objectForKey:@"type1"];
    _item_other_nx.text=[[jsonArray objectAtIndex:19] objectForKey:@"other"];
    _item_extra_nx.text=[[jsonArray objectAtIndex:19] objectForKey:@"extra"];
    //  _item_seller_nx.text=[[jsonArray objectAtIndex:19] objectForKey:@"seller"];
    
    
    //    NSString *urlString = _item_photo_url_n19.text;
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_item_web_nx loadRequest:urlRequest];
    
    
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    if([_item_over_nx.text isEqual: @""]){
        _item_over_nx.hidden=YES;
    }else{
        
        _item_over_nx.hidden=NO;
    }
    
    
    [self after_item];
    
}






























-(void) after_item {
    
    
}

















- (IBAction)btn_show_menu:(id)sender {
    
    CGRect frame5 = _show_menu.frame;
    frame5.origin.y=0;//pass the cordinate which you want
    frame5.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_menu.frame= frame5;
    
    [_tsearch resignFirstResponder];
    
}
- (IBAction)btn_hide_menu:(id)sender {
    
    CGRect frame5 = _show_menu.frame;
    frame5.origin.y=0;//pass the cordinate which you want
    frame5.origin.x= 1111;//pass bbbbbb the cordinate which you want
    _show_menu.frame= frame5;
    
    
}

- (IBAction)btn_y:(id)sender {
    
    /*
     //  NSString *urlString = [[jsonArray objectAtIndex:0] objectForKey:@"phone"];
     //  NSString *urlString = _br_photourl_n0.text;
     NSString *urlString = _menu_photourl_n0.text;
     NSURL *url = [NSURL URLWithString:urlString];
     NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
     [_x_web loadRequest:urlRequest];
     */
    
}






- (IBAction)btn_back:(id)sender {
    
    
 
    
    
    // this to set image in web bakground with local image
    NSString *path = [[NSBundle mainBundle] pathForResource:@"wi" ofType:@"png"];
    [_br_web_nx loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path] baseURL:nil];
    
    
    NSString *path2 = [[NSBundle mainBundle] pathForResource:@"wi" ofType:@"png"];
    [_br_web2_nx loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path2] baseURL:nil];
    
    
    //  NSString *path2 = [[NSBundle mainBundle] pathForResource:@"wi" ofType:@"png"];
    [_item_web_nx loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path2] baseURL:nil];
    
    
    // set scroll to zero
    _scroll_news.contentOffset = CGPointMake(0,0);
    // set scroll to zero
    _scroll_item.contentOffset = CGPointMake(0,0);
    
    [self web_background];
    
}


- (IBAction)btn_back2:(id)sender {
    
    
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 1111;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    
    
    NSString *path2 = [[NSBundle mainBundle] pathForResource:@"wi" ofType:@"png"];
    [_item_web_nx loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path2] baseURL:nil];
    
    
}




-(void) web_background {
    
    
    NSString *path3 = [[NSBundle mainBundle] pathForResource:@"wil2" ofType:@"png"];
    
    [_item_web_n0 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n1 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n2 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n3 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n4 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n5 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n6 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n7 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n8 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n9 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n10 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n11 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n12 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n13 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n14 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n15 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n16 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n17 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n18 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    [_item_web_n19 loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path3] baseURL:nil];
    
}





- (IBAction)btn_back3:(id)sender {
    
    
    CGRect frame8 = _show_image.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 1111;//pass bbbbbb the cordinate which you want
    _show_image.frame= frame8;
    
    
    
    NSString *path2 = [[NSBundle mainBundle] pathForResource:@"wi" ofType:@"png"];
    [_web_image loadHTMLString:[NSString stringWithFormat:@"<html><body><img src=\"file://%@\"></body></html>",path2] baseURL:nil];
}



- (IBAction)btn_back4:(id)sender {
    
    
    CGRect frame8 = _show_twasl.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 1111;//pass bbbbbb the cordinate which you want
    _show_twasl.frame= frame8;
    
    
    CGRect frame5 = _myview.frame;
    frame5.origin.y=0;//pass the cordinate which you want
    frame5.origin.x= 1111;//pass bbbbbb the cordinate which you want
    _myview.frame= frame5;
    
    
     }








- (IBAction)btn_instgram:(id)sender {
    
    _pyins1.text=@"instagram://user?username=";
    _pyins2.text=_item_instgram_nx.text;
    
    _pyins3.text= [NSString stringWithFormat:@"%@%@",_pyins1.text,_pyins2.text];
    
    
    // NSURL *instagramURL = [NSURL URLWithString:@"instagram://user?username=ff8aaf5"];
    NSURL *instagramURL = [NSURL URLWithString:_pyins3.text];
    
    //   NSURL *instagramURL = [NSURL URLWithString:@"https://instagram.com?username=Fano1436"];
    if ([[UIApplication sharedApplication] canOpenURL:instagramURL]) {
        [[UIApplication sharedApplication] openURL:instagramURL];
    }
    
    
    /*
     // [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://instagram.com/Fano1436/"]];
     [[UIApplication sharedApplication] openURL:[NSURL URLWithString:_item_instgram_nx.text]];
     */
    
}


- (IBAction)btn_more:(id)sender {
    
    // set background for webview
    [self web_background];
    
    // save url
    NSString *S_f300 =_search_url.text;
    NSUserDefaults *D_f300 =[NSUserDefaults standardUserDefaults];
    [D_f300 setObject :S_f300 forKey:@"search_url_basket"];
    [D_f300 synchronize];
    
    
    
    _py1.text=@"&store_id=";
    
    _search_url.text= [NSString stringWithFormat:@"%@%@%@",_search_url.text,_py1.text,[[jsonArray objectAtIndex:19] objectForKey:@"store_id"]];
    
    ;
    
    // set scroll to zero
    _scroll_item.contentOffset = CGPointMake(0,0);
    
    _timer_more = [NSTimer scheduledTimerWithTimeInterval:0.50 target:self selector:@selector(updateTimer_more) userInfo:nil repeats:NO];
    
    
    
}

-(void) updateTimer_more {
    
    [self after_menu];
    
}


- (IBAction)btn_show_image:(id)sender {
    
    
    CGRect frame8 = _show_image.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_image.frame= frame8;
    
    NSString *urlString = _item_photo_url_nx.text;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_web_image loadRequest:urlRequest];
    
    
}








- (IBAction)btn_delet:(id)sender {
    
    
    if(  ([_myphone.text isEqual: @""])  ||   ([_myname.text isEqual: @""])     ){
        
        
    //    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"    يجب تسجيل بياناتك    "
                      //                                  message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
   //     [alert show];
        
  //      [self.tabBarController setSelectedIndex:1];
        
        
    }else{
        
        
                 NSString *strURL =[NSString stringWithFormat:@"http://dolciksa.com/app/ios/delet_to_basket/delet_ios.php?store_id=%@",_item_id_nx.text];
        
        
        
        
        
        //   NSData *dataURL = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL]];  // english
        
        NSData *dataURL =[[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:[strURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];            // uknown
        
        
        
        NSString *strResult = [[NSString alloc] initWithData:dataURL encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@", strResult);
        
        // _what.text=strResult;
        
        
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"   تم الحذف    "
                              
                              
                                                        message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
        [alert show];
        
        
        
        [self viewDidLoad];
        CGRect frame8 = _show_one_item.frame;
        frame8.origin.y=0;//pass the cordinate which you want
        frame8.origin.x= 1111;//pass bbbbbb the cordinate which you want
        _show_one_item.frame= frame8;
     
           [self.tabBarController setSelectedIndex:1];

        
        
        
        
    }
    
    
    
    
    
    
}


-(void) update_deleat_all {
    
    
    
    
    NSString *strURL =[NSString stringWithFormat:@"http://dolciksa.com/app/ios/update_deleat_all/update_deleat_all_ios.php?myphone=%@",_myphone.text];
    
    
    
    
    
    //   NSData *dataURL = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL]];  // english
    
    NSData *dataURL =[[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:[strURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];            // uknown
    
    
    
    NSString *strResult = [[NSString alloc] initWithData:dataURL encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", strResult);
    
    // _what.text=strResult;
    
    
    /*
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"   تم الحذف    "
                          
                          
                                                    message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
    [alert show];
    */
    
    
    [self viewDidLoad];
    CGRect frame8 = _show_one_item.frame;
    frame8.origin.y=0;//pass the cordinate which you want
    frame8.origin.x= 1111;//pass bbbbbb the cordinate which you want
    _show_one_item.frame= frame8;
    
    [self.tabBarController setSelectedIndex:1];
    
    
    
    
    
}











- (IBAction)btn_buy:(id)sender {
    
    
    if(  ([_myphone.text isEqual: @""])  ||   ([_myname.text isEqual: @""])     ){
        
        
     //   UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"    يجب تسجيل بياناتك    "
              //                                          message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
   //     [alert show];
        
     //      [self.tabBarController setSelectedIndex:2];

        
    }else{
        
        
        CGRect frame8 = _show_twasl.frame;
        frame8.origin.y=0;//pass the cordinate which you want
        frame8.origin.x= 0;//pass bbbbbb the cordinate which you want
        _show_twasl.frame= frame8;
        
        CGRect frame5 = _myview.frame;
        frame5.origin.y=0;//pass the cordinate which you want
        frame5.origin.x= 0;//pass bbbbbb the cordinate which you want
        _myview.frame= frame5;
        
        
        locationManager = [[CLLocationManager alloc] init];
        geocoder = [[CLGeocoder alloc] init];
        
        // this permition and u need string as wel in plist
        locationManager = [[CLLocationManager alloc] init];
        locationManager.delegate = self;
        locationManager.distanceFilter = kCLDistanceFilterNone;
        locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        
        if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)
            [self->locationManager requestWhenInUseAuthorization];
        
        [locationManager startUpdatingLocation];
        
        locationManager.delegate = self;

        
        
        
        
    }
    
    
    
    
    

    
    
    
}





- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"didUpdateToLocation: %@", newLocation);
    CLLocation *currentLocation = newLocation;
    
    if (currentLocation != nil) {
        _mylon.text = [NSString stringWithFormat:@"%.8f", currentLocation.coordinate.longitude];
        _mylat.text = [NSString stringWithFormat:@"%.8f", currentLocation.coordinate.latitude];
    }
    
    // Stop Location Manager
    [locationManager stopUpdatingLocation];
    
    NSLog(@"Resolving the Address");
    [geocoder reverseGeocodeLocation:currentLocation completionHandler:^(NSArray *placemarks, NSError *error) {
        NSLog(@"Found placemarks: %@, error: %@", placemarks, error);
        if (error == nil && [placemarks count] > 0) {
            placemark = [placemarks lastObject];
            _addressLabel.text = [NSString stringWithFormat:@"%@ %@\n%@ %@\n%@\n%@",
                                  placemark.subThoroughfare, placemark.thoroughfare,
                                  placemark.postalCode, placemark.locality,
                                  placemark.administrativeArea,
                                  placemark.country];
        } else {
            NSLog(@"%@", error.debugDescription);
        }
    } ];
    
    
    
    [locationManager stopUpdatingLocation];
}









- (IBAction)btn_whats:(id)sender {
    
   // _py.text=@"";
    NSString*py=@"";
    
    NSString*mytwseel_time=_mytwseel_time.text;

    
    NSString *sw  =@"https://www.google.com/maps/dir//";
    NSString *slat  =_mylat.text;
    //    NSString *slat  =[[jsonArray objectAtIndex:0] objectForKey:@"lat"];
    NSString *sc  =@",";
    NSString *slon  =_mylon.text;
    //NSString *slon  =[[jsonArray objectAtIndex:0] objectForKey:@"lon"];
    
    
    // _tlocation_nx.text = [NSString stringWithFormat:@"%@%@%@%@",sw,slat,sc,slon];
    NSString *mylocation =[NSString stringWithFormat:@"%@%@%@%@",sw,slat,sc,slon];
    
    
    NSString *urlString =mylocation;//

 
    
  //   NSString * tt1=[NSString stringWithFormat:@"طلب استئجار : %@\n&&&& اسم المستأجر:%@",_myname.text,_myphone.text];
    
    
    
    NSString * tt1=[NSString stringWithFormat:@" رقم الطلب : %@\n _____  اسم المنتج :%@\n _____   الاسم :%@\n _____   رقم التواصل :%@\n _____   رابط الصورة :%@\n _____   السعر :%@\n _____   العرض :%@\n _____   التفاصيل :%@\n _____   الموقع :%@\n _____   تاريخ الطلب :%@\n _____   اخرى :%@\n%@\n _____   الكمية :%@",_item_id_nx.text,_item_name_nx.text,_myname.text,_myphone.text,_item_photo_url_nx.text,_item_price_nx.text,_item_over_nx.text,_item_about_nx.text,mylocation,_day_now.text,_item_other_nx.text,mytwseel_time,py];

    
    
    
    
    NSArray* sharedObjects=[NSArray arrayWithObjects:tt1,  nil];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc]
                                                        initWithActivityItems:sharedObjects applicationActivities:nil];
    activityViewController.popoverPresentationController.sourceView = self.view;
    [self presentViewController:activityViewController animated:YES completion:nil];
    
    
}



- (IBAction)add_contact:(id)sender {
    
    /*
//    _load_contact.hidden=NO;
    
    CNAuthorizationStatus status = [CNContactStore authorizationStatusForEntityType:CNEntityTypeContacts];
    if (status == CNAuthorizationStatusDenied || status == CNAuthorizationStatusRestricted) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:@"تم منع اضافة الرقم الى جهات الاتصال بك لهذا يجب اعطى الاذن من الاعدادات" preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"موافق" style:UIAlertActionStyleDefault handler:nil]];
        [self presentViewController:alert animated:TRUE completion:nil];
        return;
    }
    
    CNContactStore *store = [[CNContactStore alloc] init];
    
    [store requestAccessForEntityType:CNEntityTypeContacts completionHandler:^(BOOL granted, NSError * _Nullable error) {
        if (!granted) {
            dispatch_async(dispatch_get_main_queue(), ^{
                // user didn't grant access;
                // so, again, tell user here why app needs permissions in order  to do it's job;
                // this is dispatched to the main queue because this request could be running on background thread
            });
            return;
        }
        
        // create contact
        
        CNMutableContact *contact = [[CNMutableContact alloc] init];
        
        contact.familyName = @"اسرتي ";
        
        contact.givenName = @" تطبيق اسرتي";
        
        //    contact.familyName = @" test  ";
        //    contact.givenName = @"";
        
        CNLabeledValue *homePhone = [CNLabeledValue labeledValueWithLabel:CNLabelHome value:[CNPhoneNumber phoneNumberWithStringValue:@"000000005"]];
        //  CNLabeledValue *homePhone = [CNLabeledValue labeledValueWithLabel:CNLabelHome value:[CNPhoneNumber phoneNumberWithStringValue:@"0592243987"]];
        
        contact.phoneNumbers = @[homePhone];
        
        CNSaveRequest *request = [[CNSaveRequest alloc] init];
        [request addContact:contact toContainerWithIdentifier:nil];
        
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"تم حفظ الرقم الان يمكنك التواصل عبر الواتس اب اسم المرسل الية تطبيق اسرتي "
                                                        message:@"" delegate:self cancelButtonTitle:@"موافق  "  otherButtonTitles:nil];
        [alert show];
        
     //   _load_contact.hidden=YES;
        
        
        // save it
        
        NSError *saveError;
        if (![store executeSaveRequest:request error:&saveError]) {
            NSLog(@"error = %@", saveError);
        }
    }];
     
     
     
     
     */
    
   // 0537918879
    NSString *phone_number  =@"0537918879";
    
    NSString *phoneStrh = [[NSString alloc] initWithFormat:@"telprompt://%@",phone_number];
    NSURL *phoneURL = [[NSURL alloc] initWithString:phoneStrh];
    [[UIApplication sharedApplication] openURL:phoneURL];
    
}






- (IBAction)btn_sms:(id)sender {
    
    NSString*py=@"";
    
         NSString*mytwseel_time=_mytwseel_time.text;

    
    NSString *sw  =@"https://www.google.com/maps/dir//";
    NSString *slat  =_mylat.text;
    //    NSString *slat  =[[jsonArray objectAtIndex:0] objectForKey:@"lat"];
    NSString *sc  =@",";
    NSString *slon  =_mylon.text;
    //NSString *slon  =[[jsonArray objectAtIndex:0] objectForKey:@"lon"];
    
    
     NSString *mylocation =[NSString stringWithFormat:@"%@%@%@%@",sw,slat,sc,slon];
    
  
    NSString *urlString =mylocation;//
 
    
    
    
    
    NSString * tt1=[NSString stringWithFormat:@"طلب:%@\nالموقع:%@\n%@",_item_id_nx.text,mylocation,mytwseel_time];

 

    
    MFMessageComposeViewController *textComposer = [[MFMessageComposeViewController alloc] init];
    [textComposer setMessageComposeDelegate:self];
    if ([MFMessageComposeViewController canSendText]) {
     //   [textComposer setRecipients:[NSArray arrayWithObject:@"000"]];
        [textComposer setRecipients:[NSArray arrayWithObject:@"0537918879"]];
        [textComposer setBody:tt1];
        
        [self presentViewController:textComposer animated:YES completion:NULL];
    } else {
        NSLog(@"Can't Open Text");
    }
    
    
    
    
    
}



/*
 
 
 - (IBAction)btn_sms:(id)sender {
 
 NSString*py=@"";
 
 
 
 //  NSString * tt1=[NSString stringWithFormat:@"طلب استئجار : %@\n اسم المستأجر: %@\n رقم السجل المدني: %@\n رقم الجوال : %@\n من يوم : %@\n   بتاريخ : %@\n لمدة : %@\n بمبلغ بالريال : %@\n طريقة تسليم العربون : %@\n مبلغ العربون :%@\n  %@",_chalets_name.text,_p_name.text,_p_ahwal.text,_p_phone.text,_p_start_day.text,_p_hejry.text,_p_number_of_days.text,_p_total_price.text,_p_payment.text,_py.text,_py.text];
 
 //  NSString * tt1=[NSString stringWithFormat:@" ooo : %@\n&&&&  ooo :%@",_myname.text,_myphone.text];
 
 NSString*mytwseel_time=_mytwseel_time.text;
 
 
 NSString *sw  =@"https://www.google.com/maps/dir//";
 NSString *slat  =_mylat.text;
 //    NSString *slat  =[[jsonArray objectAtIndex:0] objectForKey:@"lat"];
 NSString *sc  =@",";
 NSString *slon  =_mylon.text;
 //NSString *slon  =[[jsonArray objectAtIndex:0] objectForKey:@"lon"];
 
 
 // _tlocation_nx.text = [NSString stringWithFormat:@"%@%@%@%@",sw,slat,sc,slon];
 NSString *mylocation =[NSString stringWithFormat:@"%@%@%@%@",sw,slat,sc,slon];
 
 
 NSString *urlString =mylocation;//
 //   NSString *urlString =@"https://www.google.com/maps/dir//26.20928,43.46375";
 
 //   [UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]];
 
 
 
 
 
 
 
 
 //      NSString * tt1=[NSString stringWithFormat:@" ooo : %@\n&&&&  ooo :%@",_myname.text,_myphone.text];
 
 
 NSString * tt1=[NSString stringWithFormat:@" رقم الطلب : %@\n  اسم المنتج :%@\n  الاسم :%@\n  رقم التواصل :%@\n  رابط الصورة :%@\n  السعر :%@\n  العرض :%@\n  التفاصيل :%@\n  الموقع :%@\n  تاريخ الطلب :%@\n  اخرى :%@\n  الكمية :%@%@",_item_id_nx.text,_item_name_nx.text,_myname.text,_myphone.text,_item_photo_url_nx.text,_item_price_nx.text,_item_over_nx.text,_item_about_nx.text,mylocation,_day_now.text,_item_other_nx.text,mylocation,py];
 
 
 
 
 MFMessageComposeViewController *textComposer = [[MFMessageComposeViewController alloc] init];
 [textComposer setMessageComposeDelegate:self];
 if ([MFMessageComposeViewController canSendText]) {
 [textComposer setRecipients:[NSArray arrayWithObject:@"0537918879"]];
 [textComposer setBody:tt1];
 
 [self presentViewController:textComposer animated:YES completion:NULL];
 } else {
 NSLog(@"Can't Open Text");
 }
 
 
 
 
 
 }
 

 */
- (void)messageComposeViewController:
(MFMessageComposeViewController *)controller
                 didFinishWithResult:(MessageComposeResult)result
{
    switch (result)
        {
            case MessageComposeResultCancelled:
        NSLog(@"Cancelled");
        break;
            case MessageComposeResultFailed:
        NSLog(@"Failed");
        break;
            case MessageComposeResultSent:
        
        
        
        
        
        break;
            default:
        break;
        }
    /*  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@" تم بنجاح"
     message:@"" delegate:self cancelButtonTitle:@"موافق  " otherButtonTitles:nil];
     [alert show];
     */
    
    
    [self dismissModalViewControllerAnimated:YES];
}






- (IBAction)btn_email:(id)sender {
    
    
    
    // Email Subject
    NSString *emailTitle = @" تطبيق yy ";

    
    NSString*py=@"";

    NSString*mytwseel_time=_mytwseel_time.text;

 
    
    // Email Content
    //NSString *messageBody = @"  اكتب الرسالة هنا";
   // NSString * messageBody=[NSString stringWithFormat:@"طلب استئجار : %@\n&&&& اسم المستأجر:%@",_myname.text,_myphone.text];

    
    
    NSString *sw  =@"https://www.google.com/maps/dir//";
    NSString *slat  =_mylat.text;
    //    NSString *slat  =[[jsonArray objectAtIndex:0] objectForKey:@"lat"];
    NSString *sc  =@",";
    NSString *slon  =_mylon.text;
    //NSString *slon  =[[jsonArray objectAtIndex:0] objectForKey:@"lon"];
    
    
    // _tlocation_nx.text = [NSString stringWithFormat:@"%@%@%@%@",sw,slat,sc,slon];
    NSString *mylocation =[NSString stringWithFormat:@"%@%@%@%@",sw,slat,sc,slon];
    
    
    NSString *urlString =mylocation;//

    
    NSString * messageBody=[NSString stringWithFormat:@" رقم الطلب : %@\n  اسم المنتج :%@\n  الاسم :%@\n  رقم التواصل :%@\n  رابط الصورة :%@\n  السعر :%@\n  العرض :%@\n  التفاصيل :%@\n  الموقع :%@\n  تاريخ الطلب :%@\n  اخرى : \n%@\n%@\n  الكمية :%@",_item_id_nx.text,_item_name_nx.text,_myname.text,_myphone.text,_item_photo_url_nx.text,_item_price_nx.text,_item_over_nx.text,_item_about_nx.text,mylocation,_day_now.text,_item_other_nx.text,mytwseel_time,py];

    
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"osratie0@gmail.com"];
    
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



















// this update viewcontroler when tab is pressed
- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    // You code here to update the view.
    
    [self viewDidLoad];
}







- (IBAction)btn_contanue:(id)sender {
    
    CGRect frame5 = _myview.frame;
    frame5.origin.y=0;//pass the cordinate which you want
    frame5.origin.x= 1111;//pass bbbbbb the cordinate which you want
    _myview.frame= frame5;
    
    
    
    
    
    NSString *p0  =@"توصيل بعد :";
    NSString *p1  =@" يوم ";
    NSString *myday  =_myday.text;
    NSString *p2  =@" - ";
    NSString *p3  =@"  ";
    NSString *p4  =@" في الساعة :";
    NSString *myhours  =_myhours.text;
    NSString *mytime  =_mytime.text;
    
    NSString *mytwseel_time =[NSString stringWithFormat:@"%@%@%@%@%@%@%@",p0,myday,p1,p4,myhours,p2,mytime];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:mytwseel_time
                                                    message:@"  " delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
    [alert show];
    
    _mytwseel_time.text=mytwseel_time;
    

}




- (IBAction)btn_moafeg:(id)sender {

    
    
}



- (void) total_buy {
    
    int s0 = ([_item_price_n0.text intValue]);
    int s1 = ([_item_price_n1.text intValue]);
    int s2 = ([_item_price_n2.text intValue]);
    int s3 = ([_item_price_n3.text intValue]);
    int s4 = ([_item_price_n4.text intValue]);
    int s5 = ([_item_price_n5.text intValue]);
    int s6 = ([_item_price_n6.text intValue]);
    int s7 = ([_item_price_n7.text intValue]);
    int s8 = ([_item_price_n8.text intValue]);
    int s9 = ([_item_price_n9.text intValue]);
    int s10 = ([_item_price_n10.text intValue]);
    int s11 = ([_item_price_n11.text intValue]);
    int s12 = ([_item_price_n12.text intValue]);
    int s13 = ([_item_price_n13.text intValue]);
    int s14 = ([_item_price_n14.text intValue]);
    int s15 = ([_item_price_n15.text intValue]);
    int s16 = ([_item_price_n16.text intValue]);
    int s17 = ([_item_price_n17.text intValue]);
    int s18 = ([_item_price_n18.text intValue]);
    int s19 = ([_item_price_n19.text intValue]);

    
    [_total setText:[NSString stringWithFormat:@"%2i",(     (s0)+(s1)+(s2)+(s3)+(s4)+(s5)+(s6)+(s7)+(s8)+(s9)+(s10)+(s11)+(s12)+(s13)+(s14)+(s15)+(s16)+(s17)+(s18)+(s19)  )]];

    
 
  //  _total.text=@"0";
    if(    (_total.text  ==0)      ){

    _btn_buy.hidden=YES;
    }
 }

- (IBAction)btn_buy_total:(id)sender {
    
    if(  ([_myphone.text isEqual: @""])  ||   ([_total.text isEqual: @"0"])     ){

    
 //   if(  ([_myphone.text isEqual: @""])  ||   ([_myname.text isEqual: @""])     ){
        
        
           UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"    يجب تسجيل بياناتك    "
                                                  message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
             [alert show];
        
              [self.tabBarController setSelectedIndex:2];
        
        
    }else{
        
   
        
        
        
        NSString *sw  =@"https://www.google.com/maps/dir//";
        NSString *slat  =_mylat.text;
        //    NSString *slat  =[[jsonArray objectAtIndex:0] objectForKey:@"lat"];
        NSString *sc  =@",";
        NSString *slon  =_mylon.text;
        //NSString *slon  =[[jsonArray objectAtIndex:0] objectForKey:@"lon"];
        
        
        // _tlocation_nx.text = [NSString stringWithFormat:@"%@%@%@%@",sw,slat,sc,slon];
        NSString *mylocation =[NSString stringWithFormat:@"%@%@%@%@",sw,slat,sc,slon];
        
        
        NSString *urlString =mylocation;//

        
        
        if(  ([_myphone.text isEqual: @""])  ||   ([_myname.text isEqual: @""])     ){
        }
  

        
        float xslat = ([slat intValue]);
        float xslon = ([slon intValue]);

        
        float qan = 26.852304;
        float qas = 25.803207;
        float qal = 26.227688;
        float qar = 26.296077;
        
        float qgn = 43.978359;
        float qgs = 44.041560;
        float qgl = 43.280164;
        float qgr = 44.478951;
        
        
 
        int sto = ([_total.text intValue]);
        
        
  


        if(    (xslat>25.803207 && xslat<26.852304)  &&  (xslon>42.478951 && xslon<44.478951)   ){
            
            
            if(  (sto>=65) ){
                
                
                
          

            

            

/*

             UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"داخل"
                                                            message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
            [alert show];
            
           */
            
            
            
            
            NSString *pd  =@"\n";

            NSString *pt=_total.text;

            NSString *p0=_item_name_n0.text;
            NSString *p1=_item_name_n1.text;
            NSString *p2=_item_name_n2.text;
            NSString *p3=_item_name_n3.text;
            NSString *p4=_item_name_n4.text;
            NSString *p5=_item_name_n5.text;
            NSString *p6=_item_name_n6.text;
            NSString *p7=_item_name_n7.text;
            NSString *p8=_item_name_n8.text;
            NSString *p9=_item_name_n9.text;
            NSString *p10=_item_name_n10.text;
            NSString *p11=_item_name_n11.text;
            NSString *p12=_item_name_n12.text;
            NSString *p13=_item_name_n13.text;
            NSString *p14=_item_name_n14.text;
            NSString *p15=_item_name_n15.text;
            NSString *p16=_item_name_n16.text;
            NSString *p17=_item_name_n17.text;
            NSString *p18=_item_name_n18.text;
            NSString *p19=_item_name_n19.text;

            NSString *pl  =mylocation;

            
            NSString*pdx=@" - ";

            NSString*pdr=@" ريال ";
                
                NSString*cty=_mycity.text;


            NSString *buyall0 =[NSString stringWithFormat:@"%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@",pt,pdr,pd,pdx,p0,pd,pdx,p1,pd,pdx,p2,pd,pdx,p3,pd,pdx,p4,pd,pdx,p5,pd,pdx,p6,pd,pdx,p7,pd,pdx,p8,pd,pdx,p9,pd,pdx,p10,pd,pdx,p11,pd,pdx,p12,pd,pdx,p13,pd,pdx,p14,pd,pdx,p15,pd,pdx,p16,pd,pdx,p17,pd,pdx,p18,pd,pdx,p19,pd,pdx,pl,pdx,cty];

            

        //    NSString *buyall =[NSString stringWithFormat:@"%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@",pds,pt,pd,pds,p0,pd,p1,pd,p2,pd,p3,pd,p4,pd,p5,pd,p6,pd,p7,pd,p8,pd,p9,pd,p10,pd,p11,pd,p12,pd,p13,pd,p14,pd,p15,pd,p16,pd,p17,pd,p18,pd,p19,pd,pl];
            
            
            NSString *buyall2 =[NSString stringWithFormat:@"%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@",pt,pd,p0,pd,p1,pd,p2,pd,p3,pd,p4,pd,p5,pd,p6,pd,p7,pd,p8,pd,p9,pd,p10,pd,p11,pd,p12,pd,p13,pd,p14,pd,p15,pd,p16,pd,p17,pd,p18,pd,p19];

            
            
            NSString*pds=@" - ";
            NSString *buyall3 =[NSString stringWithFormat:@"%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@",pt,pd,p0,pds,p1,pds,p2,pds,p3,pds,p4,pds,p5,pds,p6,pds,p7,pds,p8,pds,p9,pds,p10,pds,p11,pds,p12,pds,p13,pds,p14,pds,p15,pds,p16,pds,p17,pds,p18,pds,p19,pds,cty];

            

         /*
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:buyall
                                                            message:@"  " delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
            [alert show];
           */
 
            
            
        
            


            
            
            NSString*ps1=_myname.text;
            NSString*ps3=_myphone.text;
            NSString*ps5=buyall0;
            NSString*ps7=buyall3;

            NSString*xshow=@"1";
            

            
            
         //   NSString *strURL =[NSString stringWithFormat:@"%@%@%@%@%@%@%@%@%@%@",url,ps0,ps1,ps2,ps3,ps4,ps5,ps6,ps7,xshow];
            
            
            NSString *strURL =[NSString stringWithFormat:@"http://dolciksa.com/app/ios/write_order/write_ios.php?name=%@&mobile=%@&descr=%@&locations=%@&mycity=%@&xshow=%@",ps1,ps3,ps5,ps7,cty,xshow];
            

            
            
            
            /*
            UIAlertView *alert2 = [[UIAlertView alloc] initWithTitle:strURL
                                                            message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
            [alert2 show];
            
            */
            
            
            //   NSData *dataURL = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL]];  // english
            
            NSData *dataURL =[[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:[strURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];            // uknown
            
            
            
            NSString *strResult = [[NSString alloc] initWithData:dataURL encoding:NSUTF8StringEncoding];
            
            NSLog(@"%@", strResult);
            
            // _what.text=strResult;
            
            
            
             UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"   تم استلام الطلب وسوف يتم الاتصال بكم    "
             
             
             message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
             [alert show];
            
            
            
            
            
            //////////////////////////////sms///////////////////////   start
            
            NSString*mobile=@"dolciksa";  // اسم المستخدم
            NSString*password=@"0d594407777";
            //   NSString*sender333=@"0592243987";//  اسم المرسل
            NSString*sender333=@"dolciksa";//  اسم المرسل
            
            
            
            
            
         //  NSString*numbers=@"966592243987";
            NSString*numbers=@"966594407777";

            
          //  NSString*msg=@"kkkkk";
            NSString*msg=@"يوجد طلب جديد";
            
            
            //  http://dolciksa.com/app/sms_system/UTF-8/send_sms_fahd.php?mobile=dolciksa&password=0d594407777&sender=cream.dolci&numbers=00966592243987&msg=hifahd
            
            NSString*py=@"";
            
            
            
            
            
            NSString *strURL2 =[NSString stringWithFormat:@"http://dolciksa.com/sms_short/send_sms_fahd.php?mobile=%@&password=%@&sender=%@&numbers=%@&msg=%@",mobile,password,sender333,numbers,msg];
            
            
            
            
            NSData *dataURL2 =[[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:[strURL2 stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];            // uknown
            //     NSData *dataURL2 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL]];  // english
            
            
           NSString *strResult2 = [[NSString alloc] initWithData:dataURL2 encoding:NSUTF8StringEncoding];
            
           NSLog(@"%@", strResult2);
            
            
            //////////////////////////////sms///////////////////////   end
                
                
                
                [self update_deleat_all];  // delet basket after send

            

            
            }else{
            /*
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"اقل قيمة للطب هي 65 ريال"
                                                                message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
                [alert show];
               */
                
                //Alert
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"تنبية" message:@"لان قيمة   طلبك اقل من ٦٥ ريال لهذا سوف يضاف  قيمة   ١٥ ريال للتوصيل " delegate:self cancelButtonTitle:@"رجوع " otherButtonTitles:@"موافق",@"غير موافق", nil];
                [alert show];
    
                
                
            }
            
            

            
        }else{
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"الطلبات الان متاحة فقط داخل منطقة القصيم"
                                                            message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
            [alert show];
        }
        

        
        
    }
    
    
    
    
    
    
    
    

    
    
    
}






- (void)alertView:(UIAlertView *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    //Checks For Approval
    if (buttonIndex == 1) {
        //do something because they selected button one, yes
        
        
        NSString *sw  =@"https://www.google.com/maps/dir//";
        NSString *slat  =_mylat.text;
        //    NSString *slat  =[[jsonArray objectAtIndex:0] objectForKey:@"lat"];
        NSString *sc  =@",";
        NSString *slon  =_mylon.text;
        //NSString *slon  =[[jsonArray objectAtIndex:0] objectForKey:@"lon"];
        
        
        // _tlocation_nx.text = [NSString stringWithFormat:@"%@%@%@%@",sw,slat,sc,slon];
        NSString *mylocation =[NSString stringWithFormat:@"%@%@%@%@",sw,slat,sc,slon];
        
        
        NSString *urlString =mylocation;//

        
        
        
        
        
        
        NSString *pd  =@"\n";
        
        NSString *pt=_total.text;
        
        NSString *p0=_item_name_n0.text;
        NSString *p1=_item_name_n1.text;
        NSString *p2=_item_name_n2.text;
        NSString *p3=_item_name_n3.text;
        NSString *p4=_item_name_n4.text;
        NSString *p5=_item_name_n5.text;
        NSString *p6=_item_name_n6.text;
        NSString *p7=_item_name_n7.text;
        NSString *p8=_item_name_n8.text;
        NSString *p9=_item_name_n9.text;
        NSString *p10=_item_name_n10.text;
        NSString *p11=_item_name_n11.text;
        NSString *p12=_item_name_n12.text;
        NSString *p13=_item_name_n13.text;
        NSString *p14=_item_name_n14.text;
        NSString *p15=_item_name_n15.text;
        NSString *p16=_item_name_n16.text;
        NSString *p17=_item_name_n17.text;
        NSString *p18=_item_name_n18.text;
        NSString *p19=_item_name_n19.text;
        
        NSString *pl  =mylocation;
        
        
        NSString*pdx=@" - ";
        
        NSString*pdr=@" ريال ";
        
        NSString*cty=_mycity.text;
        
        
        NSString *buyall0 =[NSString stringWithFormat:@"%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@",pt,pdr,pd,pdx,p0,pd,pdx,p1,pd,pdx,p2,pd,pdx,p3,pd,pdx,p4,pd,pdx,p5,pd,pdx,p6,pd,pdx,p7,pd,pdx,p8,pd,pdx,p9,pd,pdx,p10,pd,pdx,p11,pd,pdx,p12,pd,pdx,p13,pd,pdx,p14,pd,pdx,p15,pd,pdx,p16,pd,pdx,p17,pd,pdx,p18,pd,pdx,p19,pd,pdx,pl,pdx,cty];
        
        
        
        //    NSString *buyall =[NSString stringWithFormat:@"%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@",pds,pt,pd,pds,p0,pd,p1,pd,p2,pd,p3,pd,p4,pd,p5,pd,p6,pd,p7,pd,p8,pd,p9,pd,p10,pd,p11,pd,p12,pd,p13,pd,p14,pd,p15,pd,p16,pd,p17,pd,p18,pd,p19,pd,pl];
        
        
        NSString *buyall2 =[NSString stringWithFormat:@"%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@",pt,pd,p0,pd,p1,pd,p2,pd,p3,pd,p4,pd,p5,pd,p6,pd,p7,pd,p8,pd,p9,pd,p10,pd,p11,pd,p12,pd,p13,pd,p14,pd,p15,pd,p16,pd,p17,pd,p18,pd,p19];
        
        
        
        NSString*pds=@" - ";
        NSString *buyall3 =[NSString stringWithFormat:@"%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@",pt,pd,p0,pds,p1,pds,p2,pds,p3,pds,p4,pds,p5,pds,p6,pds,p7,pds,p8,pds,p9,pds,p10,pds,p11,pds,p12,pds,p13,pds,p14,pds,p15,pds,p16,pds,p17,pds,p18,pds,p19,pds,cty];
        
        
        
        /*
         UIAlertView *alert = [[UIAlertView alloc] initWithTitle:buyall
         message:@"  " delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
         [alert show];
         */
        
        
        
        
        
        
        
        
        
        NSString*ps1=_myname.text;
        NSString*ps3=_myphone.text;
        NSString*ps5=buyall0;
        NSString*ps7=buyall3;
        
        NSString*xshow=@"1";
        
        
        
        
        //   NSString *strURL =[NSString stringWithFormat:@"%@%@%@%@%@%@%@%@%@%@",url,ps0,ps1,ps2,ps3,ps4,ps5,ps6,ps7,xshow];
        
        
        NSString *strURL =[NSString stringWithFormat:@"http://dolciksa.com/app/ios/write_order/write_ios.php?name=%@&mobile=%@&descr=%@&locations=%@&mycity=%@&xshow=%@",ps1,ps3,ps5,ps7,cty,xshow];
        
        
        
        
        
        /*
         UIAlertView *alert2 = [[UIAlertView alloc] initWithTitle:strURL
         message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
         [alert2 show];
         
         */
        
        
        //   NSData *dataURL = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL]];  // english
        
        NSData *dataURL =[[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:[strURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];            // uknown
        
        
        
        NSString *strResult = [[NSString alloc] initWithData:dataURL encoding:NSUTF8StringEncoding];
        
        NSLog(@"%@", strResult);
        
        // _what.text=strResult;
        
        
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"   تم استلام الطلب وسوف يتم الاتصال بكم    "
                              
                              
                                                        message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
        [alert show];
        
        
        _btn_buy.hidden=YES;

        
        
        //////////////////////////////sms///////////////////////   start
        
        NSString*mobile=@"dolciksa";  // اسم المستخدم
        NSString*password=@"0d594407777";
        //   NSString*sender333=@"0592243987";//  اسم المرسل
        NSString*sender333=@"dolciksa";//  اسم المرسل
        
        
        
        
        
        //  NSString*numbers=@"966592243987";
        NSString*numbers=@"966594407777";
        
        
        //  NSString*msg=@"kkkkk";
        NSString*msg=@"يوجد طلب جديد";
        
        
        //  http://dolciksa.com/app/sms_system/UTF-8/send_sms_fahd.php?mobile=dolciksa&password=0d594407777&sender=cream.dolci&numbers=00966592243987&msg=hifahd
        
        NSString*py=@"";
        
        
        
        
        
        NSString *strURL2 =[NSString stringWithFormat:@"http://dolciksa.com/sms_short/send_sms_fahd.php?mobile=%@&password=%@&sender=%@&numbers=%@&msg=%@",mobile,password,sender333,numbers,msg];
        
        
        
        
             NSData *dataURL2 =[[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:[strURL2 stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];            // uknown
        //     NSData *dataURL2 = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL]];  // english
        
        
             NSString *strResult2 = [[NSString alloc] initWithData:dataURL2 encoding:NSUTF8StringEncoding];
        
                  NSLog(@"%@", strResult2);
        
        
        //////////////////////////////sms///////////////////////   end
        
        
        
        [self update_deleat_all];  // delet basket after send
        

        
        
    } else {
        //do nothing because they selected no
    }
}










- (IBAction)DismissKeyboard:(id)sender {
    
    
    [_myday resignFirstResponder];
    [_myhours resignFirstResponder];
    [_mytime resignFirstResponder];
    
    
    
    
    
}






@end