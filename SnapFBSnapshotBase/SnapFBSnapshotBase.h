#define kIphone4PortraitRect CGRectMake(0, 0, 320, 480)
#define kIphone4PortraitSizeClasses @[@(UIUserInterfaceSizeClassCompact), @(UIUserInterfaceSizeClassRegular)]

#define kIphone5PortraitRect CGRectMake(0, 0, 320, 568)
#define kIphone5PortraitSizeClasses @[@(UIUserInterfaceSizeClassCompact), @(UIUserInterfaceSizeClassRegular)]

#define kIphone6PortraitRect CGRectMake(0, 0, 375, 667)
#define kIphone6PortraitSizeClasses @[@(UIUserInterfaceSizeClassCompact), @(UIUserInterfaceSizeClassRegular)]

#define kIphone6PlusPortraitRect CGRectMake(0, 0, 414, 736)
#define kIphone6PlusPortraitSizeClasses @[@(UIUserInterfaceSizeClassCompact), @(UIUserInterfaceSizeClassRegular)]

#define kIphone4LandscapeRect CGRectMake(0, 0, 480, 320)
#define kIphone4LandscapeSizeClasses @[@(UIUserInterfaceSizeClassCompact), @(UIUserInterfaceSizeClassCompact)]

#define kIphone5LandscapeRect CGRectMake(0, 0, 568, 320)
#define kIphone5LandscapeSizeClasses @[@(UIUserInterfaceSizeClassCompact), @(UIUserInterfaceSizeClassCompact)]

#define kIphone6LandscapeRect CGRectMake(0, 0, 667, 375)
#define kIphone6LandscapeSizeClasses @[@(UIUserInterfaceSizeClassCompact), @(UIUserInterfaceSizeClassCompact)]

#define kIphone6PlusLandscapeRect CGRectMake(0, 0, 736, 414)
#define kIphone6PlusLandscapeSizeClasses @[@(UIUserInterfaceSizeClassRegular), @(UIUserInterfaceSizeClassCompact)]

#define kIpadPortraitRect CGRectMake(0, 0, 768, 1024)
#define kIpadPortraitSizeClasses @[@(UIUserInterfaceSizeClassRegular), @(UIUserInterfaceSizeClassRegular)]

#define kIpadLandscapeRect CGRectMake(0, 0, 1024, 768)
#define kIpadLandscapeSizeClasses @[@(UIUserInterfaceSizeClassRegular), @(UIUserInterfaceSizeClassRegular)]

#define kIpadMultitaskingLandscapeTwoToOneMainRect CGRectMake(0, 0, 694, 768)
#define kIpadMultitaskingLandscapeTwoToOneMainSizeClasses @[@(UIUserInterfaceSizeClassRegular), @(UIUserInterfaceSizeClassRegular)]

#define kIpadMultitaskingLandscapeTwoToOneAltRect CGRectMake(0, 0, 320, 768)
#define kIpadMultitaskingLandscapeTwoToOneAltSizeClasses @[@(UIUserInterfaceSizeClassCompact), @(UIUserInterfaceSizeClassRegular)]

#define kIpadMultitaskingLandscapeOneToOneMainAndAltRect CGRectMake(0, 0, 507, 768)
#define kIpadMultitaskingLandscapeOneToOneMainAndAltSizeClasses @[@(UIUserInterfaceSizeClassCompact), @(UIUserInterfaceSizeClassRegular)]

#define kIpadMultitaskingPortraitOneToOneMainRect CGRectMake(0, 0, 438, 1024)
#define kIpadMultitaskingPortraitOneToOneMainSizeClasses @[@(UIUserInterfaceSizeClassCompact), @(UIUserInterfaceSizeClassRegular)]

#define kIpadMultitaskingPortraitOneToOneAltRect CGRectMake(0, 0, 320, 1024)
#define kIpadMultitaskingPortraitOneToOneAltSizeClasses @[@(UIUserInterfaceSizeClassCompact), @(UIUserInterfaceSizeClassRegular)]

@import FBSnapshotTestCase;

@interface SnapFBSnapshotBase : FBSnapshotTestCase

@property (nonatomic, strong) UIViewController *sutBackingViewController;
@property (nonatomic, strong) UIView *sut;
@property (nonatomic, assign) BOOL recordAll;

- (void)snapshotVerifyView:(UIView*)view;

@end
