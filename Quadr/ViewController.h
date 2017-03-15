//
//  ViewController.h
//  Quadr
//
//  Created by Michal Mesyjasz on 15.03.2017.
//  Copyright © 2017 Michal Mesyjasz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartGameButton.h"

@interface ViewController : UIViewController {
    float _w, _h;
}

@property (retain, nonatomic) IBOutlet StartGameButton *btStartGame6;
@property (retain, nonatomic) IBOutlet StartGameButton *btStartGame7;
@property (retain, nonatomic) IBOutlet StartGameButton *btStartGame8;
@property (retain, nonatomic) IBOutlet StartGameButton *btStartGame9;
@property (retain, nonatomic) IBOutlet StartGameButton *btStartGame10;

@end

