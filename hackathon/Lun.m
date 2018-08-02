
#import "Lun.h"
#import <CoreLocation/CoreLocation.h>

@interface Lun ()

@end

 @implementation Lun{
    
    CLLocationManager *locationManager;
    CLGeocoder *geocoder;
    CLPlacemark *placemark;
}



- (void)viewDidLoad {
    
    [super viewDidLoad];
    
   [self mylocation];
    
    // Do any additional setup after loading the view.

    
    
 
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.10 target:self selector:@selector(updateTimer) userInfo:nil repeats:NO];
    
    
}

-(void) updateTimer {
    
    
    

    

}






-(void) mylocation {
    
    
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
    
    
    
 
    
    // save lat    lon
    NSString *S_f11 =_mylat.text;
    NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
    [D_f11 setObject :S_f11 forKey:@"lat"];
    [D_f11 synchronize];
    
    
    NSString *S_f112 =_mylon.text;
    NSUserDefaults *D_f112 =[NSUserDefaults standardUserDefaults];
    [D_f112 setObject :S_f112 forKey:@"lon"];
    [D_f112 synchronize];
    
    
    
    
    
    
    NSString* myurl=@"http://ff8aaf.com/myapp/hackathon/show_service.php?";

    
  /// NSString* myurl=@"http://ahjezapp.com/ahjz/app/ios/show_category/self_category_momyz.php?";
    NSString* s0  =@"&lat=";
    NSString* p0  =_mylat.text;
    NSString* s1  =@"&lon=";
    NSString* p1  =_mylon.text;
    NSString *x_myurl =[NSString stringWithFormat:@"%@%@%@%@%@",myurl,s0,p0,s1,p1];
    
    _search_url.text=x_myurl;
    // save _search_url
    NSString *S_f11u =_search_url.text;
    NSUserDefaults *D_f11u =[NSUserDefaults standardUserDefaults];
    [D_f11u setObject :S_f11u forKey:@"search_url"];
    [D_f11u synchronize];
    
    
    // save lat    lon
    NSString *S_f1x1 =_mylat.text;
    NSUserDefaults *D_f1x1 =[NSUserDefaults standardUserDefaults];
    [D_f1x1 setObject :S_f1x1 forKey:@"xxxlat"];
    [D_f1x1 synchronize];
    
    
    NSString *S_f1x12 =_mylon.text;
    NSUserDefaults *D_f1x12 =[NSUserDefaults standardUserDefaults];
    [D_f1x12 setObject :S_f1x12 forKey:@"xxxlon"];
    [D_f1x12 synchronize];

    
    [self performSegueWithIdentifier:@"go" sender:self];
    
    [self.navigationController popViewControllerAnimated:YES];

    
}

-(IBAction)openSettingViewToEnableLocationService:(id)sender
{
 
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];
    
}





-(IBAction) no_location:(id)sender  {


// save lat    lon
NSString *S_f11 =@"0";
NSUserDefaults *D_f11 =[NSUserDefaults standardUserDefaults];
[D_f11 setObject :S_f11 forKey:@"lat"];
[D_f11 synchronize];


NSString *S_f112 =@"0";
NSUserDefaults *D_f112 =[NSUserDefaults standardUserDefaults];
[D_f112 setObject :S_f112 forKey:@"lon"];
[D_f112 synchronize];

 

//NSString* myurl=@"http://ahjezapp.com/ahjz/app/ios/show_category/self_category_momyz.php?";
    NSString* myurl=@"http://ff8aaf.com/myapp/hackathon/show_service.php?";
NSString* s0  =@"&lat=";
NSString* p0  =@"0";
NSString* s1  =@"&lon=";
NSString* p1  =@"0";
NSString *x_myurl =[NSString stringWithFormat:@"%@%@%@%@%@",myurl,s0,p0,s1,p1];

_search_url.text=x_myurl;
// save _search_url
NSString *S_f11u =_search_url.text;
NSUserDefaults *D_f11u =[NSUserDefaults standardUserDefaults];
[D_f11u setObject :S_f11u forKey:@"search_url"];
[D_f11u synchronize];




[self performSegueWithIdentifier:@"go" sender:self];

[self.navigationController popViewControllerAnimated:YES];
}


@end
