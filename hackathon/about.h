
//
//  Copyright © 1438 فهد الدبيان. All rights reserved.
//



#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

#import <MessageUI/MFMailComposeViewController.h>

@interface about : UIViewController<MFMessageComposeViewControllerDelegate>


@property (strong, nonatomic) IBOutlet UIScrollView *scroll_all;



@property (strong, nonatomic) IBOutlet UITextField *name_bank;
@property (strong, nonatomic) IBOutlet UITextField *name_person_bank;
@property (strong, nonatomic) IBOutlet UITextField *price_bank;

@property (strong, nonatomic) IBOutlet UILabel *myphone;


 
@end
