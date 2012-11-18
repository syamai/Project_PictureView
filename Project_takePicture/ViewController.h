//
//  ViewController.h
//  Project_takePicture
//
//  Created by rohn on 12. 11. 18..
//  Copyright (c) 2012년 rohn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomOverlayView.h"

@interface ViewController : UIViewController <CustomOverayDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate> {
    
}

@property (nonatomic, retain) UIImagePickerController *picker;
@property (nonatomic, retain) CustomOverlayView *overlay;

- (IBAction)camera_on:(id)sender;

@end
