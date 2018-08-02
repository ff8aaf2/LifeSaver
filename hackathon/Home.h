//
//  Home.h
//  سلس
//
//  Created by FAHD ALDOBIAN on 11/22/17.
//  Copyright © 2017 FAHD ALDOBIAN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController


@property (nonatomic, retain) NSTimer *timer;
@property (nonatomic, retain) NSTimer *timer2;
@property (nonatomic, retain) NSTimer *timer3;

@property (strong, nonatomic) IBOutlet UIView *show_loading;
@property (strong, nonatomic) IBOutlet UIView *show_loading2;

@property (nonatomic,strong)NSMutableArray * jsonArray;
@property (nonatomic,strong)NSMutableArray * jsonArray2;
@property (nonatomic,strong)NSMutableArray * jsonArray0;


@property (strong, nonatomic) IBOutlet UIScrollView *scroll_lun;   // this for momyz
@property (strong, nonatomic) IBOutlet UIScrollView *scroll_all;

@property (strong, nonatomic) IBOutlet UILabel *search_url;

@property (strong, nonatomic) IBOutlet UILabel *typyz;
@property (strong, nonatomic) IBOutlet UILabel *typyz2;
@property (strong, nonatomic) IBOutlet UILabel *tameen;

@property (strong, nonatomic) IBOutlet UILabel *myphone;


@property (strong, nonatomic) IBOutlet UILabel *date;
@property (strong, nonatomic) IBOutlet UILabel *long_date;

@property (strong, nonatomic) IBOutlet UIView *v_n0;
@property (strong, nonatomic) IBOutlet UIWebView *w_n0;
@property (strong, nonatomic) IBOutlet UILabel *last_n0;
@property (strong, nonatomic) IBOutlet UILabel *good_n0;
@property (strong, nonatomic) IBOutlet UILabel *plase_n0;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n0;
@property (strong, nonatomic) IBOutlet UILabel *price_n0;
@property (strong, nonatomic) IBOutlet UILabel *other_n0;
@property (strong, nonatomic) IBOutlet UIButton *b_n0;

/*
@property (strong, nonatomic) IBOutlet UILabel *category_id_n0;
@property (strong, nonatomic) IBOutlet UILabel *xmobile_n0;
@property (strong, nonatomic) IBOutlet UILabel *xpassword_n0;
@property (strong, nonatomic) IBOutlet UILabel *xname_n0;
@property (strong, nonatomic) IBOutlet UILabel *city_n0;
@property (strong, nonatomic) IBOutlet UILabel *address_n0;
@property (strong, nonatomic) IBOutlet UILabel *direct_n0;
@property (strong, nonatomic) IBOutlet UILabel *descri_n0;
@property (strong, nonatomic) IBOutlet UILabel *lat_n0;
@property (strong, nonatomic) IBOutlet UILabel *lon_n0;
@property (strong, nonatomic) IBOutlet UILabel *ch_in_n0;
@property (strong, nonatomic) IBOutlet UILabel *ch_out_n0;
@property (strong, nonatomic) IBOutlet UILabel *dopest_n0;
@property (strong, nonatomic) IBOutlet UILabel *rate_n0;
@property (strong, nonatomic) IBOutlet UILabel *xcount_n0;
@property (strong, nonatomic) IBOutlet UILabel *bank_n0;
@property (strong, nonatomic) IBOutlet UILabel *other_n0;
@property (strong, nonatomic) IBOutlet UILabel *extra_n0;
@property (strong, nonatomic) IBOutlet UILabel *category_icon_n0;
*/


@property (strong, nonatomic) IBOutlet UIView *v_n1;
@property (strong, nonatomic) IBOutlet UIWebView *w_n1;
@property (strong, nonatomic) IBOutlet UILabel *last_n1;
@property (strong, nonatomic) IBOutlet UILabel *good_n1;
@property (strong, nonatomic) IBOutlet UILabel *plase_n1;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n1;
@property (strong, nonatomic) IBOutlet UILabel *price_n1;
@property (strong, nonatomic) IBOutlet UILabel *other_n1;
@property (strong, nonatomic) IBOutlet UIButton *b_n1;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n1;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n1;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n1;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n1;
 @property (strong, nonatomic) IBOutlet UILabel *city_n1;
 @property (strong, nonatomic) IBOutlet UILabel *address_n1;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n1;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n1;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n1;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n1;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n1;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n1;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n1;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n1;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n1;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n1;
 @property (strong, nonatomic) IBOutlet UILabel *other_n1;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n1;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n1;
 */


@property (strong, nonatomic) IBOutlet UIView *v_n2;
@property (strong, nonatomic) IBOutlet UIWebView *w_n2;
@property (strong, nonatomic) IBOutlet UILabel *last_n2;
@property (strong, nonatomic) IBOutlet UILabel *good_n2;
@property (strong, nonatomic) IBOutlet UILabel *plase_n2;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n2;
@property (strong, nonatomic) IBOutlet UILabel *price_n2;
@property (strong, nonatomic) IBOutlet UILabel *other_n2;
@property (strong, nonatomic) IBOutlet UIButton *b_n2;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n2;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n2;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n2;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n2;
 @property (strong, nonatomic) IBOutlet UILabel *city_n2;
 @property (strong, nonatomic) IBOutlet UILabel *address_n2;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n2;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n2;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n2;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n2;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n2;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n2;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n2;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n2;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n2;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n2;
 @property (strong, nonatomic) IBOutlet UILabel *other_n2;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n2;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n2;
 */


@property (strong, nonatomic) IBOutlet UIView *v_n3;
@property (strong, nonatomic) IBOutlet UIWebView *w_n3;
@property (strong, nonatomic) IBOutlet UILabel *last_n3;
@property (strong, nonatomic) IBOutlet UILabel *good_n3;
@property (strong, nonatomic) IBOutlet UILabel *plase_n3;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n3;
@property (strong, nonatomic) IBOutlet UILabel *price_n3;
@property (strong, nonatomic) IBOutlet UILabel *other_n3;
@property (strong, nonatomic) IBOutlet UIButton *b_n3;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n3;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n3;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n3;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n3;
 @property (strong, nonatomic) IBOutlet UILabel *city_n3;
 @property (strong, nonatomic) IBOutlet UILabel *address_n3;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n3;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n3;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n3;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n3;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n3;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n3;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n3;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n3;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n3;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n3;
 @property (strong, nonatomic) IBOutlet UILabel *other_n3;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n3;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n3;
 */


@property (strong, nonatomic) IBOutlet UIView *v_n4;
@property (strong, nonatomic) IBOutlet UIWebView *w_n4;
@property (strong, nonatomic) IBOutlet UILabel *last_n4;
@property (strong, nonatomic) IBOutlet UILabel *good_n4;
@property (strong, nonatomic) IBOutlet UILabel *plase_n4;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n4;
@property (strong, nonatomic) IBOutlet UILabel *price_n4;
@property (strong, nonatomic) IBOutlet UILabel *other_n4;
@property (strong, nonatomic) IBOutlet UIButton *b_n4;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n4;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n4;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n4;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n4;
 @property (strong, nonatomic) IBOutlet UILabel *city_n4;
 @property (strong, nonatomic) IBOutlet UILabel *address_n4;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n4;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n4;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n4;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n4;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n4;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n4;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n4;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n4;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n4;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n4;
 @property (strong, nonatomic) IBOutlet UILabel *other_n4;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n4;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n4;
 */


@property (strong, nonatomic) IBOutlet UIView *v_n5;
@property (strong, nonatomic) IBOutlet UIWebView *w_n5;
@property (strong, nonatomic) IBOutlet UILabel *last_n5;
@property (strong, nonatomic) IBOutlet UILabel *good_n5;
@property (strong, nonatomic) IBOutlet UILabel *plase_n5;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n5;
@property (strong, nonatomic) IBOutlet UILabel *price_n5;
@property (strong, nonatomic) IBOutlet UILabel *other_n5;
@property (strong, nonatomic) IBOutlet UIButton *b_n5;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n5;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n5;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n5;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n5;
 @property (strong, nonatomic) IBOutlet UILabel *city_n5;
 @property (strong, nonatomic) IBOutlet UILabel *address_n5;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n5;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n5;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n5;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n5;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n5;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n5;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n5;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n5;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n5;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n5;
 @property (strong, nonatomic) IBOutlet UILabel *other_n5;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n5;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n5;
 */


@property (strong, nonatomic) IBOutlet UIView *v_n6;
@property (strong, nonatomic) IBOutlet UIWebView *w_n6;
@property (strong, nonatomic) IBOutlet UILabel *last_n6;
@property (strong, nonatomic) IBOutlet UILabel *good_n6;
@property (strong, nonatomic) IBOutlet UILabel *plase_n6;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n6;
@property (strong, nonatomic) IBOutlet UILabel *price_n6;
@property (strong, nonatomic) IBOutlet UILabel *other_n6;
@property (strong, nonatomic) IBOutlet UIButton *b_n6;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n6;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n6;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n6;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n6;
 @property (strong, nonatomic) IBOutlet UILabel *city_n6;
 @property (strong, nonatomic) IBOutlet UILabel *address_n6;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n6;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n6;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n6;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n6;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n6;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n6;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n6;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n6;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n6;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n6;
 @property (strong, nonatomic) IBOutlet UILabel *other_n6;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n6;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n6;
 */


@property (strong, nonatomic) IBOutlet UIView *v_n7;
@property (strong, nonatomic) IBOutlet UIWebView *w_n7;
@property (strong, nonatomic) IBOutlet UILabel *last_n7;
@property (strong, nonatomic) IBOutlet UILabel *good_n7;
@property (strong, nonatomic) IBOutlet UILabel *plase_n7;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n7;
@property (strong, nonatomic) IBOutlet UILabel *price_n7;
@property (strong, nonatomic) IBOutlet UILabel *other_n7;
@property (strong, nonatomic) IBOutlet UIButton *b_n7;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n7;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n7;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n7;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n7;
 @property (strong, nonatomic) IBOutlet UILabel *city_n7;
 @property (strong, nonatomic) IBOutlet UILabel *address_n7;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n7;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n7;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n7;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n7;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n7;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n7;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n7;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n7;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n7;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n7;
 @property (strong, nonatomic) IBOutlet UILabel *other_n7;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n7;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n7;
 */


@property (strong, nonatomic) IBOutlet UIView *v_n8;
@property (strong, nonatomic) IBOutlet UIWebView *w_n8;
@property (strong, nonatomic) IBOutlet UILabel *last_n8;
@property (strong, nonatomic) IBOutlet UILabel *good_n8;
@property (strong, nonatomic) IBOutlet UILabel *plase_n8;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n8;
@property (strong, nonatomic) IBOutlet UILabel *price_n8;
@property (strong, nonatomic) IBOutlet UILabel *other_n8;
@property (strong, nonatomic) IBOutlet UIButton *b_n8;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n8;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n8;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n8;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n8;
 @property (strong, nonatomic) IBOutlet UILabel *city_n8;
 @property (strong, nonatomic) IBOutlet UILabel *address_n8;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n8;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n8;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n8;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n8;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n8;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n8;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n8;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n8;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n8;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n8;
 @property (strong, nonatomic) IBOutlet UILabel *other_n8;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n8;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n8;
 */


@property (strong, nonatomic) IBOutlet UIView *v_n9;
@property (strong, nonatomic) IBOutlet UIWebView *w_n9;
@property (strong, nonatomic) IBOutlet UILabel *last_n9;
@property (strong, nonatomic) IBOutlet UILabel *good_n9;
@property (strong, nonatomic) IBOutlet UILabel *plase_n9;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n9;
@property (strong, nonatomic) IBOutlet UILabel *price_n9;
@property (strong, nonatomic) IBOutlet UILabel *other_n9;
@property (strong, nonatomic) IBOutlet UIButton *b_n9;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n9;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n9;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n9;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n9;
 @property (strong, nonatomic) IBOutlet UILabel *city_n9;
 @property (strong, nonatomic) IBOutlet UILabel *address_n9;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n9;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n9;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n9;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n9;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n9;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n9;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n9;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n9;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n9;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n9;
 @property (strong, nonatomic) IBOutlet UILabel *other_n9;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n9;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n9;
 */



@property (strong, nonatomic) IBOutlet UIView *v_n10;
@property (strong, nonatomic) IBOutlet UIWebView *w_n10;
@property (strong, nonatomic) IBOutlet UILabel *last_n10;
@property (strong, nonatomic) IBOutlet UILabel *good_n10;
@property (strong, nonatomic) IBOutlet UILabel *plase_n10;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n10;
@property (strong, nonatomic) IBOutlet UILabel *price_n10;
@property (strong, nonatomic) IBOutlet UILabel *other_n10;
@property (strong, nonatomic) IBOutlet UIButton *b_n10;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n10;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n10;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n10;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n10;
 @property (strong, nonatomic) IBOutlet UILabel *city_n10;
 @property (strong, nonatomic) IBOutlet UILabel *address_n10;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n10;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n10;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n10;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n10;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n10;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n10;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n10;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n10;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n10;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n10;
 @property (strong, nonatomic) IBOutlet UILabel *other_n10;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n10;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n10;
 */


@property (strong, nonatomic) IBOutlet UIView *v_n11;
@property (strong, nonatomic) IBOutlet UIWebView *w_n11;
@property (strong, nonatomic) IBOutlet UILabel *last_n11;
@property (strong, nonatomic) IBOutlet UILabel *good_n11;
@property (strong, nonatomic) IBOutlet UILabel *plase_n11;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n11;
@property (strong, nonatomic) IBOutlet UILabel *price_n11;
@property (strong, nonatomic) IBOutlet UILabel *other_n11;
@property (strong, nonatomic) IBOutlet UIButton *b_n11;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n11;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n11;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n11;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n11;
 @property (strong, nonatomic) IBOutlet UILabel *city_n11;
 @property (strong, nonatomic) IBOutlet UILabel *address_n11;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n11;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n11;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n11;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n11;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n11;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n11;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n11;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n11;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n11;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n11;
 @property (strong, nonatomic) IBOutlet UILabel *other_n11;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n11;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n11;
 */


@property (strong, nonatomic) IBOutlet UIView *v_n12;
@property (strong, nonatomic) IBOutlet UIWebView *w_n12;
@property (strong, nonatomic) IBOutlet UILabel *last_n12;
@property (strong, nonatomic) IBOutlet UILabel *good_n12;
@property (strong, nonatomic) IBOutlet UILabel *plase_n12;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n12;
@property (strong, nonatomic) IBOutlet UILabel *price_n12;
@property (strong, nonatomic) IBOutlet UILabel *other_n12;
@property (strong, nonatomic) IBOutlet UIButton *b_n12;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n12;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n12;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n12;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n12;
 @property (strong, nonatomic) IBOutlet UILabel *city_n12;
 @property (strong, nonatomic) IBOutlet UILabel *address_n12;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n12;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n12;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n12;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n12;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n12;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n12;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n12;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n12;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n12;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n12;
 @property (strong, nonatomic) IBOutlet UILabel *other_n12;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n12;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n12;
 */


@property (strong, nonatomic) IBOutlet UIView *v_n13;
@property (strong, nonatomic) IBOutlet UIWebView *w_n13;
@property (strong, nonatomic) IBOutlet UILabel *last_n13;
@property (strong, nonatomic) IBOutlet UILabel *good_n13;
@property (strong, nonatomic) IBOutlet UILabel *plase_n13;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n13;
@property (strong, nonatomic) IBOutlet UILabel *price_n13;
@property (strong, nonatomic) IBOutlet UILabel *other_n13;
@property (strong, nonatomic) IBOutlet UIButton *b_n13;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n13;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n13;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n13;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n13;
 @property (strong, nonatomic) IBOutlet UILabel *city_n13;
 @property (strong, nonatomic) IBOutlet UILabel *address_n13;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n13;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n13;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n13;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n13;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n13;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n13;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n13;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n13;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n13;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n13;
 @property (strong, nonatomic) IBOutlet UILabel *other_n13;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n13;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n13;
 */


@property (strong, nonatomic) IBOutlet UIView *v_n14;
@property (strong, nonatomic) IBOutlet UIWebView *w_n14;
@property (strong, nonatomic) IBOutlet UILabel *last_n14;
@property (strong, nonatomic) IBOutlet UILabel *good_n14;
@property (strong, nonatomic) IBOutlet UILabel *plase_n14;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n14;
@property (strong, nonatomic) IBOutlet UILabel *price_n14;
@property (strong, nonatomic) IBOutlet UILabel *other_n14;
@property (strong, nonatomic) IBOutlet UIButton *b_n14;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n14;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n14;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n14;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n14;
 @property (strong, nonatomic) IBOutlet UILabel *city_n14;
 @property (strong, nonatomic) IBOutlet UILabel *address_n14;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n14;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n14;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n14;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n14;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n14;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n14;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n14;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n14;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n14;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n14;
 @property (strong, nonatomic) IBOutlet UILabel *other_n14;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n14;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n14;
 */


@property (strong, nonatomic) IBOutlet UIView *v_n15;
@property (strong, nonatomic) IBOutlet UIWebView *w_n15;
@property (strong, nonatomic) IBOutlet UILabel *last_n15;
@property (strong, nonatomic) IBOutlet UILabel *good_n15;
@property (strong, nonatomic) IBOutlet UILabel *plase_n15;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n15;
@property (strong, nonatomic) IBOutlet UILabel *price_n15;
@property (strong, nonatomic) IBOutlet UILabel *other_n15;
@property (strong, nonatomic) IBOutlet UIButton *b_n15;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n15;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n15;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n15;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n15;
 @property (strong, nonatomic) IBOutlet UILabel *city_n15;
 @property (strong, nonatomic) IBOutlet UILabel *address_n15;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n15;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n15;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n15;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n15;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n15;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n15;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n15;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n15;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n15;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n15;
 @property (strong, nonatomic) IBOutlet UILabel *other_n15;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n15;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n15;
 */


@property (strong, nonatomic) IBOutlet UIView *v_n16;
@property (strong, nonatomic) IBOutlet UIWebView *w_n16;
@property (strong, nonatomic) IBOutlet UILabel *last_n16;
@property (strong, nonatomic) IBOutlet UILabel *good_n16;
@property (strong, nonatomic) IBOutlet UILabel *plase_n16;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n16;
@property (strong, nonatomic) IBOutlet UILabel *price_n16;
@property (strong, nonatomic) IBOutlet UILabel *other_n16;
@property (strong, nonatomic) IBOutlet UIButton *b_n16;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n16;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n16;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n16;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n16;
 @property (strong, nonatomic) IBOutlet UILabel *city_n16;
 @property (strong, nonatomic) IBOutlet UILabel *address_n16;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n16;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n16;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n16;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n16;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n16;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n16;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n16;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n16;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n16;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n16;
 @property (strong, nonatomic) IBOutlet UILabel *other_n16;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n16;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n16;
 */


@property (strong, nonatomic) IBOutlet UIView *v_n17;
@property (strong, nonatomic) IBOutlet UIWebView *w_n17;
@property (strong, nonatomic) IBOutlet UILabel *last_n17;
@property (strong, nonatomic) IBOutlet UILabel *good_n17;
@property (strong, nonatomic) IBOutlet UILabel *plase_n17;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n17;
@property (strong, nonatomic) IBOutlet UILabel *price_n17;
@property (strong, nonatomic) IBOutlet UILabel *other_n17;
@property (strong, nonatomic) IBOutlet UIButton *b_n17;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n17;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n17;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n17;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n17;
 @property (strong, nonatomic) IBOutlet UILabel *city_n17;
 @property (strong, nonatomic) IBOutlet UILabel *address_n17;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n17;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n17;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n17;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n17;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n17;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n17;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n17;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n17;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n17;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n17;
 @property (strong, nonatomic) IBOutlet UILabel *other_n17;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n17;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n17;
 */


@property (strong, nonatomic) IBOutlet UIView *v_n18;
@property (strong, nonatomic) IBOutlet UIWebView *w_n18;
@property (strong, nonatomic) IBOutlet UILabel *last_n18;
@property (strong, nonatomic) IBOutlet UILabel *good_n18;
@property (strong, nonatomic) IBOutlet UILabel *plase_n18;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n18;
@property (strong, nonatomic) IBOutlet UILabel *price_n18;
@property (strong, nonatomic) IBOutlet UILabel *other_n18;
@property (strong, nonatomic) IBOutlet UIButton *b_n18;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n18;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n18;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n18;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n18;
 @property (strong, nonatomic) IBOutlet UILabel *city_n18;
 @property (strong, nonatomic) IBOutlet UILabel *address_n18;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n18;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n18;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n18;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n18;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n18;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n18;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n18;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n18;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n18;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n18;
 @property (strong, nonatomic) IBOutlet UILabel *other_n18;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n18;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n18;
 */


@property (strong, nonatomic) IBOutlet UIView *v_n19;
@property (strong, nonatomic) IBOutlet UIWebView *w_n19;
@property (strong, nonatomic) IBOutlet UILabel *last_n19;
@property (strong, nonatomic) IBOutlet UILabel *good_n19;
@property (strong, nonatomic) IBOutlet UILabel *plase_n19;
@property (strong, nonatomic) IBOutlet UILabel *category_name_n19;
@property (strong, nonatomic) IBOutlet UILabel *price_n19;
@property (strong, nonatomic) IBOutlet UILabel *other_n19;
@property (strong, nonatomic) IBOutlet UIButton *b_n19;
/*
 @property (strong, nonatomic) IBOutlet UILabel *category_id_n19;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile_n19;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword_n19;
 @property (strong, nonatomic) IBOutlet UILabel *xname_n19;
 @property (strong, nonatomic) IBOutlet UILabel *city_n19;
 @property (strong, nonatomic) IBOutlet UILabel *address_n19;
 @property (strong, nonatomic) IBOutlet UILabel *direct_n19;
 @property (strong, nonatomic) IBOutlet UILabel *descri_n19;
 @property (strong, nonatomic) IBOutlet UILabel *lat_n19;
 @property (strong, nonatomic) IBOutlet UILabel *lon_n19;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in_n19;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out_n19;
 @property (strong, nonatomic) IBOutlet UILabel *dopest_n19;
 @property (strong, nonatomic) IBOutlet UILabel *rate_n19;
 @property (strong, nonatomic) IBOutlet UILabel *xcount_n19;
 @property (strong, nonatomic) IBOutlet UILabel *bank_n19;
 @property (strong, nonatomic) IBOutlet UILabel *other_n19;
 @property (strong, nonatomic) IBOutlet UILabel *extra_n19;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon_n19;
 */





//category_id


/*
 
 @property (strong, nonatomic) IBOutlet UILabel *category_id;
 @property (strong, nonatomic) IBOutlet UILabel *category_name;
 @property (strong, nonatomic) IBOutlet UILabel *xmobile;
 @property (strong, nonatomic) IBOutlet UILabel *xpassword;
 @property (strong, nonatomic) IBOutlet UILabel *xname;
 @property (strong, nonatomic) IBOutlet UILabel *city;
 @property (strong, nonatomic) IBOutlet UILabel *address;
 @property (strong, nonatomic) IBOutlet UILabel *direct;
 @property (strong, nonatomic) IBOutlet UILabel *descri;
 @property (strong, nonatomic) IBOutlet UILabel *price;
 @property (strong, nonatomic) IBOutlet UILabel *other;
 @property (strong, nonatomic) IBOutlet UILabel *lat;
 @property (strong, nonatomic) IBOutlet UILabel *lon;
 @property (strong, nonatomic) IBOutlet UILabel *ch_in;
 @property (strong, nonatomic) IBOutlet UILabel *ch_out;
 @property (strong, nonatomic) IBOutlet UILabel *dopest;
 @property (strong, nonatomic) IBOutlet UILabel *rate;
 @property (strong, nonatomic) IBOutlet UILabel *xcount;
 @property (strong, nonatomic) IBOutlet UILabel *bank;
 @property (strong, nonatomic) IBOutlet UILabel *other;
 @property (strong, nonatomic) IBOutlet UILabel *extra;
 @property (strong, nonatomic) IBOutlet UILabel *category_icon;

 
 */



@property (strong, nonatomic) IBOutlet UILabel *xcategory_id;
@property (strong, nonatomic) IBOutlet UILabel *xcategory_name;
@property (strong, nonatomic) IBOutlet UILabel *xlat;
@property (strong, nonatomic) IBOutlet UILabel *xlon;
@property (strong, nonatomic) IBOutlet UILabel *xcategory_icon;
@property (strong, nonatomic) IBOutlet UILabel *xdescri;
@property (strong, nonatomic) IBOutlet UILabel *xch_in;
@property (strong, nonatomic) IBOutlet UILabel *xch_out;
@property (strong, nonatomic) IBOutlet UILabel *xdop;
@property (strong, nonatomic) IBOutlet UILabel *xrate;
@property (strong, nonatomic) IBOutlet UILabel *xgood;
@property (strong, nonatomic) IBOutlet UILabel *xplase;

@property (strong, nonatomic) IBOutlet UILabel *ifhjz_idz;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n0;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n1;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n2;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n3;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n4;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n5;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n6;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n7;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n8;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n9;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n10;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n11;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n12;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n13;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n14;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n15;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n16;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n17;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n18;
@property (strong, nonatomic) IBOutlet UILabel *ifhjz_id_n19;


@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (strong, nonatomic) IBOutlet UIStepper *stepper;
@property (strong, nonatomic) IBOutlet UILabel *pices;
@property (strong, nonatomic) IBOutlet UILabel *first_price;
@property (strong, nonatomic) IBOutlet UILabel *total;
@property (strong, nonatomic) IBOutlet UILabel *item_price_nx;
@property (strong, nonatomic) IBOutlet UILabel *myopt;


//@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property (strong, nonatomic) IBOutlet UILabel *id_price;
@property (strong, nonatomic) IBOutlet UILabel *id_rate;


@property (strong, nonatomic) IBOutlet UILabel *offer_day;
@property (strong, nonatomic) IBOutlet UILabel *offer_date;

@property (strong, nonatomic) IBOutlet UITextField *category_name;


@property (strong, nonatomic) IBOutlet UILabel *city;
@property (strong, nonatomic) IBOutlet UITextField *address;
@property (strong, nonatomic) IBOutlet UILabel *xd;



@property (strong, nonatomic) IBOutlet UIImageView *im_n0;
@property (strong, nonatomic) IBOutlet UIImageView *im_n1;
@property (strong, nonatomic) IBOutlet UIImageView *im_n2;
@property (strong, nonatomic) IBOutlet UIImageView *im_n3;
@property (strong, nonatomic) IBOutlet UIImageView *im_n4;
@property (strong, nonatomic) IBOutlet UIImageView *im_n5;
@property (strong, nonatomic) IBOutlet UIImageView *im_n6;
@property (strong, nonatomic) IBOutlet UIImageView *im_n7;
@property (strong, nonatomic) IBOutlet UIImageView *im_n8;
@property (strong, nonatomic) IBOutlet UIImageView *im_n9;
@property (strong, nonatomic) IBOutlet UIImageView *im_n10;
@property (strong, nonatomic) IBOutlet UIImageView *im_n11;
@property (strong, nonatomic) IBOutlet UIImageView *im_n12;
@property (strong, nonatomic) IBOutlet UIImageView *im_n13;
@property (strong, nonatomic) IBOutlet UIImageView *im_n14;
@property (strong, nonatomic) IBOutlet UIImageView *im_n15;
@property (strong, nonatomic) IBOutlet UIImageView *im_n16;
@property (strong, nonatomic) IBOutlet UIImageView *im_n17;
@property (strong, nonatomic) IBOutlet UIImageView *im_n18;
@property (strong, nonatomic) IBOutlet UIImageView *im_n19;


@property (strong, nonatomic) IBOutlet UILabel *url0;
@property (strong, nonatomic) IBOutlet UILabel *url1;
@property (strong, nonatomic) IBOutlet UILabel *url2;
@property (strong, nonatomic) IBOutlet UILabel *url3;
@property (strong, nonatomic) IBOutlet UILabel *url4;
@property (strong, nonatomic) IBOutlet UILabel *url5;
@property (strong, nonatomic) IBOutlet UILabel *url6;
@property (strong, nonatomic) IBOutlet UILabel *url7;
@property (strong, nonatomic) IBOutlet UILabel *url8;
@property (strong, nonatomic) IBOutlet UILabel *url9;
@property (strong, nonatomic) IBOutlet UILabel *url10;
@property (strong, nonatomic) IBOutlet UILabel *url11;
@property (strong, nonatomic) IBOutlet UILabel *url12;
@property (strong, nonatomic) IBOutlet UILabel *url13;
@property (strong, nonatomic) IBOutlet UILabel *url14;
@property (strong, nonatomic) IBOutlet UILabel *url15;
@property (strong, nonatomic) IBOutlet UILabel *url16;
@property (strong, nonatomic) IBOutlet UILabel *url17;
@property (strong, nonatomic) IBOutlet UILabel *url18;
@property (strong, nonatomic) IBOutlet UILabel *url19;

@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n0;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n1;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n2;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n3;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n4;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n5;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n6;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n7;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n8;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n9;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n10;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n11;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n12;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n13;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n14;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n15;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n16;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n17;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n18;
@property (nonatomic,strong) IBOutlet UIActivityIndicatorView *activityIndicatorView_n19;





@end





