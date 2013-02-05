//
//  SuperVillainInputViewController.h
//  TeratoParse
//
//  Created by rusmanarief on 2/5/13.
//
//

#import <UIKit/UIKit.h>
#import "SuperVillainPickCategoryViewController.h"

@interface SuperVillainInputViewController : UIViewController <SuperVillainPickCategoryViewControllerDelegate>

@property (strong, nonatomic) NSString *pickedCategory;

@property (strong, nonatomic) IBOutlet UIButton *categoryButton;

@property (nonatomic, strong) IBOutlet SuperVillainPickCategoryViewController *pickCategoryViewController;

-(IBAction)pickCategory;

-(void)pickCategoryDidFinish:(SuperVillainPickCategoryViewController *)controller category:(NSString *)category;

@end
