

#import <UIKit/UIKit.h>
@interface all_show : UIViewController


@property int carId;
@property NSString *name;
@property NSString *price;
@property NSString *state;
@property NSString *place1;
@property NSString *place2;
@property NSString *place3;
@property NSString *distance;

@property (weak, nonatomic) IBOutlet UIView *show1;
@property (weak, nonatomic) IBOutlet UILabel *fahd;
@property (weak, nonatomic) IBOutlet UILabel *fahd2;
@property (weak, nonatomic) IBOutlet UIImageView *carImage1;



@property (weak, nonatomic) IBOutlet UILabel *search_url;
@property (weak, nonatomic) IBOutlet UILabel *xlat;
@property (weak, nonatomic) IBOutlet UILabel *xlon;

@end





