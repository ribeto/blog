//
//  ViewController.m
//  TwitterSystemDialog
//
//  Created by Hristo Hristov on 1/18/13.
//  Copyright (c) 2013 Hristo Hristov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)twitterButtonTapped:(id)sender
{
  
  BOOL canSendTweet = [TWTweetComposeViewController canSendTweet];
  
  // show tweet controller
  TWTweetComposeViewController *tweetCompose = [[TWTweetComposeViewController alloc] init];
  
  if( canSendTweet ) {
    // add the initial text
    [tweetCompose setInitialText:@"Tweeting something here..."];
    
  } else {
    // hide the tweet view if there are no twitter accounts
    tweetCompose.view.alpha = 0.0f;
  }
  // show the controller
  [self presentViewController:tweetCompose animated:YES completion:NULL];
  
  // make sure we hide the keyboard if we can't tweet
  if( !canSendTweet ) [tweetCompose.view endEditing:YES];
  
}

@end
