//
//  orders.h

//
//  Created by mac on 7/1/1438 AH.
//  Copyright © 1438 فهد الدبيان. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>


@interface orders : UIViewController {
  

    
    SystemSoundID SoundID;

}




@property (nonatomic, retain) NSTimer *timer_update;





@property (nonatomic,strong)NSMutableArray * jsonArray;
@property (nonatomic,strong)NSMutableArray * jsonArray2;

@property (nonatomic,strong)NSMutableArray * citiesArray;

@property (strong, nonatomic) IBOutlet UIScrollView *scroll_all;

@property (strong, nonatomic) IBOutlet UILabel *search_url;

@property (strong, nonatomic) IBOutlet UITextField *word;


// pass
@property (strong, nonatomic) IBOutlet UIView *v_pass;
@property (strong, nonatomic) IBOutlet UILabel *spass;
@property (strong, nonatomic) IBOutlet UITextField *tpass;

////// orders
@property (strong, nonatomic) IBOutlet UIView *v_n0;
@property (strong, nonatomic) IBOutlet UILabel *mobile_n0;
@property (strong, nonatomic) IBOutlet UILabel *descr_n0;

////// orders
@property (strong, nonatomic) IBOutlet UIView *v_n1;
@property (strong, nonatomic) IBOutlet UILabel *mobile_n1;
@property (strong, nonatomic) IBOutlet UILabel *descr_n1;

////// orders
@property (strong, nonatomic) IBOutlet UIView *v_n2;
@property (strong, nonatomic) IBOutlet UILabel *mobile_n2;
@property (strong, nonatomic) IBOutlet UILabel *descr_n2;

////// orders
@property (strong, nonatomic) IBOutlet UIView *v_n3;
@property (strong, nonatomic) IBOutlet UILabel *mobile_n3;
@property (strong, nonatomic) IBOutlet UILabel *descr_n3;

////// orders
@property (strong, nonatomic) IBOutlet UIView *v_n4;
@property (strong, nonatomic) IBOutlet UILabel *mobile_n4;
@property (strong, nonatomic) IBOutlet UILabel *descr_n4;

////// orders
@property (strong, nonatomic) IBOutlet UIView *v_n5;
@property (strong, nonatomic) IBOutlet UILabel *mobile_n5;
@property (strong, nonatomic) IBOutlet UILabel *descr_n5;


@property (strong, nonatomic) IBOutlet UIButton *next;


@property (strong, nonatomic) IBOutlet UILabel *newid;


@end
