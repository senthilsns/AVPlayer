//
//  ViewController.m
//  MyAvPlayer
//
//  Created by appledeveloper on 20/02/19.
//  Copyright © 2019 appledeveloper. All rights reserved.
//

#import "ViewController.h"
#import <AVKit/AVKit.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *startBtn;
@property (weak, nonatomic) IBOutlet UIButton *pauseBtn;

@property(nonatomic,strong) AVPlayer * player;

@end

@implementation ViewController
@synthesize player;

- (IBAction)startAction:(id)sender {
   

    [player pause];
    [player play];

    
}
- (IBAction)pauseAction:(id)sender {
    
    [player pause];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Call for player
    [self setupPlayer];

    
 

}


-(void)setupPlayer {
    
    // remote file from server:
    NSURL *url = [[NSURL alloc] initWithString:@"https://s3-eu-west-1.amazonaws.com/alf-proeysen/Bakvendtland-MASTER.mp4"];
    
    // create a player view controller
    player = [AVPlayer playerWithURL:url];
    AVPlayerViewController *controller = [[AVPlayerViewController alloc] init];
    
    [self addChildViewController:controller];
    [self.view addSubview:controller.view];
    
    controller.view.frame = CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height- 200);
    controller.player = player;
    controller.showsPlaybackControls = YES;
    player.closedCaptionDisplayEnabled = NO;
    
}



@end
