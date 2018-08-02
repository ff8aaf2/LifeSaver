
//
//  Created by mac on 6/21/1438 AH.
//  Copyright © 1438 فهد الدبيان. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>


#import <AddressBook/AddressBook.h>
#import <AddressBookUI/AddressBookUI.h>

#import <CoreLocation/CoreLocation.h>



 @import Contacts;



//@interface basket : UIViewController <MFMessageComposeViewControllerDelegate>

@interface admin : UIViewController  <CLLocationManagerDelegate>

//@interface basket : UIViewController <CLLocationManagerDelegate>


@property (nonatomic, retain) NSTimer *timer;
@property (nonatomic, retain) NSTimer *timer_more;





@property (nonatomic,strong)NSMutableArray * jsonArray;
@property (nonatomic,strong)NSMutableArray * citiesArray;

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *indic1;


//search
@property (strong, nonatomic) IBOutlet UITextField *tsearch;



////// news
@property (strong, nonatomic) IBOutlet UIView *banar_v_n0;
@property (strong, nonatomic) IBOutlet UILabel *br_news_content_n0;
@property (strong, nonatomic) IBOutlet UILabel *br_news_title_n0;
@property (strong, nonatomic) IBOutlet UILabel *br_news_url_n0;
@property (strong, nonatomic) IBOutlet UILabel *br_photo_url_n0;
@property (strong, nonatomic) IBOutlet UIWebView *br_web_n0;

////// news
@property (strong, nonatomic) IBOutlet UIView *banar_v_n1;
@property (strong, nonatomic) IBOutlet UILabel *br_news_content_n1;
@property (strong, nonatomic) IBOutlet UILabel *br_news_title_n1;
@property (strong, nonatomic) IBOutlet UILabel *br_news_url_n1;
@property (strong, nonatomic) IBOutlet UILabel *br_photo_url_n1;
@property (strong, nonatomic) IBOutlet UIWebView *br_web_n1;

////// news
@property (strong, nonatomic) IBOutlet UIView *banar_v_n2;
@property (strong, nonatomic) IBOutlet UILabel *br_news_content_n2;
@property (strong, nonatomic) IBOutlet UILabel *br_news_title_n2;
@property (strong, nonatomic) IBOutlet UILabel *br_news_url_n2;
@property (strong, nonatomic) IBOutlet UILabel *br_photo_url_n2;
@property (strong, nonatomic) IBOutlet UIWebView *br_web_n2;

////// news
@property (strong, nonatomic) IBOutlet UIView *banar_v_n3;
@property (strong, nonatomic) IBOutlet UILabel *br_news_content_n3;
@property (strong, nonatomic) IBOutlet UILabel *br_news_title_n3;
@property (strong, nonatomic) IBOutlet UILabel *br_news_url_n3;
@property (strong, nonatomic) IBOutlet UILabel *br_photo_url_n3;
@property (strong, nonatomic) IBOutlet UIWebView *br_web_n3;

////// news
@property (strong, nonatomic) IBOutlet UIView *banar_v_n4;
@property (strong, nonatomic) IBOutlet UILabel *br_news_content_n4;
@property (strong, nonatomic) IBOutlet UILabel *br_news_title_n4;
@property (strong, nonatomic) IBOutlet UILabel *br_news_url_n4;
@property (strong, nonatomic) IBOutlet UILabel *br_photo_url_n4;
@property (strong, nonatomic) IBOutlet UIWebView *br_web_n4;


////// newsxxxxx
@property (strong, nonatomic) IBOutlet UIView *show_news;
@property (strong, nonatomic) IBOutlet UILabel *br_news_content_nx;
@property (strong, nonatomic) IBOutlet UILabel *br_news_title_nx;
@property (strong, nonatomic) IBOutlet UILabel *br_news_url_nx;
@property (strong, nonatomic) IBOutlet UILabel *br_photo_url_nx;
@property (strong, nonatomic) IBOutlet UIWebView *br_web_nx;
@property (strong, nonatomic) IBOutlet UIWebView *br_web2_nx;









/////// menu
@property (strong, nonatomic) IBOutlet UIView *menu_v_n0;
@property (strong, nonatomic) IBOutlet UILabel *menu_id_n0;
@property (strong, nonatomic) IBOutlet UILabel *menu_name_n0;
@property (strong, nonatomic) IBOutlet UILabel *menu_photourl_n0;
@property (strong, nonatomic) IBOutlet UIWebView *menu_web_n0;

/////// menu
@property (strong, nonatomic) IBOutlet UIView *menu_v_n1;
@property (strong, nonatomic) IBOutlet UILabel *menu_id_n1;
@property (strong, nonatomic) IBOutlet UILabel *menu_name_n1;
@property (strong, nonatomic) IBOutlet UILabel *menu_photourl_n1;
@property (strong, nonatomic) IBOutlet UIWebView *menu_web_n1;

/////// menu
@property (strong, nonatomic) IBOutlet UIView *menu_v_n2;
@property (strong, nonatomic) IBOutlet UILabel *menu_id_n2;
@property (strong, nonatomic) IBOutlet UILabel *menu_name_n2;
@property (strong, nonatomic) IBOutlet UILabel *menu_photourl_n2;
@property (strong, nonatomic) IBOutlet UIWebView *menu_web_n2;

/////// menu
@property (strong, nonatomic) IBOutlet UIView *menu_v_n3;
@property (strong, nonatomic) IBOutlet UILabel *menu_id_n3;
@property (strong, nonatomic) IBOutlet UILabel *menu_name_n3;
@property (strong, nonatomic) IBOutlet UILabel *menu_photourl_n3;
@property (strong, nonatomic) IBOutlet UIWebView *menu_web_n3;

/////// menu
@property (strong, nonatomic) IBOutlet UIView *menu_v_n4;
@property (strong, nonatomic) IBOutlet UILabel *menu_id_n4;
@property (strong, nonatomic) IBOutlet UILabel *menu_name_n4;
@property (strong, nonatomic) IBOutlet UILabel *menu_photourl_n4;
@property (strong, nonatomic) IBOutlet UIWebView *menu_web_n4;

/////// menu
@property (strong, nonatomic) IBOutlet UIView *menu_v_n5;
@property (strong, nonatomic) IBOutlet UILabel *menu_id_n5;
@property (strong, nonatomic) IBOutlet UILabel *menu_name_n5;
@property (strong, nonatomic) IBOutlet UILabel *menu_photourl_n5;
@property (strong, nonatomic) IBOutlet UIWebView *menu_web_n5;

/////// menu
@property (strong, nonatomic) IBOutlet UIView *menu_v_n6;
@property (strong, nonatomic) IBOutlet UILabel *menu_id_n6;
@property (strong, nonatomic) IBOutlet UILabel *menu_name_n6;
@property (strong, nonatomic) IBOutlet UILabel *menu_photourl_n6;
@property (strong, nonatomic) IBOutlet UIWebView *menu_web_n6;

/////// menu
@property (strong, nonatomic) IBOutlet UIView *menu_v_n7;
@property (strong, nonatomic) IBOutlet UILabel *menu_id_n7;
@property (strong, nonatomic) IBOutlet UILabel *menu_name_n7;
@property (strong, nonatomic) IBOutlet UILabel *menu_photourl_n7;
@property (strong, nonatomic) IBOutlet UIWebView *menu_web_n7;

/////// menu
@property (strong, nonatomic) IBOutlet UIView *menu_v_n8;
@property (strong, nonatomic) IBOutlet UILabel *menu_id_n8;
@property (strong, nonatomic) IBOutlet UILabel *menu_name_n8;
@property (strong, nonatomic) IBOutlet UILabel *menu_photourl_n8;
@property (strong, nonatomic) IBOutlet UIWebView *menu_web_n8;

/////// menu
@property (strong, nonatomic) IBOutlet UIView *menu_v_n9;
@property (strong, nonatomic) IBOutlet UILabel *menu_id_n9;
@property (strong, nonatomic) IBOutlet UILabel *menu_name_n9;
@property (strong, nonatomic) IBOutlet UILabel *menu_photourl_n9;
@property (strong, nonatomic) IBOutlet UIWebView *menu_web_n9;

/////// menu
@property (strong, nonatomic) IBOutlet UIView *menu_v_n10;
@property (strong, nonatomic) IBOutlet UILabel *menu_id_n10;
@property (strong, nonatomic) IBOutlet UILabel *menu_name_n10;
@property (strong, nonatomic) IBOutlet UILabel *menu_photourl_n10;
@property (strong, nonatomic) IBOutlet UIWebView *menu_web_n10;

/////// menu
@property (strong, nonatomic) IBOutlet UIView *menu_v_n11;
@property (strong, nonatomic) IBOutlet UILabel *menu_id_n11;
@property (strong, nonatomic) IBOutlet UILabel *menu_name_n11;
@property (strong, nonatomic) IBOutlet UILabel *menu_photourl_n11;
@property (strong, nonatomic) IBOutlet UIWebView *menu_web_n11;

/////// menu
@property (strong, nonatomic) IBOutlet UIView *menu_v_n12;
@property (strong, nonatomic) IBOutlet UILabel *menu_id_n12;
@property (strong, nonatomic) IBOutlet UILabel *menu_name_n12;
@property (strong, nonatomic) IBOutlet UILabel *menu_photourl_n12;
@property (strong, nonatomic) IBOutlet UIWebView *menu_web_n12;

/////// menu
@property (strong, nonatomic) IBOutlet UIView *menu_v_n13;
@property (strong, nonatomic) IBOutlet UILabel *menu_id_n13;
@property (strong, nonatomic) IBOutlet UILabel *menu_name_n13;
@property (strong, nonatomic) IBOutlet UILabel *menu_photourl_n13;
@property (strong, nonatomic) IBOutlet UIWebView *menu_web_n13;

/////// menu
@property (strong, nonatomic) IBOutlet UIView *menu_v_n14;
@property (strong, nonatomic) IBOutlet UILabel *menu_id_n14;
@property (strong, nonatomic) IBOutlet UILabel *menu_name_n14;
@property (strong, nonatomic) IBOutlet UILabel *menu_photourl_n14;
@property (strong, nonatomic) IBOutlet UIWebView *menu_web_n14;








/////// menu2
@property (strong, nonatomic) IBOutlet UIView *menu2_v_n0;
@property (strong, nonatomic) IBOutlet UILabel *menu2_name_n0;
@property (strong, nonatomic) IBOutlet UIWebView *menu2_web_n0;

/////// menu2
@property (strong, nonatomic) IBOutlet UIView *menu2_v_n1;
@property (strong, nonatomic) IBOutlet UILabel *menu2_name_n1;
@property (strong, nonatomic) IBOutlet UIWebView *menu2_web_n1;

/////// menu2
@property (strong, nonatomic) IBOutlet UIView *menu2_v_n2;
@property (strong, nonatomic) IBOutlet UILabel *menu2_name_n2;
@property (strong, nonatomic) IBOutlet UIWebView *menu2_web_n2;

/////// menu2
@property (strong, nonatomic) IBOutlet UIView *menu2_v_n3;
@property (strong, nonatomic) IBOutlet UILabel *menu2_name_n3;
@property (strong, nonatomic) IBOutlet UIWebView *menu2_web_n3;

/////// menu2
@property (strong, nonatomic) IBOutlet UIView *menu2_v_n4;
@property (strong, nonatomic) IBOutlet UILabel *menu2_name_n4;
@property (strong, nonatomic) IBOutlet UIWebView *menu2_web_n4;

/////// menu2
@property (strong, nonatomic) IBOutlet UIView *menu2_v_n5;
@property (strong, nonatomic) IBOutlet UILabel *menu2_name_n5;
@property (strong, nonatomic) IBOutlet UIWebView *menu2_web_n5;

/////// menu2
@property (strong, nonatomic) IBOutlet UIView *menu2_v_n6;
@property (strong, nonatomic) IBOutlet UILabel *menu2_name_n6;
@property (strong, nonatomic) IBOutlet UIWebView *menu2_web_n6;

/////// menu2
@property (strong, nonatomic) IBOutlet UIView *menu2_v_n7;
@property (strong, nonatomic) IBOutlet UILabel *menu2_name_n7;
@property (strong, nonatomic) IBOutlet UIWebView *menu2_web_n7;

/////// menu2
@property (strong, nonatomic) IBOutlet UIView *menu2_v_n8;
@property (strong, nonatomic) IBOutlet UILabel *menu2_name_n8;
@property (strong, nonatomic) IBOutlet UIWebView *menu2_web_n8;

/////// menu2
@property (strong, nonatomic) IBOutlet UIView *menu2_v_n9;
@property (strong, nonatomic) IBOutlet UILabel *menu2_name_n9;
@property (strong, nonatomic) IBOutlet UIWebView *menu2_web_n9;

/////// menu2
@property (strong, nonatomic) IBOutlet UIView *menu2_v_n10;
@property (strong, nonatomic) IBOutlet UILabel *menu2_name_n10;
@property (strong, nonatomic) IBOutlet UIWebView *menu2_web_n10;

/////// menu2
@property (strong, nonatomic) IBOutlet UIView *menu2_v_n11;
@property (strong, nonatomic) IBOutlet UILabel *menu2_name_n11;
@property (strong, nonatomic) IBOutlet UIWebView *menu2_web_n11;

/////// menu2
@property (strong, nonatomic) IBOutlet UIView *menu2_v_n12;
@property (strong, nonatomic) IBOutlet UILabel *menu2_name_n12;
@property (strong, nonatomic) IBOutlet UIWebView *menu2_web_n12;

/////// menu2
@property (strong, nonatomic) IBOutlet UIView *menu2_v_n13;
@property (strong, nonatomic) IBOutlet UILabel *menu2_name_n13;
@property (strong, nonatomic) IBOutlet UIWebView *menu2_web_n13;

/////// menu2
@property (strong, nonatomic) IBOutlet UIView *menu2_v_n14;
@property (strong, nonatomic) IBOutlet UILabel *menu2_name_n14;
@property (strong, nonatomic) IBOutlet UIWebView *menu2_web_n14;













////// news
@property (strong, nonatomic) IBOutlet UIView *show_menu;








/////// stors

@property (strong, nonatomic) IBOutlet UILabel *search_url;
@property (strong, nonatomic) IBOutlet UILabel *py;
@property (strong, nonatomic) IBOutlet UILabel *py1;





////// items
@property (strong, nonatomic) IBOutlet UIView *show_item;


////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n0;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n0;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n0;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n0;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n0;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n0;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n0;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n0;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n0;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n0;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n0;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n0;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n0;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n0;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n0;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n0;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n0;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n0;


////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n1;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n1;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n1;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n1;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n1;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n1;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n1;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n1;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n1;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n1;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n1;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n1;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n1;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n1;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n1;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n1;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n1;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n1;




////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n2;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n2;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n2;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n2;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n2;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n2;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n2;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n2;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n2;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n2;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n2;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n2;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n2;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n2;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n2;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n2;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n2;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n2;




////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n3;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n3;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n3;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n3;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n3;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n3;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n3;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n3;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n3;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n3;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n3;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n3;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n3;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n3;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n3;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n3;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n3;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n3;




////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n4;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n4;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n4;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n4;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n4;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n4;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n4;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n4;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n4;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n4;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n4;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n4;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n4;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n4;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n4;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n4;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n4;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n4;




////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n5;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n5;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n5;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n5;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n5;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n5;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n5;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n5;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n5;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n5;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n5;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n5;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n5;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n5;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n5;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n5;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n5;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n5;




////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n6;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n6;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n6;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n6;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n6;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n6;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n6;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n6;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n6;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n6;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n6;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n6;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n6;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n6;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n6;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n6;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n6;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n6;




////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n7;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n7;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n7;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n7;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n7;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n7;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n7;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n7;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n7;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n7;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n7;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n7;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n7;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n7;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n7;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n7;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n7;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n7;




////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n8;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n8;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n8;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n8;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n8;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n8;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n8;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n8;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n8;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n8;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n8;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n8;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n8;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n8;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n8;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n8;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n8;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n8;



////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n9;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n9;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n9;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n9;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n9;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n9;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n9;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n9;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n9;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n9;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n9;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n9;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n9;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n9;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n9;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n9;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n9;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n9;




////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n10;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n10;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n10;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n10;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n10;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n10;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n10;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n10;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n10;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n10;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n10;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n10;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n10;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n10;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n10;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n10;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n10;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n10;




////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n11;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n11;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n11;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n11;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n11;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n11;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n11;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n11;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n11;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n11;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n11;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n11;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n11;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n11;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n11;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n11;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n11;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n11;




////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n12;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n12;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n12;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n12;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n12;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n12;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n12;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n12;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n12;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n12;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n12;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n12;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n12;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n12;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n12;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n12;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n12;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n12;




////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n13;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n13;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n13;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n13;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n13;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n13;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n13;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n13;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n13;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n13;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n13;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n13;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n13;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n13;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n13;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n13;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n13;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n13;




////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n14;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n14;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n14;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n14;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n14;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n14;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n14;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n14;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n14;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n14;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n14;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n14;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n14;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n14;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n14;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n14;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n14;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n14;




////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n15;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n15;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n15;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n15;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n15;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n15;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n15;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n15;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n15;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n15;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n15;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n15;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n15;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n15;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n15;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n15;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n15;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n15;




////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n16;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n16;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n16;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n16;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n16;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n16;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n16;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n16;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n16;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n16;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n16;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n16;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n16;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n16;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n16;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n16;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n16;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n16;




////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n17;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n17;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n17;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n17;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n17;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n17;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n17;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n17;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n17;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n17;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n17;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n17;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n17;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n17;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n17;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n17;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n17;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n17;




////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n18;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n18;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n18;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n18;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n18;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n18;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n18;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n18;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n18;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n18;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n18;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n18;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n18;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n18;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n18;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n18;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n18;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n18;




////// items
@property (strong, nonatomic) IBOutlet UIView *item_v_n19;
@property (strong, nonatomic) IBOutlet UILabel *item_id_n19;
@property (strong, nonatomic) IBOutlet UILabel *item_name_n19;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_n19;
@property (strong, nonatomic) IBOutlet UILabel *item_price_n19;
@property (strong, nonatomic) IBOutlet UILabel *item_over_n19;
@property (strong, nonatomic) IBOutlet UILabel *item_about_n19;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_n19;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_n19;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_n19;
@property (strong, nonatomic) IBOutlet UILabel *item_city_n19;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_n19;
@property (strong, nonatomic) IBOutlet UILabel *item_user_n19;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_n19;
@property (strong, nonatomic) IBOutlet UILabel *item_other_n19;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_n19;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_n19;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_n19;


////// one_item  xxxx
@property (strong, nonatomic) IBOutlet UIView *show_one_item;


////// items xxxxxx
@property (strong, nonatomic) IBOutlet UIView *item_v_nx;
@property (strong, nonatomic) IBOutlet UILabel *item_id_nx;
@property (strong, nonatomic) IBOutlet UILabel *item_name_nx;
@property (strong, nonatomic) IBOutlet UILabel *item_photo_url_nx;
@property (strong, nonatomic) IBOutlet UILabel *item_price_nx;
@property (strong, nonatomic) IBOutlet UILabel *item_over_nx;
@property (strong, nonatomic) IBOutlet UILabel *item_about_nx;
@property (strong, nonatomic) IBOutlet UILabel *item_phone_nx;
@property (strong, nonatomic) IBOutlet UILabel *item_lat_nx;
@property (strong, nonatomic) IBOutlet UILabel *item_lon_nx;
@property (strong, nonatomic) IBOutlet UILabel *item_city_nx;
@property (strong, nonatomic) IBOutlet UILabel *item_instgram_nx;
@property (strong, nonatomic) IBOutlet UILabel *item_user_nx;
@property (strong, nonatomic) IBOutlet UILabel *item_rate_nx;
@property (strong, nonatomic) IBOutlet UILabel *item_other_nx;
@property (strong, nonatomic) IBOutlet UILabel *item_extra_nx;
@property (strong, nonatomic) IBOutlet UIImageView *itemimage_nx;
@property (strong, nonatomic) IBOutlet UIWebView *item_web_nx;





@property (strong, nonatomic) IBOutlet UITextField *myid;
- (IBAction)btn_id:(id)sender;




@property (strong, nonatomic) IBOutlet UIScrollView *scroll_all;
@property (strong, nonatomic) IBOutlet UIScrollView *scroll_items;
@property (strong, nonatomic) IBOutlet UIScrollView *scroll_news;
@property (strong, nonatomic) IBOutlet UIScrollView *scroll_item;
@property (strong, nonatomic) IBOutlet UIScrollView *scroll_one_item;


@property (strong, nonatomic) IBOutlet UIView *View_items;

@property (strong, nonatomic) IBOutlet UIWebView *x_web;


@property (strong, nonatomic) IBOutlet UIView *show_image;


@property (strong, nonatomic) IBOutlet UIView *show_loading;

@property (strong, nonatomic) IBOutlet UIWebView *web_image;

@property (strong, nonatomic) IBOutlet UIButton *btn_more;

@property (strong, nonatomic) IBOutlet UILabel *pyins1;
@property (strong, nonatomic) IBOutlet UILabel *pyins2;
@property (strong, nonatomic) IBOutlet UILabel *pyins3;

@property (strong, nonatomic) IBOutlet UILabel *myphone;
@property (strong, nonatomic) IBOutlet UILabel *myname;

@property (strong, nonatomic) IBOutlet UILabel *basket_empty;
@property (strong, nonatomic) IBOutlet UILabel *day_now;

@property (strong, nonatomic) IBOutlet UIView *show_twasl;

@property (strong, nonatomic) IBOutlet UILabel *mylat;
@property (strong, nonatomic) IBOutlet UILabel *mylon;
@property (strong, nonatomic) IBOutlet UILabel *addressLabel;





@property (strong, nonatomic) IBOutlet UIView *vlogin;
@property (strong, nonatomic) IBOutlet UITextField *mypassword;
- (IBAction)btn_login:(id)sender;
- (IBAction)btn_logout:(id)sender;




@end
