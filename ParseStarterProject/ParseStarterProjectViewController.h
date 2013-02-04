#import <Parse/Parse.h>

@interface ParseStarterProjectViewController : UIViewController

@property (nonatomic, retain) IBOutlet UIButton *saveButton;

@property (nonatomic, retain) IBOutlet UIButton *downloadButton;

@property (nonatomic, retain) IBOutlet UIButton *downloadBackgroundButton;

@property (nonatomic, retain) IBOutlet UITextView *outputText;

-(IBAction)saveToCloud;

-(IBAction)downloadFromCloud;

-(IBAction)downloadBackgroundFromCloud;

@end
