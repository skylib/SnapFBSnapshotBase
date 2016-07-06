#define kIphone4PortraitRect CGRectMake(0, 0, 320, 480)
#define kIphone5PortraitRect CGRectMake(0, 0, 320, 568)
#define kIphone6PortraitRect CGRectMake(0, 0, 375, 667)
#define kIphone6PlusPortraitRect CGRectMake(0, 0, 414, 736)
#define kIphone4LandscapeRect CGRectMake(0, 0, 480, 320)
#define kIphone5LandscapeRect CGRectMake(0, 0, 568, 320)
#define kIphone6LandscapeRect CGRectMake(0, 0, 667, 375)
#define kIphone6PlusLandscapeRect CGRectMake(0, 0, 736, 414)

#define kIpadPortraitRect CGRectMake(0, 0, 768, 1024)
#define kIpadLandscapeRect CGRectMake(0, 0, 1024, 768)
#define kIpadMultitaskingLandscapeTwoToOneMainRect CGRectMake(0, 0, 694, 768)
#define kIpadMultitaskingLandscapeTwoToOneAltRect CGRectMake(0, 0, 320, 768)
#define kIpadMultitaskingLandscapeOneToOneMainAndAltRect CGRectMake(0, 0, 507, 768)
#define kIpadMultitaskingPortraitOneToOneMainRect CGRectMake(0, 0, 438, 1024)
#define kIpadMultitaskingPortraitOneToOneAltRect CGRectMake(0, 0, 320, 1024)

@import FBSnapshotTestCase;

@interface FBSnapshotBase : FBSnapshotTestCase

@property (nonatomic, strong) UIView *sut;
@property (nonatomic, assign) BOOL recordAll;

- (void)snapshotVerifyView:(UIView*)view;

- (void)testIphone6Portrait;

@end
