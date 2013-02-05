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

@property (strong, nonatomic) IBOutlet UIButton *queryButton;

@property (strong, nonatomic) IBOutlet UILabel *categoryText;

@property (nonatomic, strong) IBOutlet SuperVillainPickCategoryViewController *pickCategoryViewController;

-(IBAction)pickCategory;
-(IBAction)querySuperVillain;

-(void)pickCategoryDidFinish:(SuperVillainPickCategoryViewController *)controller category:(NSString *)category;

@end
