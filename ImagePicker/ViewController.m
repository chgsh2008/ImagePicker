//
//  ViewController.m
//  ImagePicker
//
//  Created by Kevin on 2017/9/30.
//  Copyright © 2017年 Kevin. All rights reserved.
//

#import "ViewController.h"
#import "KCImagePicker.h"

@interface ViewController ()

@property (nonatomic, strong) KCImagePicker *imagePicker;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)selectImageBtnClick:(id)sender {
    @weakify(self)
    [self showPicSelection:^(UIImage *image) {
        @strongify(self)
//        imageView.image = image;
//        progressView.hidden = NO;
//        NSString *orgKey = nil;
        self.imageView.image = image;
//        if (![NSString isNullOrEmpty:imageKey]) {
//            orgKey = imageKey;
//        }
//        [self uploadImage:image imageKey:orgKey processView:progressView uploadCompleted:^(NSString *qiNiuKey, NSString *imageKey) {
//            progressView.hidden = YES;
//            if (uploadCompleted) {
//                uploadCompleted(qiNiuKey);
//            }
//            _hasChanged = YES;
//        } uploadFail:^{
//            [self.view makeToast:failMessage
//                        duration:2.0
//                        position:CSToastPositionCenter];
//            if (uploadFail) {
//                uploadFail();
//            }
//        }];
    }];
    
    
}


-(void)showPicSelection:(void(^)(UIImage *image)) didSelectedImage{
    KCImagePicker *picker = [[KCImagePicker alloc] initWithController:self andNavigaionController:self.navigationController];
    self.imagePicker = picker;
    [self.imagePicker showPicSelectionWithCompleted:^(UIImage *image) {
        if (didSelectedImage) {
            didSelectedImage(image);
        }
    } didCancelSelect:^{
        
    }];
}

@end
