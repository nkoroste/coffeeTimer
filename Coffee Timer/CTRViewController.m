//
//  CTRViewController.m
//  Coffee Timer
//
//  Created by nick on 2013-08-23.
//  Copyright (c) 2013 nick. All rights reserved.
//

#import "CTRViewController.h"
#import "CTRTimerDetailViewController.h"
#import "CTRTimerEditViewController.h"

@interface CTRViewController ()

//@property (nonatomic, strong) IBOutlet UILabel *label;
//@property (nonatomic, strong) IBOutlet UISlider *slider;
//@property (nonatomic, strong) IBOutlet UIProgressView *progressView;

@end

@implementation CTRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"View is loaded.");
    
    // self.view.backgroundColor = [UIColor orangeColor];
    
    [self setupModel];
    self.title = @"Root";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonWasPressed:(id)sender
{
    NSLog(@"Button was pressed.");
    
    // Get the current date and time.
//    NSData *date = [NSDate date];
    
    // Update the model
//    self.label.text = [NSString stringWithFormat:@"Button pressed at %@", date];
}

//- (IBAction)sliderValueChanged:(id)sender
//{
//    NSLog(@"Slider value changed to %f", self.slider.value);
//    
//    // Update our progressView's progress to match the slider's value
//    self.progressView.progress = self.slider.value;
//}

-(void)setupModel
{
    self.timerModel = [[CTRTimerModel alloc]
        initWithCoffeeName:@"Columbian Coffee" duration:240];
}

-(void)updateUserInterface
{
//    self.label.text = self.timerModel.coffeeName;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"Preparing for segue with identifies:%@", segue.identifier);
    if ([segue.identifier isEqualToString:@"pushDetail"])
    {
        CTRTimerDetailViewController *viewController = segue.destinationViewController;
        viewController.timerModel = self.timerModel;
    }
    else if ([segue.identifier isEqualToString:@"editDetail"])
    {

        UINavigationController *navigationController = segue.destinationViewController;
        CTRTimerEditViewController *viewController = (CTRTimerEditViewController *)(navigationController.topViewController);
        viewController.timerModel = self.timerModel;
    }
}

-(void)setTimerModel:(CTRTimerModel *)timerModel
{
    _timerModel = timerModel;
    
    [self updateUserInterface];
}



@end
