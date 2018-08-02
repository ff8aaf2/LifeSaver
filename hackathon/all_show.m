

#import "all_show.h"
#import "objCarInfo.h"
#import "carTableViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>




@interface all_show ()



@property NSMutableArray *cars;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation all_show

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // load _search_url
    NSUserDefaults *L_f300z =[NSUserDefaults standardUserDefaults];
    NSString *M_f300z = [L_f300z objectForKey:@"search_url"];
    [_search_url setText:M_f300z];
    
    

    
    
    // load lat
    NSUserDefaults *L_f300zq =[NSUserDefaults standardUserDefaults];
    NSString *M_f300zq = [L_f300zq objectForKey:@"xxxlat"];
    [_xlat setText:M_f300zq];
    
    // load lon
    NSUserDefaults *L_f300zqw =[NSUserDefaults standardUserDefaults];
    NSString *M_f300zqw = [L_f300zqw objectForKey:@"xxxlon"];
    [_xlon setText:M_f300zqw];
    
    
    self.cars = [NSMutableArray new];
    
    [self loadData];
}

- (void)loadData {
    
    

    
    
    NSString *dataUrl =_search_url.text;

    dataUrl = [dataUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];    // fahd to arabic

    NSURL *url = [NSURL URLWithString:dataUrl];
    
    NSURLSessionDataTask *downloadTask = [[NSURLSession sharedSession]
                                          dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                              NSError *err;
                                              NSDictionary *rDict = [NSJSONSerialization
                                                                     
                                                                     JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&err];
                                              
                                              for (NSDictionary *r in rDict) {
                                                  NSLog(@"Data is %@",r);
                                                  objCarInfo *newCar = [objCarInfo new];
                                                  newCar.carId = [r[@"id"] intValue];
                                                  newCar.name = r[@"name"];
                                                  newCar.price = r[@"mobile"];
                                                  newCar.state = r[@"spcia"];
                                                  newCar.place1 = r[@"type"];
                                                  newCar.place2 = r[@"lat"];
                                                  newCar.place3 = r[@"lon"];
                                                  newCar.distance = r[@"distance"];
                                                  newCar.photoURL = r[@"active"];
                                                  
                                                  [self.cars addObject:newCar];
                                              }
                                              dispatch_async(dispatch_get_main_queue(), ^{
                                                  [self reloadData];
                                              });
                                          }];
    
    [downloadTask resume];
}

- (void)reloadData{
    
    
    
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //    carDetailsViewController *cd = segue.destinationViewController;
    //  cd.car = sender;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.cars.count;
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"carCell";
    carTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    objCarInfo *thisCar = (objCarInfo *)[self.cars objectAtIndex:indexPath.row];
    cell.item_Name.text = thisCar.name;
    cell.item_State.text = thisCar.state;
    cell.item_Distance.text = thisCar.distance;

    
 //   [cell.item_Image sd_setImageWithURL:[NSURL URLWithString:thisCar.photoURL]];
    NSString *stu  =@"http://ayjabiun.com/app/zp_image/public/uploads/images/";
    NSString *stx= [NSString stringWithFormat:@"%@%@",  stu,thisCar.photoURL];
    [cell.item_Image sd_setImageWithURL:[NSURL URLWithString:stx]];

    
    NSString*p=@" - ";
    NSString*pz1=thisCar.place1;
    NSString*pz2=thisCar.place2;
    NSString*pz3=thisCar.place3;
     cell.item_Place1.text= [NSString stringWithFormat:@"%@%@%@%@%@",pz1,p,pz2,p,pz3];

    
    
    NSString*pr=@" ريال ";
    NSString*pr1=thisCar.price;
    cell.item_Price.text= [NSString stringWithFormat:@"%@%@",pr1,pr];

    
    //    cell.category_Far.text = [NSString stringWithFormat:@"%",  thisCar.dis];
    float y = ([thisCar.distance floatValue]);
    [cell.item_Distance setText:[NSString stringWithFormat:@"%0.1f%@", y ,@" km "]];

    if (y<=1) {
        NSString*ra=@" على بعد امتار منك ";
        cell.item_Distance.text= [NSString stringWithFormat:@"%@%@",@"",ra];
    }
    
    
    
//    if ([thisCar.color isEqual:@"red"]) {
//        cell.stamp.hidden=NO;
//    }else{
//        cell.stamp.hidden=YES;
//    }
    
    
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    objCarInfo *thisCar = (objCarInfo *)[self.cars objectAtIndex:indexPath.row];
    //    [self performSegueWithIdentifier:@"showCarDetails" sender:thisCar];
    
    _show1.hidden=NO;
    _fahd.text = thisCar.photoURL;
    
 
    
    
    
 
    
    // save myid
    NSString *S_f300 =[NSString stringWithFormat:@"%d",  thisCar.carId];
    NSUserDefaults *D_f300 =[NSUserDefaults standardUserDefaults];
    [D_f300 setObject :S_f300 forKey:@"myid"];
    [D_f300 synchronize];
    
    
    
    
  //  [self performSegueWithIdentifier:@"go" sender:self];
    
    
    

//    NSString *sw  =@"https://maps.google.com/?q=";
//    NSString *slat  =_xlat.text;
//    NSString *sc  =@",";
//    NSString *slon  =_xlon.text;
//    NSString *mylocation =[NSString stringWithFormat:@"%@%@%@%@",sw,slat,sc,slon];
//
//
    
    NSString*url=@"https://api.whatsapp.com/send?";
    NSString*ph=@"phone=";
    NSString*sph=thisCar.price;
    
    NSString*mes=@"&text=";
    
    
    NSString*m0=@" - ";
    NSString*m1=@"\n";
    NSString*m2=@" السلام عليكم ارجو المساعدة  ";
    NSString*m3=@" لدي حالة :  ";


    
    NSString *message =[NSString stringWithFormat:@"%@%@%@%@%@",m2,m0,m1,m3,m1];
    NSString *all =[NSString stringWithFormat:@"%@%@%@%@%@",url,ph,sph,mes,message];
    
    NSString *dataUrl = all;
    
    
    dataUrl = [dataUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];    // fahd to arabic
    
    //   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://api.whatsapp.com/send?phone=966592271719&text=fofofofofof"]];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:dataUrl]];
    
    
    
    
    
}






- (IBAction)btn_x:(id)sender {
    _show1.hidden=YES;
    
}






- (IBAction)btn_back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}









@end

