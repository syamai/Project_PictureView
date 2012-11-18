//
//  ViewController.m
//  Project_takePicture
//
//  Created by rohn on 12. 11. 18..
//  Copyright (c) 2012년 rohn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize picker, overlay;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)camera_on:(id)sender {
    self.picker = [[UIImagePickerController alloc] init];
    self.picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    self.picker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModePhoto;
    self.picker.cameraDevice = UIImagePickerControllerCameraDeviceRear;
    self.picker.showsCameraControls = NO;
    self.picker.navigationBarHidden = YES;
    self.picker.toolbarHidden = YES;
    self.picker.wantsFullScreenLayout = YES;
    
    // Insert the overlay
    self.overlay = [[CustomOverlayView alloc] init];
    self.overlay.pickerReference = self.picker;
    self.picker.cameraOverlayView = self.overlay.view;
    self.picker.delegate = self.overlay;
    
    [self presentModalViewController:self.picker animated:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
