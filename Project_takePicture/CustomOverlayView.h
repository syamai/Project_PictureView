//
//  CustomOverlayView.h
//  Project_takePicture
//
//  Created by rohn on 12. 11. 18..
//  Copyright (c) 2012년 rohn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@protocol CustomOverayDelegate

@optional

- (IBAction)changeCamera:(id)sender;
- (IBAction)takePicture:(id)sender;

@end

@interface CustomOverlayView : UIView {
    
}

@property (assign)id<CustomOverayDelegate>b_del;
@property (nonatomic, retain) UIButton *changeCameraButton;

@end
