//
//  Home.m
//  سلس
//
//  Created by FAHD ALDOBIAN on 11/22/17.
//  Copyright © 2017 FAHD ALDOBIAN. All rights reserved.
//
// http://ahjezapp.com/ahjz/app/write/add_user.php?mobile=555

#import "Home.h"

@interface Home ()

@end

@implementation Home

@synthesize jsonArray,jsonArray2,jsonArray0;


- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
 

    
    // load _search_url
    NSUserDefaults *L_f300z =[NSUserDefaults standardUserDefaults];
    NSString *M_f300z = [L_f300z objectForKey:@"search_url"];
    [_search_url setText:M_f300z];
 
    // load _myopt
    NSUserDefaults *L_f300zx =[NSUserDefaults standardUserDefaults];
    NSString *M_f300zx = [L_f300zx objectForKey:@"myopt"];
    [_myopt setText:M_f300zx];
    
    
    if([_myopt.text isEqual: @"تقييم"]){
       // _segmentedControl.selectedSegmentIndex == 0;
        _segmentedControl.selectedSegmentIndex = 0;

    }else{
        _segmentedControl.selectedSegmentIndex = 1;

    }
    
    if([_myopt.text isEqual: @"عرض"]){
        // _segmentedControl.selectedSegmentIndex == 0;
        _segmentedControl.hidden=YES;
    }
    
   
  //   _search_url.text  =@"http://ayjabiun.com/app/ios/show_stored/short_self_stored_ios.php?is_deleted=";

  
    
    
    
    
    [_scroll_all setScrollEnabled:YES];    //////للتمرير
    [_scroll_all setContentSize:CGSizeMake(1,4000)];  //////للتمرير
    
    [_scroll_lun setScrollEnabled:YES];    //////للتمرير
    [_scroll_lun setContentSize:CGSizeMake(1,2722)];  //////للتمرير
    
    
    
 

    
    NSUserDefaults *L_f3 =[NSUserDefaults standardUserDefaults];
    NSString *M_f3 = [L_f3 objectForKey:@"typyz"];
    [_typyz setText:M_f3];
    
    NSUserDefaults *L_f4 =[NSUserDefaults standardUserDefaults];
    NSString *M_f4 = [L_f4 objectForKey:@"typyz2"];
    [_typyz2 setText:M_f4];
    
    
    // load _myphone
    NSUserDefaults *L_f300 =[NSUserDefaults standardUserDefaults];
    NSString *M_f300 = [L_f300 objectForKey:@"myphone"];
    [_myphone setText:M_f300];

    
   
 
 
   
    
    // show show_loading
    CGRect frame88 = _show_loading.frame;
    frame88.origin.y=0;//pass the cordinate which you want
    frame88.origin.x= 0;//pass bbbbbb the cordinate which you want
    _show_loading.frame= frame88;
    
 
   
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
            
            _category_name_n0.text=[[jsonArray objectAtIndex:0] objectForKey:@"store_name"];
            _price_n0.text=[[jsonArray objectAtIndex:0] objectForKey:@"price"];
            _other_n0.text=[[jsonArray objectAtIndex:0] objectForKey:@"other"];
            _url0.text= [[jsonArray objectAtIndex:0] objectForKey:@"url"];
            //_x0.text= [[jsonArray objectAtIndex:0] objectForKey:@"x"];
            //_y0.text= [[jsonArray objectAtIndex:0] objectForKey:@"y"];
            //_z0.text= [[jsonArray objectAtIndex:0] objectForKey:@"z"];

            NSString* store_address =[[jsonArray objectAtIndex:0] objectForKey:@"store_address"];
            NSString* type1 =[[jsonArray objectAtIndex:0] objectForKey:@"type1"];
            NSString* barcode =[[jsonArray objectAtIndex:0] objectForKey:@"barcode"];
            
            NSString*s=@" - ";
            NSString*sa=store_address;
            NSString*sb=type1;
            NSString*sc=barcode;
            _plase_n0.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];

            

            
        }else{
            _v_n0.hidden=YES;
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"لا يوجد نتيجة   "
                                                            message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
            [alert show];
            

            [self.navigationController popViewControllerAnimated:YES];

        }
        
    }
        
    
    
    
    if  (1 < jsonArray.count) {
        
        _category_name_n1.text=[[jsonArray objectAtIndex:1] objectForKey:@"store_name"];
        _price_n1.text=[[jsonArray objectAtIndex:1] objectForKey:@"price"];
        _other_n1.text=[[jsonArray objectAtIndex:1] objectForKey:@"other"];
        _url1.text= [[jsonArray objectAtIndex:1] objectForKey:@"url"];
        //_x1.text= [[jsonArray objectAtIndex:1] objectForKey:@"x"];
        //_y1.text= [[jsonArray objectAtIndex:1] objectForKey:@"y"];
        //_z1.text= [[jsonArray objectAtIndex:1] objectForKey:@"z"];
        
        NSString* store_address =[[jsonArray objectAtIndex:1] objectForKey:@"store_address"];
        NSString* type1 =[[jsonArray objectAtIndex:1] objectForKey:@"type1"];
        NSString* barcode =[[jsonArray objectAtIndex:1] objectForKey:@"barcode"];
        
        NSString*s=@" - ";
        NSString*sa=store_address;
        NSString*sb=type1;
        NSString*sc=barcode;
        _plase_n1.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
        
        
        
        
    }else{
        _v_n1.hidden=YES;

    }
    





if  (2 < jsonArray.count) {
    
    _category_name_n2.text=[[jsonArray objectAtIndex:2] objectForKey:@"store_name"];
    _price_n2.text=[[jsonArray objectAtIndex:2] objectForKey:@"price"];
    _other_n2.text=[[jsonArray objectAtIndex:2] objectForKey:@"other"];
    _url2.text= [[jsonArray objectAtIndex:2] objectForKey:@"url"];
    //_x2.text= [[jsonArray objectAtIndex:2] objectForKey:@"x"];
    //_y2.text= [[jsonArray objectAtIndex:2] objectForKey:@"y"];
    //_z2.text= [[jsonArray objectAtIndex:2] objectForKey:@"z"];
    
    NSString* store_address =[[jsonArray objectAtIndex:2] objectForKey:@"store_address"];
    NSString* type1 =[[jsonArray objectAtIndex:2] objectForKey:@"type1"];
    NSString* barcode =[[jsonArray objectAtIndex:2] objectForKey:@"barcode"];
    
    NSString*s=@" - ";
    NSString*sa=store_address;
    NSString*sb=type1;
    NSString*sc=barcode;
    _plase_n2.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
    
    
    
    
}else{
    _v_n2.hidden=YES;
    
}



    
    
    if  (3 < jsonArray.count) {
        
        _category_name_n3.text=[[jsonArray objectAtIndex:3] objectForKey:@"store_name"];
        _price_n3.text=[[jsonArray objectAtIndex:3] objectForKey:@"price"];
        _other_n3.text=[[jsonArray objectAtIndex:3] objectForKey:@"other"];
        _url3.text= [[jsonArray objectAtIndex:3] objectForKey:@"url"];
        //_x3.text= [[jsonArray objectAtIndex:3] objectForKey:@"x"];
        //_y3.text= [[jsonArray objectAtIndex:3] objectForKey:@"y"];
        //_z3.text= [[jsonArray objectAtIndex:3] objectForKey:@"z"];
        
        NSString* store_address =[[jsonArray objectAtIndex:3] objectForKey:@"store_address"];
        NSString* type1 =[[jsonArray objectAtIndex:3] objectForKey:@"type1"];
        NSString* barcode =[[jsonArray objectAtIndex:3] objectForKey:@"barcode"];
        
        NSString*s=@" - ";
        NSString*sa=store_address;
        NSString*sb=type1;
        NSString*sc=barcode;
        _plase_n3.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
        
        
        
        
    }else{
        _v_n3.hidden=YES;
        
    }
    
    
    
    
    
    if  (4 < jsonArray.count) {
        
        _category_name_n4.text=[[jsonArray objectAtIndex:4] objectForKey:@"store_name"];
        _price_n4.text=[[jsonArray objectAtIndex:4] objectForKey:@"price"];
        _other_n4.text=[[jsonArray objectAtIndex:4] objectForKey:@"other"];
        _url4.text= [[jsonArray objectAtIndex:4] objectForKey:@"url"];
        //_x4.text= [[jsonArray objectAtIndex:4] objectForKey:@"x"];
        //_y4.text= [[jsonArray objectAtIndex:4] objectForKey:@"y"];
        //_z4.text= [[jsonArray objectAtIndex:4] objectForKey:@"z"];
        
        NSString* store_address =[[jsonArray objectAtIndex:4] objectForKey:@"store_address"];
        NSString* type1 =[[jsonArray objectAtIndex:4] objectForKey:@"type1"];
        NSString* barcode =[[jsonArray objectAtIndex:4] objectForKey:@"barcode"];
        
        NSString*s=@" - ";
        NSString*sa=store_address;
        NSString*sb=type1;
        NSString*sc=barcode;
        _plase_n4.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
        
        
        
        
    }else{
        _v_n4.hidden=YES;
        
    }
    
    
    

    
    
    if  (5 < jsonArray.count) {
        
        _category_name_n5.text=[[jsonArray objectAtIndex:5] objectForKey:@"store_name"];
        _price_n5.text=[[jsonArray objectAtIndex:5] objectForKey:@"price"];
        _other_n5.text=[[jsonArray objectAtIndex:5] objectForKey:@"other"];
        _url5.text= [[jsonArray objectAtIndex:5] objectForKey:@"url"];
        //_x5.text= [[jsonArray objectAtIndex:5] objectForKey:@"x"];
        //_y5.text= [[jsonArray objectAtIndex:5] objectForKey:@"y"];
        //_z5.text= [[jsonArray objectAtIndex:5] objectForKey:@"z"];
        
        NSString* store_address =[[jsonArray objectAtIndex:5] objectForKey:@"store_address"];
        NSString* type1 =[[jsonArray objectAtIndex:5] objectForKey:@"type1"];
        NSString* barcode =[[jsonArray objectAtIndex:5] objectForKey:@"barcode"];
        
        NSString*s=@" - ";
        NSString*sa=store_address;
        NSString*sb=type1;
        NSString*sc=barcode;
        _plase_n5.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
        
        
        
        
    }else{
        _v_n5.hidden=YES;
        
    }
    
    
    

    
    
    if  (6 < jsonArray.count) {
        
        _category_name_n6.text=[[jsonArray objectAtIndex:6] objectForKey:@"store_name"];
        _price_n6.text=[[jsonArray objectAtIndex:6] objectForKey:@"price"];
        _other_n6.text=[[jsonArray objectAtIndex:6] objectForKey:@"other"];
        _url6.text= [[jsonArray objectAtIndex:6] objectForKey:@"url"];
        //_x6.text= [[jsonArray objectAtIndex:6] objectForKey:@"x"];
        //_y6.text= [[jsonArray objectAtIndex:6] objectForKey:@"y"];
        //_z6.text= [[jsonArray objectAtIndex:6] objectForKey:@"z"];
        
        NSString* store_address =[[jsonArray objectAtIndex:6] objectForKey:@"store_address"];
        NSString* type1 =[[jsonArray objectAtIndex:6] objectForKey:@"type1"];
        NSString* barcode =[[jsonArray objectAtIndex:6] objectForKey:@"barcode"];
        
        NSString*s=@" - ";
        NSString*sa=store_address;
        NSString*sb=type1;
        NSString*sc=barcode;
        _plase_n6.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
        
        
        
        
    }else{
        _v_n6.hidden=YES;
        
    }
    
    
    

    
    
    if  (7 < jsonArray.count) {
        
        _category_name_n7.text=[[jsonArray objectAtIndex:7] objectForKey:@"store_name"];
        _price_n7.text=[[jsonArray objectAtIndex:7] objectForKey:@"price"];
        _other_n7.text=[[jsonArray objectAtIndex:7] objectForKey:@"other"];
        _url7.text= [[jsonArray objectAtIndex:7] objectForKey:@"url"];
        //_x7.text= [[jsonArray objectAtIndex:7] objectForKey:@"x"];
        //_y7.text= [[jsonArray objectAtIndex:7] objectForKey:@"y"];
        //_z7.text= [[jsonArray objectAtIndex:7] objectForKey:@"z"];
        
        NSString* store_address =[[jsonArray objectAtIndex:7] objectForKey:@"store_address"];
        NSString* type1 =[[jsonArray objectAtIndex:7] objectForKey:@"type1"];
        NSString* barcode =[[jsonArray objectAtIndex:7] objectForKey:@"barcode"];
        
        NSString*s=@" - ";
        NSString*sa=store_address;
        NSString*sb=type1;
        NSString*sc=barcode;
        _plase_n7.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
        
        
        
        
    }else{
        _v_n7.hidden=YES;
        
    }
    
    
    

    
    
    if  (8 < jsonArray.count) {
        
        _category_name_n8.text=[[jsonArray objectAtIndex:8] objectForKey:@"store_name"];
        _price_n8.text=[[jsonArray objectAtIndex:8] objectForKey:@"price"];
        _other_n8.text=[[jsonArray objectAtIndex:8] objectForKey:@"other"];
        _url8.text= [[jsonArray objectAtIndex:8] objectForKey:@"url"];
        //_x8.text= [[jsonArray objectAtIndex:8] objectForKey:@"x"];
        //_y8.text= [[jsonArray objectAtIndex:8] objectForKey:@"y"];
        //_z8.text= [[jsonArray objectAtIndex:8] objectForKey:@"z"];
        
        NSString* store_address =[[jsonArray objectAtIndex:8] objectForKey:@"store_address"];
        NSString* type1 =[[jsonArray objectAtIndex:8] objectForKey:@"type1"];
        NSString* barcode =[[jsonArray objectAtIndex:8] objectForKey:@"barcode"];
        
        NSString*s=@" - ";
        NSString*sa=store_address;
        NSString*sb=type1;
        NSString*sc=barcode;
        _plase_n8.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
        
        
        
        
    }else{
        _v_n8.hidden=YES;
        
    }
    
    
    

    
    
    if  (9 < jsonArray.count) {
        
        _category_name_n9.text=[[jsonArray objectAtIndex:9] objectForKey:@"store_name"];
        _price_n9.text=[[jsonArray objectAtIndex:9] objectForKey:@"price"];
        _other_n9.text=[[jsonArray objectAtIndex:9] objectForKey:@"other"];
        _url9.text= [[jsonArray objectAtIndex:9] objectForKey:@"url"];
        //_x9.text= [[jsonArray objectAtIndex:9] objectForKey:@"x"];
        //_y9.text= [[jsonArray objectAtIndex:9] objectForKey:@"y"];
        //_z9.text= [[jsonArray objectAtIndex:9] objectForKey:@"z"];
        
        NSString* store_address =[[jsonArray objectAtIndex:9] objectForKey:@"store_address"];
        NSString* type1 =[[jsonArray objectAtIndex:9] objectForKey:@"type1"];
        NSString* barcode =[[jsonArray objectAtIndex:9] objectForKey:@"barcode"];
        
        NSString*s=@" - ";
        NSString*sa=store_address;
        NSString*sb=type1;
        NSString*sc=barcode;
        _plase_n9.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
        
        
        
        
    }else{
        _v_n9.hidden=YES;
        
    }
    
    
    

    
    
    if  (10 < jsonArray.count) {
        
        _category_name_n10.text=[[jsonArray objectAtIndex:10] objectForKey:@"store_name"];
        _price_n10.text=[[jsonArray objectAtIndex:10] objectForKey:@"price"];
        _other_n10.text=[[jsonArray objectAtIndex:10] objectForKey:@"other"];
        _url10.text= [[jsonArray objectAtIndex:10] objectForKey:@"url"];
        //_x10.text= [[jsonArray objectAtIndex:10] objectForKey:@"x"];
        //_y10.text= [[jsonArray objectAtIndex:10] objectForKey:@"y"];
        //_z10.text= [[jsonArray objectAtIndex:10] objectForKey:@"z"];
        
        NSString* store_address =[[jsonArray objectAtIndex:10] objectForKey:@"store_address"];
        NSString* type1 =[[jsonArray objectAtIndex:10] objectForKey:@"type1"];
        NSString* barcode =[[jsonArray objectAtIndex:10] objectForKey:@"barcode"];
        
        NSString*s=@" - ";
        NSString*sa=store_address;
        NSString*sb=type1;
        NSString*sc=barcode;
        _plase_n10.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
        
        
        
        
    }else{
        _v_n10.hidden=YES;
        
    }
    
    
    

    
    
    if  (11 < jsonArray.count) {
        
        _category_name_n11.text=[[jsonArray objectAtIndex:11] objectForKey:@"store_name"];
        _price_n11.text=[[jsonArray objectAtIndex:11] objectForKey:@"price"];
        _other_n11.text=[[jsonArray objectAtIndex:11] objectForKey:@"other"];
        _url11.text= [[jsonArray objectAtIndex:11] objectForKey:@"url"];
        //_x11.text= [[jsonArray objectAtIndex:11] objectForKey:@"x"];
        //_y11.text= [[jsonArray objectAtIndex:11] objectForKey:@"y"];
        //_z11.text= [[jsonArray objectAtIndex:11] objectForKey:@"z"];
        
        NSString* store_address =[[jsonArray objectAtIndex:11] objectForKey:@"store_address"];
        NSString* type1 =[[jsonArray objectAtIndex:11] objectForKey:@"type1"];
        NSString* barcode =[[jsonArray objectAtIndex:11] objectForKey:@"barcode"];
        
        NSString*s=@" - ";
        NSString*sa=store_address;
        NSString*sb=type1;
        NSString*sc=barcode;
        _plase_n11.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
        
        
        
        
    }else{
        _v_n11.hidden=YES;
        
    }
    
    
    

    
    
    if  (12 < jsonArray.count) {
        
        _category_name_n12.text=[[jsonArray objectAtIndex:12] objectForKey:@"store_name"];
        _price_n12.text=[[jsonArray objectAtIndex:12] objectForKey:@"price"];
        _other_n12.text=[[jsonArray objectAtIndex:12] objectForKey:@"other"];
        _url12.text= [[jsonArray objectAtIndex:12] objectForKey:@"url"];
        //_x12.text= [[jsonArray objectAtIndex:12] objectForKey:@"x"];
        //_y12.text= [[jsonArray objectAtIndex:12] objectForKey:@"y"];
        //_z12.text= [[jsonArray objectAtIndex:12] objectForKey:@"z"];
        
        NSString* store_address =[[jsonArray objectAtIndex:12] objectForKey:@"store_address"];
        NSString* type1 =[[jsonArray objectAtIndex:12] objectForKey:@"type1"];
        NSString* barcode =[[jsonArray objectAtIndex:12] objectForKey:@"barcode"];
        
        NSString*s=@" - ";
        NSString*sa=store_address;
        NSString*sb=type1;
        NSString*sc=barcode;
        _plase_n12.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
        
        
        
        
    }else{
        _v_n12.hidden=YES;
        
    }
    
    
    

    
    
    if  (13 < jsonArray.count) {
        
        _category_name_n13.text=[[jsonArray objectAtIndex:13] objectForKey:@"store_name"];
        _price_n13.text=[[jsonArray objectAtIndex:13] objectForKey:@"price"];
        _other_n13.text=[[jsonArray objectAtIndex:13] objectForKey:@"other"];
        _url13.text= [[jsonArray objectAtIndex:13] objectForKey:@"url"];
        //_x13.text= [[jsonArray objectAtIndex:13] objectForKey:@"x"];
        //_y13.text= [[jsonArray objectAtIndex:13] objectForKey:@"y"];
        //_z13.text= [[jsonArray objectAtIndex:13] objectForKey:@"z"];
        
        NSString* store_address =[[jsonArray objectAtIndex:13] objectForKey:@"store_address"];
        NSString* type1 =[[jsonArray objectAtIndex:13] objectForKey:@"type1"];
        NSString* barcode =[[jsonArray objectAtIndex:13] objectForKey:@"barcode"];
        
        NSString*s=@" - ";
        NSString*sa=store_address;
        NSString*sb=type1;
        NSString*sc=barcode;
        _plase_n13.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
        
        
        
        
    }else{
        _v_n13.hidden=YES;
        
    }
    
    
    

    
    
    if  (14 < jsonArray.count) {
        
        _category_name_n14.text=[[jsonArray objectAtIndex:14] objectForKey:@"store_name"];
        _price_n14.text=[[jsonArray objectAtIndex:14] objectForKey:@"price"];
        _other_n14.text=[[jsonArray objectAtIndex:14] objectForKey:@"other"];
        _url14.text= [[jsonArray objectAtIndex:14] objectForKey:@"url"];
        //_x14.text= [[jsonArray objectAtIndex:14] objectForKey:@"x"];
        //_y14.text= [[jsonArray objectAtIndex:14] objectForKey:@"y"];
        //_z14.text= [[jsonArray objectAtIndex:14] objectForKey:@"z"];
        
        NSString* store_address =[[jsonArray objectAtIndex:14] objectForKey:@"store_address"];
        NSString* type1 =[[jsonArray objectAtIndex:14] objectForKey:@"type1"];
        NSString* barcode =[[jsonArray objectAtIndex:14] objectForKey:@"barcode"];
        
        NSString*s=@" - ";
        NSString*sa=store_address;
        NSString*sb=type1;
        NSString*sc=barcode;
        _plase_n14.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
        
        
        
        
    }else{
        _v_n14.hidden=YES;
        
    }
    
    
    

    
    
    if  (15 < jsonArray.count) {
        
        _category_name_n15.text=[[jsonArray objectAtIndex:15] objectForKey:@"store_name"];
        _price_n15.text=[[jsonArray objectAtIndex:15] objectForKey:@"price"];
        _other_n15.text=[[jsonArray objectAtIndex:15] objectForKey:@"other"];
        _url15.text= [[jsonArray objectAtIndex:15] objectForKey:@"url"];
        //_x15.text= [[jsonArray objectAtIndex:15] objectForKey:@"x"];
        //_y15.text= [[jsonArray objectAtIndex:15] objectForKey:@"y"];
        //_z15.text= [[jsonArray objectAtIndex:15] objectForKey:@"z"];
        
        NSString* store_address =[[jsonArray objectAtIndex:15] objectForKey:@"store_address"];
        NSString* type1 =[[jsonArray objectAtIndex:15] objectForKey:@"type1"];
        NSString* barcode =[[jsonArray objectAtIndex:15] objectForKey:@"barcode"];
        
        NSString*s=@" - ";
        NSString*sa=store_address;
        NSString*sb=type1;
        NSString*sc=barcode;
        _plase_n15.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
        
        
        
        
    }else{
        _v_n15.hidden=YES;
        
    }
    
    
    

    
    
    if  (16 < jsonArray.count) {
        
        _category_name_n16.text=[[jsonArray objectAtIndex:16] objectForKey:@"store_name"];
        _price_n16.text=[[jsonArray objectAtIndex:16] objectForKey:@"price"];
        _other_n16.text=[[jsonArray objectAtIndex:16] objectForKey:@"other"];
        _url16.text= [[jsonArray objectAtIndex:16] objectForKey:@"url"];
        //_x16.text= [[jsonArray objectAtIndex:16] objectForKey:@"x"];
        //_y16.text= [[jsonArray objectAtIndex:16] objectForKey:@"y"];
        //_z16.text= [[jsonArray objectAtIndex:16] objectForKey:@"z"];
        
        NSString* store_address =[[jsonArray objectAtIndex:16] objectForKey:@"store_address"];
        NSString* type1 =[[jsonArray objectAtIndex:16] objectForKey:@"type1"];
        NSString* barcode =[[jsonArray objectAtIndex:16] objectForKey:@"barcode"];
        
        NSString*s=@" - ";
        NSString*sa=store_address;
        NSString*sb=type1;
        NSString*sc=barcode;
        _plase_n16.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
        
        
        
        
    }else{
        _v_n16.hidden=YES;
        
    }
    
    
    

    
    
    if  (17 < jsonArray.count) {
        
        _category_name_n17.text=[[jsonArray objectAtIndex:17] objectForKey:@"store_name"];
        _price_n17.text=[[jsonArray objectAtIndex:17] objectForKey:@"price"];
        _other_n17.text=[[jsonArray objectAtIndex:17] objectForKey:@"other"];
        _url17.text= [[jsonArray objectAtIndex:17] objectForKey:@"url"];
        //_x17.text= [[jsonArray objectAtIndex:17] objectForKey:@"x"];
        //_y17.text= [[jsonArray objectAtIndex:17] objectForKey:@"y"];
        //_z17.text= [[jsonArray objectAtIndex:17] objectForKey:@"z"];
        
        NSString* store_address =[[jsonArray objectAtIndex:17] objectForKey:@"store_address"];
        NSString* type1 =[[jsonArray objectAtIndex:17] objectForKey:@"type1"];
        NSString* barcode =[[jsonArray objectAtIndex:17] objectForKey:@"barcode"];
        
        NSString*s=@" - ";
        NSString*sa=store_address;
        NSString*sb=type1;
        NSString*sc=barcode;
        _plase_n17.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
        
        
        
        
    }else{
        _v_n17.hidden=YES;
        
    }
    
    
    

    
    
    if  (18 < jsonArray.count) {
        
        _category_name_n18.text=[[jsonArray objectAtIndex:18] objectForKey:@"store_name"];
        _price_n18.text=[[jsonArray objectAtIndex:18] objectForKey:@"price"];
        _other_n18.text=[[jsonArray objectAtIndex:18] objectForKey:@"other"];
        _url18.text= [[jsonArray objectAtIndex:18] objectForKey:@"url"];
        //_x18.text= [[jsonArray objectAtIndex:18] objectForKey:@"x"];
        //_y18.text= [[jsonArray objectAtIndex:18] objectForKey:@"y"];
        //_z18.text= [[jsonArray objectAtIndex:18] objectForKey:@"z"];
        
        NSString* store_address =[[jsonArray objectAtIndex:18] objectForKey:@"store_address"];
        NSString* type1 =[[jsonArray objectAtIndex:18] objectForKey:@"type1"];
        NSString* barcode =[[jsonArray objectAtIndex:18] objectForKey:@"barcode"];
        
        NSString*s=@" - ";
        NSString*sa=store_address;
        NSString*sb=type1;
        NSString*sc=barcode;
        _plase_n18.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
        
        
        
        
    }else{
        _v_n18.hidden=YES;
        
    }
    
    
    

    
    
    if  (19 < jsonArray.count) {
        
        _category_name_n19.text=[[jsonArray objectAtIndex:19] objectForKey:@"store_name"];
        _price_n19.text=[[jsonArray objectAtIndex:19] objectForKey:@"price"];
        _other_n19.text=[[jsonArray objectAtIndex:19] objectForKey:@"other"];
        _url19.text= [[jsonArray objectAtIndex:19] objectForKey:@"url"];
        //_x19.text= [[jsonArray objectAtIndex:19] objectForKey:@"x"];
        //_y19.text= [[jsonArray objectAtIndex:19] objectForKey:@"y"];
        //_z19.text= [[jsonArray objectAtIndex:19] objectForKey:@"z"];
        
        NSString* store_address =[[jsonArray objectAtIndex:19] objectForKey:@"store_address"];
        NSString* type1 =[[jsonArray objectAtIndex:19] objectForKey:@"type1"];
        NSString* barcode =[[jsonArray objectAtIndex:19] objectForKey:@"barcode"];
        
        NSString*s=@" - ";
        NSString*sa=store_address;
        NSString*sb=type1;
        NSString*sc=barcode;
        _plase_n19.text = [NSString stringWithFormat:@"%@%@%@%@%@",sa,s,sb,s,sc];
        
        
        _id_price.text =[[jsonArray objectAtIndex:19] objectForKey:@"store_id"];
        
    }else{
        _v_n19.hidden=YES;
        
    }
    
    
    






     


       
        
        
        
    
        
//        _show_loading.hidden=YES;
    
 
        [_timer3 invalidate];
    _timer3 = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(url) userInfo:nil repeats:NO];

    
    }
     
         





- (void) url {
    

    NSString *surn0 = _url0.text;
    NSString *stu0  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt0  =surn0;
    
    NSString *imgURL0 =[NSString stringWithFormat:@"%@%@",stu0,stt0];
    NSData *data0 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL0]];
    [_im_n0 setImage:[UIImage imageWithData:data0]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////
    
    NSString *surn1 = _url1.text;
    NSString *stu1  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt1  =surn1;
    
    NSString *imgURL1 =[NSString stringWithFormat:@"%@%@",stu1,stt1];
    NSData *data1 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL1]];
    [_im_n1 setImage:[UIImage imageWithData:data1]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    NSString *surn2 = _url2.text;
    NSString *stu2  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt2  =surn2;
    
    NSString *imgURL2 =[NSString stringWithFormat:@"%@%@",stu2,stt2];
    NSData *data2 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL2]];
    [_im_n2 setImage:[UIImage imageWithData:data2]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    NSString *surn3 = _url3.text;
    NSString *stu3  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt3  =surn3;
    
    NSString *imgURL3 =[NSString stringWithFormat:@"%@%@",stu3,stt3];
    NSData *data3 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL3]];
    [_im_n3 setImage:[UIImage imageWithData:data3]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    NSString *surn4 = _url4.text;
    NSString *stu4  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt4  =surn4;
    
    NSString *imgURL4 =[NSString stringWithFormat:@"%@%@",stu4,stt4];
    NSData *data4 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL4]];
    [_im_n4 setImage:[UIImage imageWithData:data4]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    NSString *surn5 = _url5.text;
    NSString *stu5  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt5  =surn5;
    
    NSString *imgURL5 =[NSString stringWithFormat:@"%@%@",stu5,stt5];
    NSData *data5 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL5]];
    [_im_n5 setImage:[UIImage imageWithData:data5]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    NSString *surn6 = _url6.text;
    NSString *stu6  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt6  =surn6;
    
    NSString *imgURL6 =[NSString stringWithFormat:@"%@%@",stu6,stt6];
    NSData *data6 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL6]];
    [_im_n6 setImage:[UIImage imageWithData:data6]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    NSString *surn7 = _url7.text;
    NSString *stu7  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt7  =surn7;
    
    NSString *imgURL7 =[NSString stringWithFormat:@"%@%@",stu7,stt7];
    NSData *data7 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL7]];
    [_im_n7 setImage:[UIImage imageWithData:data7]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    NSString *surn8 = _url8.text;
    NSString *stu8  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt8  =surn8;
    
    NSString *imgURL8 =[NSString stringWithFormat:@"%@%@",stu8,stt8];
    NSData *data8 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL8]];
    [_im_n8 setImage:[UIImage imageWithData:data8]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    NSString *surn9 = _url9.text;
    NSString *stu9  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt9  =surn9;
    
    NSString *imgURL9 =[NSString stringWithFormat:@"%@%@",stu9,stt9];
    NSData *data9 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL9]];
    [_im_n9 setImage:[UIImage imageWithData:data9]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    NSString *surn10 = _url10.text;
    NSString *stu10  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt10  =surn10;
    
    NSString *imgURL10 =[NSString stringWithFormat:@"%@%@",stu10,stt10];
    NSData *data10 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL10]];
    [_im_n10 setImage:[UIImage imageWithData:data10]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    NSString *surn11 = _url11.text;
    NSString *stu11  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt11  =surn11;
    
    NSString *imgURL11 =[NSString stringWithFormat:@"%@%@",stu11,stt11];
    NSData *data11 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL11]];
    [_im_n11 setImage:[UIImage imageWithData:data11]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    NSString *surn12 = _url12.text;
    NSString *stu12  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt12  =surn12;
    
    NSString *imgURL12 =[NSString stringWithFormat:@"%@%@",stu12,stt12];
    NSData *data12 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL12]];
    [_im_n12 setImage:[UIImage imageWithData:data12]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    NSString *surn13 = _url13.text;
    NSString *stu13  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt13  =surn13;
    
    NSString *imgURL13 =[NSString stringWithFormat:@"%@%@",stu13,stt13];
    NSData *data13 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL13]];
    [_im_n13 setImage:[UIImage imageWithData:data13]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    NSString *surn14 = _url14.text;
    NSString *stu14  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt14  =surn14;
    
    NSString *imgURL14 =[NSString stringWithFormat:@"%@%@",stu14,stt14];
    NSData *data14 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL14]];
    [_im_n14 setImage:[UIImage imageWithData:data14]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    NSString *surn15 = _url15.text;
    NSString *stu15  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt15  =surn15;
    
    NSString *imgURL15 =[NSString stringWithFormat:@"%@%@",stu15,stt15];
    NSData *data15 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL15]];
    [_im_n15 setImage:[UIImage imageWithData:data15]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    NSString *surn16 = _url16.text;
    NSString *stu16  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt16  =surn16;
    
    NSString *imgURL16 =[NSString stringWithFormat:@"%@%@",stu16,stt16];
    NSData *data16 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL16]];
    [_im_n16 setImage:[UIImage imageWithData:data16]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    NSString *surn17 = _url17.text;
    NSString *stu17  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt17  =surn17;
    
    NSString *imgURL17 =[NSString stringWithFormat:@"%@%@",stu17,stt17];
    NSData *data17 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL17]];
    [_im_n17 setImage:[UIImage imageWithData:data17]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    NSString *surn18 = _url18.text;
    NSString *stu18  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt18  =surn18;
    
    NSString *imgURL18 =[NSString stringWithFormat:@"%@%@",stu18,stt18];
    NSData *data18 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL18]];
    [_im_n18 setImage:[UIImage imageWithData:data18]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    NSString *surn19 = _url19.text;
    NSString *stu19  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stt19  =surn19;
    
    NSString *imgURL19 =[NSString stringWithFormat:@"%@%@",stu19,stt19];
    NSData *data19 = [NSData dataWithContentsOfURL:[NSURL URLWithString:imgURL19]];
    [_im_n19 setImage:[UIImage imageWithData:data19]];
    ///////// ///////// ///////// ///////// ///////// ///////// ///////// /////////

    [self.activityIndicatorView_n0 stopAnimating];
    [self.activityIndicatorView_n1 stopAnimating];
    [self.activityIndicatorView_n2 stopAnimating];
    [self.activityIndicatorView_n3 stopAnimating];
    [self.activityIndicatorView_n4 stopAnimating];
    [self.activityIndicatorView_n5 stopAnimating];
    [self.activityIndicatorView_n6 stopAnimating];
    [self.activityIndicatorView_n7 stopAnimating];
    [self.activityIndicatorView_n8 stopAnimating];
    [self.activityIndicatorView_n9 stopAnimating];
    [self.activityIndicatorView_n10 stopAnimating];
    [self.activityIndicatorView_n11 stopAnimating];
    [self.activityIndicatorView_n12 stopAnimating];
    [self.activityIndicatorView_n13 stopAnimating];
    [self.activityIndicatorView_n14 stopAnimating];
    [self.activityIndicatorView_n15 stopAnimating];
    [self.activityIndicatorView_n16 stopAnimating];
    [self.activityIndicatorView_n17 stopAnimating];
    [self.activityIndicatorView_n18 stopAnimating];
    [self.activityIndicatorView_n19 stopAnimating];

    _show_loading.hidden=YES;

}

















- (IBAction)b_n0:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:0] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];

}

- (IBAction)b_n1:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:1] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}
- (IBAction)b_n2:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:2] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}
- (IBAction)b_n3:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:3] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}
- (IBAction)b_n4:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:4] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}
- (IBAction)b_n5:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:5] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}
- (IBAction)b_n6:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:6] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}
- (IBAction)b_n7:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:7] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}
- (IBAction)b_n8:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:8] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}
- (IBAction)b_n9:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:9] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}
- (IBAction)b_n10:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:10] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}

- (IBAction)b_n11:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:11] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}

- (IBAction)b_n12:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:12] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}

- (IBAction)b_n13:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:13] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}

- (IBAction)b_n14:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:14] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}

- (IBAction)b_n15:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:15] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}

- (IBAction)b_n16:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:16] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}

- (IBAction)b_n17:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:17] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}

- (IBAction)b_n18:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:18] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}

- (IBAction)b_n19:(id)sender {
    
    NSString *S_f11 =[[jsonArray objectAtIndex:19] objectForKey:@"store_id"];
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"myid"];
    [D_f11 synchronize];
    
    [self performSegueWithIdentifier:@"go_d" sender:self];
    
}








/*

-(void) go_to_details {
 
    
    NSString *S_f1 =_xcategory_name.text;
    NSUserDefaults *D_f1 =[NSUserDefaults standardUserDefaults];
    [D_f1 setObject :S_f1 forKey:@"category_name"];
    [D_f1 synchronize];
    
    NSString *S_f2 =_xplase.text;
    NSUserDefaults *D_f2 =[NSUserDefaults standardUserDefaults];
    [D_f2 setObject :S_f2 forKey:@"plase"];
    [D_f2 synchronize];
    
    NSString *S_f3 =_xcategory_id.text;
    NSUserDefaults *D_f3 =[NSUserDefaults standardUserDefaults];
    [D_f3 setObject :S_f3 forKey:@"category_id"];
    [D_f3 synchronize];
    
    NSString *S_f4 =_xlat.text;
    NSUserDefaults *D_f4 =[NSUserDefaults standardUserDefaults];
    [D_f4 setObject :S_f4 forKey:@"lat"];
    [D_f4 synchronize];
    
    NSString *S_f5 =_xlon.text;
    NSUserDefaults *D_f5 =[NSUserDefaults standardUserDefaults];
    [D_f5 setObject :S_f5 forKey:@"lon"];
    [D_f5 synchronize];
    
    NSString *S_f6 =_xcategory_icon.text;
    NSUserDefaults *D_f6 =[NSUserDefaults standardUserDefaults];
    [D_f6 setObject :S_f6 forKey:@"icon"];
    [D_f6 synchronize];
    
    NSString *S_f7 =_xdescri.text;
    NSUserDefaults *D_f7 =[NSUserDefaults standardUserDefaults];
    [D_f7 setObject :S_f7 forKey:@"descri"];
    [D_f7 synchronize];
    
    NSString *S_f9 =_xgood.text;
    NSUserDefaults *D_f9 =[NSUserDefaults standardUserDefaults];
    [D_f9 setObject :S_f9 forKey:@"good"];
    [D_f9 synchronize];

    NSString *S_f1x =_xch_in.text;
    NSUserDefaults *D_f1x =[NSUserDefaults standardUserDefaults];
    [D_f1x setObject :S_f1x forKey:@"ch_in"];
    [D_f1x synchronize];
    
    NSString *S_f11 =_xch_out.text;
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"ch_out"];
    [D_f11 synchronize];
    
    NSString *S_f12 =_xdop.text;
    NSUserDefaults *D_f12 =[NSUserDefaults standardUserDefaults];
    [D_f12 setObject :S_f12 forKey:@"dopest"];
    [D_f12 synchronize];
  
     [self go];
}

*/


////////////////////////////////////////////////////////////////////////////////////////////////////////////////



- (IBAction)btn_new_price_rate:(id)sender {
    
    if (_segmentedControl.selectedSegmentIndex == 0) {
        
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"تقييم"
//                                                        message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
//        [alert show];
        _myopt.text=@"تقييم";

        _search_url.text= @"http://ahjezapp.com/ahjz/app/ios/show_category/self33.php?id_price=&id_rate=";
        
        NSString*t0  =_search_url.text;
        NSString*t1  =@"&xpassword=";
        NSString*t2  =_typyz2.text;
        NSString *xmyurl =[NSString stringWithFormat:@"%@%@%@",t0,t1,t2];
        _search_url.text=xmyurl;
        
        
 
        
        // save _search_url
        NSString *S_f11 =_search_url.text;
        NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
        [D_f11 setObject :S_f11 forKey:@"search_url"];
        [D_f11 synchronize];
        
        // save myopt
        NSString *S_f11x =@"تقييم";
        NSUserDefaults *D_f11x =[NSUserDefaults standardUserDefaults];
        [D_f11x setObject :S_f11x forKey:@"myopt"];
        [D_f11x synchronize];
        
    //    _show_loading.hidden=NO;
        
     //   _timer = [NSTimer scheduledTimerWithTimeInterval:0.10 target:self selector:@selector(updateTimer) userInfo:nil repeats:NO];   //    [self retrieveData];


        
    } else if(_segmentedControl.selectedSegmentIndex == 1) {

//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"سعر"
//                                                        message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
//        [alert show];
        _myopt.text=@"سعر";

        
        _search_url.text= @"http://ahjezapp.com/ahjz/app/ios/show_category/self44.php?id_price=&id_rate=";
        
        NSString*t0  =_search_url.text;
        NSString*t1  =@"&xpassword=";
        NSString*t2  =_typyz2.text;
        NSString *xmyurl =[NSString stringWithFormat:@"%@%@%@",t0,t1,t2];
        _search_url.text=xmyurl;
        
        
        
        // save _search_url
        NSString *S_f11 =_search_url.text;
        NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
        [D_f11 setObject :S_f11 forKey:@"search_url"];
        [D_f11 synchronize];
        
        
        // save myopt
        NSString *S_f11x =@"سعر";
        NSUserDefaults *D_f11x =[NSUserDefaults standardUserDefaults];
        [D_f11x setObject :S_f11x forKey:@"myopt"];
        [D_f11x synchronize];
        
    //    _show_loading.hidden=NO;

    //    _timer = [NSTimer scheduledTimerWithTimeInterval:0.10 target:self selector:@selector(updateTimer) userInfo:nil repeats:NO];   //    [self retrieveData];

    

    }
}








- (IBAction)btn_more:(id)sender {

/*

    if([_myopt.text isEqual:@"سعر"]){
        

        NSString*t1=@"http://ahjezapp.com/ahjz/app/ios/show_category/self44.php?id_price=";
        NSString*t2=_id_price.text;
        NSString*t3=@"&id_rate=";
        NSString*t4=@"11";
        NSString*t5=@"&xpassword=";
        NSString*t6=_typyz2.text;
        
        NSString *more_url =[NSString stringWithFormat:@"%@%@%@%@%@%@",t1,t2,t3,t4,t5,t6];

        // save _search_url
        NSString *S_f11 =more_url;
        NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
        [D_f11 setObject :S_f11 forKey:@"search_url"];
        [D_f11 synchronize];
        
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:t2                                                            message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
                    [alert show];
      //  [self performSegueWithIdentifier:@"n" sender:self];

    }else{
        
        
        NSString*t1=@"http://ahjezapp.com/ahjz/app/ios/show_category/self33.php?id_rate=";
        NSString*t2=_id_rate.text;
        NSString*t3=@"&id_price=";
        NSString*t4=@"";
        NSString*t5=@"&xpassword=";
        NSString*t6=_typyz2.text;
        
        NSString *more_url =[NSString stringWithFormat:@"%@%@%@%@%@%@",t1,t2,t3,t4,t5,t6];
        // save _search_url
        NSString *S_f11 =more_url;
        NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
        [D_f11 setObject :S_f11 forKey:@"search_url"];
        [D_f11 synchronize];
        
        
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:more_url                                                            message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
//        [alert show];
     //   [self performSegueWithIdentifier:@"n" sender:self];

    }
    

*/
    
    
    
    
    NSString*t1=@"http://ayjabiun.com/app/ios/show_stored/short_self_stored_ios.php?is_deleted=";
    NSString*t2=@"&store_id=";
    NSString*t3=_id_price.text;

    
    NSString *more_url =[NSString stringWithFormat:@"%@%@%@",t1,t2,t3];

    // save _search_url
    NSString *S_f11 =more_url;
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"search_url"];
    [D_f11 synchronize];
    
 
    
    
 
    
    

}


- (IBAction)btn_back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}








- (IBAction)btn_x:(id)sender {
    _address.text=@"";
    [self dismissKeyboard];
}

-(void)dismissKeyboard
{
    [self.address resignFirstResponder];
}



@end

//            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:_last_n0.text                                                            message:@"" delegate:self cancelButtonTitle:@"موافق" otherButtonTitles:nil];
//            [alert show];
