//
//  ViewController.m
//  AdbrixObjCSample
//
//  Created by Jimmy.강세훈 on 10/27/25.
//

#import "ViewController.h"
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AdbrixSDK/AdbrixSDK.h>

@interface ViewController ()

@property (nonatomic, strong) UIScrollView *scroll;
@property (nonatomic, strong) UIStackView *stack;

- (void)adbrixLogin;
- (void)adbrixPurchase;
- (void)adbrixCustom;

@end

@implementation ViewController

#pragma mark - Adbrix
- (void)adbrixLogin {
    [[Adbrix shared] logEvent:ABEvent.LOGIN];
}

- (void)adbrixPurchase {
    NSArray *products = @[@{
        ABEventProperty.ITEM_PRODUCT_ID     : @"상품번호",
        ABEventProperty.ITEM_PRODUCT_NAME   : @"상품이름",
        ABEventProperty.ITEM_PRICE          : @5000.0,
        ABEventProperty.ITEM_QUANTITY       : @5,
        ABEventProperty.ITEM_DISCOUNT       : @500.0,
        ABEventProperty.ITEM_CATEGORY1      : @"식품",
        ABEventProperty.ITEM_CATEGORY2      : @"과자",
    }];
    
    [[Adbrix shared] logEvent:ABEvent.PURCHASE withProperties:@{
        ABEventProperty.ORDER_ID        : @"주문번호",
        ABEventProperty.ORDER_SALES     : @25500.0,
        ABEventProperty.PAYMENT_METHOD  : ABPaymentMethod.CREDIT_CARD,
        ABEventProperty.DELIVERY_CHARGE : @3000.0,
        ABEventProperty.ITEMS           : products
    }];
}

- (void)adbrixCustom {
    [[Adbrix shared] logEvent: @"custom_event" withProperties:@{
        @"custom_property_1": @34000,
        @"custom_property_2": @42.195,
        @"custom_property_3": @"Seoul",
        @"custom_property_4": @YES
    }];
}

#pragma mark - ATT
- (void)viewDidAppear:(BOOL)animated {
    [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
        switch (status) {
            case ATTrackingManagerAuthorizationStatusAuthorized:
                [[Adbrix shared] attAuthorized:YES];
                break;
            case ATTrackingManagerAuthorizationStatusDenied:
                [[Adbrix shared] attAuthorized:NO];
                break;
            case ATTrackingManagerAuthorizationStatusRestricted:
                [[Adbrix shared] attAuthorized:NO];
                break;
            case ATTrackingManagerAuthorizationStatusNotDetermined:
                [[Adbrix shared] attAuthorized:NO];
                break;
            default:
                [[Adbrix shared] attAuthorized:NO];
                break;
        }
    }];
}

#pragma mark - UI
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor systemGroupedBackgroundColor];

    self.scroll = [UIScrollView new];
    self.stack  = [UIStackView new];
    self.stack.axis = UILayoutConstraintAxisVertical;
    self.stack.spacing = 16;

    [self.view addSubview:self.scroll];
    self.scroll.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
        [self.scroll.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor],
        [self.scroll.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20],
        [self.scroll.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20],
        [self.scroll.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor]
    ]];

    [self.scroll addSubview:self.stack];
    self.stack.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
        [self.stack.topAnchor constraintEqualToAnchor:self.scroll.topAnchor constant:16],
        [self.stack.leadingAnchor constraintEqualToAnchor:self.scroll.leadingAnchor],
        [self.stack.trailingAnchor constraintEqualToAnchor:self.scroll.trailingAnchor],
        [self.stack.bottomAnchor constraintEqualToAnchor:self.scroll.bottomAnchor],
        [self.stack.widthAnchor constraintEqualToAnchor:self.scroll.widthAnchor]
    ]];
    
    [self addTitle:@"LogEvent"];
    [self addButtonWithTitle:@"Login"         selector:@selector(adbrixLogin)];
    [self addButtonWithTitle:@"Purchase"      selector:@selector(adbrixPurchase)];
    [self addButtonWithTitle:@"Custom Event"  selector:@selector(adbrixCustom)];

}

- (void)addTitle:(NSString *)title {
    UILabel *label = [UILabel new];
    label.text = title;
    label.font = [UIFont systemFontOfSize:28 weight:UIFontWeightBold];
    [self.stack addArrangedSubview:label];
}

- (void)addButtonWithTitle:(NSString *)title selector:(SEL)sel {
    UIButton *b = [UIButton buttonWithType:UIButtonTypeSystem];
    if (@available(iOS 15.0, *)) {
        UIButtonConfiguration *cfg = [UIButtonConfiguration filledButtonConfiguration];
        cfg.title = title;
        cfg.baseBackgroundColor = [UIColor systemPurpleColor];
        cfg.baseForegroundColor = UIColor.whiteColor;
        cfg.cornerStyle = UIButtonConfigurationCornerStyleCapsule;
        cfg.contentInsets = NSDirectionalEdgeInsetsMake(14, 20, 14, 20);
        b.configuration = cfg;
    } else {
        [b setTitle:title forState:UIControlStateNormal];
        b.backgroundColor = [UIColor systemPurpleColor];
        [b setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
        b.layer.cornerRadius = 24;
        b.contentEdgeInsets = UIEdgeInsetsMake(14, 20, 14, 20);
    }
    [b.heightAnchor constraintGreaterThanOrEqualToConstant:48].active = YES;

    [b addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];

    [self.stack addArrangedSubview:b];
}


@end
