//
//  MLv3DiscoveriesTableViewCell.m
//  v3Demo
//
//  Created by Haihan Wang on 15/9/1.
//  Copyright (c) 2015年 malong tech. All rights reserved.
//

#import "MLv3DiscoveriesTableViewCell.h"

@implementation MLv3DiscoveriesTableViewCell

- (void)awakeFromNib {
    // Initialization code
    UILongPressGestureRecognizer *pressRecognizer = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(socialBtnLongPress:)];
    [self addGestureRecognizer:pressRecognizer];
}

- (void)socialBtnLongPress:(UIGestureRecognizer *)gr {
    if (gr.state == UIGestureRecognizerStateBegan) {
        // get subview(button) be clicked
        UIView *subView = [self hitTest:[gr locationInView:self] withEvent:nil];
        //todo test btn
        
        switch (subView.tag) {
            case 10:{
                [self becomeFirstResponder];
                UIMenuController *menu = [UIMenuController sharedMenuController];
                UIMenuItem *likeItem = [[UIMenuItem alloc] initWithTitle:@"赞" action:@selector(likeBtnAction:)];
                UIMenuItem *commentsItem = [[UIMenuItem alloc] initWithTitle:@"评论" action:@selector(commentsBtnAction:)];
                menu.menuItems = @[ likeItem, commentsItem ];
                
                [menu setTargetRect:subView.frame inView:self];
                [menu setMenuVisible:YES animated:YES];
                break;
            }
            case 11:{
                [self becomeFirstResponder];
                UIMenuController *menu = [UIMenuController sharedMenuController];
                UIMenuItem *likeItem = [[UIMenuItem alloc] initWithTitle:@"boyfriends" action:@selector(likeBtnAction:)];
                UIMenuItem *commentsItem = [[UIMenuItem alloc] initWithTitle:@"girlfriends" action:@selector(commentsBtnAction:)];
                menu.menuItems = @[ likeItem, commentsItem ];
                
                [menu setTargetRect:subView.frame inView:self];
                [menu setMenuVisible:YES animated:YES];
                break;
            }
            case 12:{
                [self becomeFirstResponder];
                UIMenuController *menu = [UIMenuController sharedMenuController];
                UIMenuItem *likeItem = [[UIMenuItem alloc] initWithTitle:@"JD" action:@selector(likeBtnAction:)];
                UIMenuItem *commentsItem = [[UIMenuItem alloc] initWithTitle:@"Taobao" action:@selector(commentsBtnAction:)];
                menu.menuItems = @[ likeItem, commentsItem ];
                
                menu.arrowDirection = UIMenuControllerArrowDown;
                [menu setTargetRect:subView.frame inView:self];
                [menu setMenuVisible:YES animated:YES];
                break;
            }
            default:
                [[UIMenuController sharedMenuController] setMenuVisible:NO animated:YES];
                break;
        }

    } else if (gr.state == UIGestureRecognizerStateEnded) {
        //;
    }
    [self setNeedsDisplay];
}

- (void)likeBtnAction:(id)sender {
}
- (void)commentsBtnAction:(id)sender {
}

- (IBAction)social:(id)sender {
}
- (IBAction)Coordinate:(id)sender {
}
- (IBAction)buy:(id)sender {
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
#pragma overite origion method
-(BOOL) canBecomeFirstResponder {
    return YES;
}
-(BOOL)canPerformAction:(SEL)action withSender:(id)sender{
    if(action ==@selector(likeBtnAction:)){
        return YES;
    }else if (action==@selector(commentsBtnAction:)){
        return YES;
    }
    return [super canPerformAction:action withSender:sender];
}

@end
