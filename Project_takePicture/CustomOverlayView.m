//
//  CustomOverlayView.m
//  Project_takePicture
//
//  Created by rohn on 12. 11. 18..
//  Copyright (c) 2012년 rohn. All rights reserved.
//

#import "CustomOverlayView.h"

@implementation CustomOverlayView
@synthesize b_del;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.opaque = NO;
                
        // Add the camera button
        if ([UIImagePickerController isCameraDeviceAvailable:UIImagePickerControllerCameraDeviceFront]) {
            self.changeCameraButton = [UIButton buttonWithType:UIButtonTypeCustom];
            self.changeCameraButton.frame = CGRectMake(250, 30, 57.5, 57.5);
            [self.changeCameraButton setImage:[UIImage imageNamed:@"switch_button"] forState:UIControlStateNormal];
            [self.changeCameraButton addTarget:self action:@selector(changeCamera:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:self.changeCameraButton];
        }
                
        // Add the capture button
        UIButton *pictureButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        pictureButton.frame = CGRectMake(self.frame.size.height-40, self.frame.size.width/2-30, 60, 30);
        [pictureButton setTitle:@"shot" forState:UIControlStateNormal];
        [pictureButton addTarget:self action:@selector(takePicture:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:pictureButton];
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
