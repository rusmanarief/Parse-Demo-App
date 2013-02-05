//
//  SuperVillainInputViewController.m
//  TeratoParse
//
//  Created by rusmanarief on 2/5/13.
//
//

#import "SuperVillainInputViewController.h"
#import "SuperVillainPickCategoryViewController.h"

@interface SuperVillainInputViewController () <SuperVillainPickCategoryViewControllerDelegate>

@end

@implementation SuperVillainInputViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.pickCategoryViewController = [[SuperVillainPickCategoryViewController alloc] init];
    self.pickCategoryViewController.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)pickCategory
{
    [self.navigationController presentModalViewController:self.pickCategoryViewController animated:YES];
}

#pragma mark - SuperVillainPickCategoryViewController

-(void)pickCategoryDidFinish:(SuperVillainPickCategoryViewController *)controller category:(NSString *)category
{
    self.pickedCategory = category;
    NSLog(@"Parent Category picked: %@", category);
}

@end
