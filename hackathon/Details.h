//
//  Details.h
//  Borsa
//
//  Created by FAHD ALDOBIAN on 3/19/18.
//  Copyright © 2018 FAHD ALDOBIAN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Details : UIViewController

@property (nonatomic,strong)NSMutableArray * jsonArray;

@property (strong, nonatomic) IBOutlet UIScrollView *scroll_all;

@property (nonatomic, retain) NSTimer *timer;
@property (nonatomic, retain) NSTimer *timer3;

@property (strong, nonatomic) IBOutlet UIView *show_loading;


@property (strong, nonatomic) IBOutlet UILabel *myid;
@property (strong, nonatomic) IBOutlet UILabel *search_url;


@property (strong, nonatomic) IBOutlet UILabel *store_name_n0;
@property (strong, nonatomic) IBOutlet UILabel *price_n0;
@property (strong, nonatomic) IBOutlet UILabel *other_n0;
@property (strong, nonatomic) IBOutlet UILabel *url_n0;
@property (strong, nonatomic) IBOutlet UILabel *store_address_n0;
@property (strong, nonatomic) IBOutlet UILabel *type1_n0;
@property (strong, nonatomic) IBOutlet UILabel *barcode_n0;
@property (strong, nonatomic) IBOutlet UILabel *phone_no_n0;
@property (strong, nonatomic) IBOutlet UILabel *plase_n0;
@property (strong, nonatomic) IBOutlet UILabel *store_desc_n0;

@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n0;

 @property (strong, nonatomic) IBOutlet UIImageView *im_n0;
@property (strong, nonatomic) IBOutlet UIWebView *w_n0;



@end




