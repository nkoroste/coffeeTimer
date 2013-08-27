//
//  CTRTimerDetailViewController.m
//  Coffee Timer
//
//  Created by nick on 2013-08-26.
//  Copyright (c) 2013 nick. All rights reserved.
//

#import "CTRTimerDetailViewController.h"

@interface CTRTimerDetailViewController ()

@property (nonatomic, strong) IBOutlet UILabel *durationLabel;

@end

@implementation CTRTimerDetailViewController

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
	
    self.title = self.timerModel.coffeeName;
    
    self.durationLabel.text = [NSString stringWithFormat:@"%d min %d sec", self.timerModel.duration / 60, self.timerModel.duration % 60];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
