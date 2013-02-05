//
//  SuperVillainPickCategoryViewController.h
//  TeratoParse
//
//  Created by rusmanarief on 2/5/13.
//
//

#import <UIKit/UIKit.h>

@class SuperVillainPickCategoryViewController;

@protocol SuperVillainPickCategoryViewControllerDelegate;

@interface SuperVillainPickCategoryViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (assign, nonatomic) id <SuperVillainPickCategoryViewControllerDelegate> delegate;
@property (strong, nonatomic) NSMutableArray *categoryOptions;
@property (strong, nonatomic) NSString *pickedCategory;
@property (nonatomic, retain) IBOutlet UIPickerView *categoryPicker;
- (IBAction)done:(id)sender;
@end

@protocol SuperVillainPickCategoryViewControllerDelegate <NSObject>
-(void)pickCategoryDidFinish:(SuperVillainPickCategoryViewController *)controller category:(NSString *)category;
@end