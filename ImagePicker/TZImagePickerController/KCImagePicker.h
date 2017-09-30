//
//  KCImagePicker.h
//  yichengpai
//
//  Created by Kevin on 2017/8/27.
//  Copyright © 2017年 zzy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^DidFinishedSelectImageBlock)(UIImage *image);
typedef void(^DidCancelSelectImageBlock)();


@interface KCImagePicker : NSObject

@property(nonatomic, strong)UIViewController *viewController;
@property(nonatomic, strong)UINavigationController *navigationController;

@property(nonatomic, copy)DidFinishedSelectImageBlock didFinishedSelectImageBlock;
@property(nonatomic, copy)DidCancelSelectImageBlock didCancelSelectImageBlock;

-(instancetype)initWithController:(UIViewController *)viewController andNavigaionController:(UINavigationController *)navigaionController ;


-(void)showPicSelectionWithCompleted:(DidFinishedSelectImageBlock)didFinishedSelected didCancelSelect:(DidCancelSelectImageBlock)didCancelSelect;

@end
