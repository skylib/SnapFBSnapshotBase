#import "SnapFBSnapshotBase.h"

// Because we cannot make this an abstract class.
// Source: http://stackoverflow.com/questions/23490133/shared-tests-in-xctest-test-suites - read it!
#define DONT_RUN_TEST_IF_PARENT if ([NSStringFromClass([self class]) isEqualToString:@"SnapFBSnapshotBase"]) { return; }

@implementation SnapFBSnapshotBase : FBSnapshotTestCase {
    
    UIViewController *_parentViewController;
}

- (void)setUp {
    self.recordAll = NO;
    
    if (self.sutBackingViewController == nil) {
        NSLog(@"Cannot account for size classes: sutBackingViewController == nil");
    } else {
        _parentViewController = [[UIViewController alloc] init];
        [_parentViewController addChildViewController:self.sutBackingViewController];
    }
    
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)snapshotVerifyView:(UIView*)view {
    DONT_RUN_TEST_IF_PARENT
    
    FBSnapshotVerifyView(view, nil);
}

- (void)testIphone4Portrait {
    DONT_RUN_TEST_IF_PARENT
    
    CGRect frame = kIphone4PortraitRect;
    UIUserInterfaceSizeClass horizontalSizeClass = [kIphone4PortraitSizeClasses[0] integerValue];
    UIUserInterfaceSizeClass verticalSizeClass = [kIphone4PortraitSizeClasses[1] integerValue];
    
    [self configureSutForFrame:frame withHorizontalSizeClass:horizontalSizeClass withVerticalSizeClass:verticalSizeClass];
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIphone5Portrait {
    DONT_RUN_TEST_IF_PARENT
    
    CGRect frame = kIphone5PortraitRect;
    UIUserInterfaceSizeClass horizontalSizeClass = [kIphone5PortraitSizeClasses[0] integerValue];
    UIUserInterfaceSizeClass verticalSizeClass = [kIphone5PortraitSizeClasses[1] integerValue];
    
    [self configureSutForFrame:frame withHorizontalSizeClass:horizontalSizeClass withVerticalSizeClass:verticalSizeClass];
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIphone6Portrait {
    DONT_RUN_TEST_IF_PARENT
    
    CGRect frame = kIphone6PortraitRect;
    UIUserInterfaceSizeClass horizontalSizeClass = [kIphone6PortraitSizeClasses[0] integerValue];
    UIUserInterfaceSizeClass verticalSizeClass = [kIphone6PortraitSizeClasses[1] integerValue];
    
    [self configureSutForFrame:frame withHorizontalSizeClass:horizontalSizeClass withVerticalSizeClass:verticalSizeClass];
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIphone6PlusPortrait {
    DONT_RUN_TEST_IF_PARENT
    
    CGRect frame = kIphone6PlusPortraitRect;
    UIUserInterfaceSizeClass horizontalSizeClass = [kIphone6PlusPortraitSizeClasses[0] integerValue];
    UIUserInterfaceSizeClass verticalSizeClass = [kIphone6PlusPortraitSizeClasses[1] integerValue];
    
    [self configureSutForFrame:frame withHorizontalSizeClass:horizontalSizeClass withVerticalSizeClass:verticalSizeClass];
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIphone4Landscape {
    DONT_RUN_TEST_IF_PARENT
    
    CGRect frame = kIphone4LandscapeRect;
    UIUserInterfaceSizeClass horizontalSizeClass = [kIphone4LandscapeSizeClasses[0] integerValue];
    UIUserInterfaceSizeClass verticalSizeClass = [kIphone4LandscapeSizeClasses[1] integerValue];
    
    [self configureSutForFrame:frame withHorizontalSizeClass:horizontalSizeClass withVerticalSizeClass:verticalSizeClass];
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIphone5Landscape {
    DONT_RUN_TEST_IF_PARENT
    
    CGRect frame = kIphone5LandscapeRect;
    UIUserInterfaceSizeClass horizontalSizeClass = [kIphone5LandscapeSizeClasses[0] integerValue];
    UIUserInterfaceSizeClass verticalSizeClass = [kIphone5LandscapeSizeClasses[1] integerValue];
    
    [self configureSutForFrame:frame withHorizontalSizeClass:horizontalSizeClass withVerticalSizeClass:verticalSizeClass];
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIphone6Landscape {
    DONT_RUN_TEST_IF_PARENT
    
    CGRect frame = kIphone6LandscapeRect;
    UIUserInterfaceSizeClass horizontalSizeClass = [kIphone6LandscapeSizeClasses[0] integerValue];
    UIUserInterfaceSizeClass verticalSizeClass = [kIphone6LandscapeSizeClasses[1] integerValue];
    
    [self configureSutForFrame:frame withHorizontalSizeClass:horizontalSizeClass withVerticalSizeClass:verticalSizeClass];
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIphone6PlusLandscape {
    DONT_RUN_TEST_IF_PARENT
    
    CGRect frame = kIphone6PlusLandscapeRect;
    UIUserInterfaceSizeClass horizontalSizeClass = [kIphone6PlusLandscapeSizeClasses[0] integerValue];
    UIUserInterfaceSizeClass verticalSizeClass = [kIphone6PlusLandscapeSizeClasses[1] integerValue];
    
    [self configureSutForFrame:frame withHorizontalSizeClass:horizontalSizeClass withVerticalSizeClass:verticalSizeClass];
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIpadPortrait {
    DONT_RUN_TEST_IF_PARENT
    
    CGRect frame = kIpadPortraitRect;
    UIUserInterfaceSizeClass horizontalSizeClass = [kIpadPortraitSizeClasses[0] integerValue];
    UIUserInterfaceSizeClass verticalSizeClass = [kIpadPortraitSizeClasses[1] integerValue];
    
    [self configureSutForFrame:frame withHorizontalSizeClass:horizontalSizeClass withVerticalSizeClass:verticalSizeClass];
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIpadLandscape {
    DONT_RUN_TEST_IF_PARENT
    
    CGRect frame = kIpadLandscapeRect;
    UIUserInterfaceSizeClass horizontalSizeClass = [kIpadLandscapeSizeClasses[0] integerValue];
    UIUserInterfaceSizeClass verticalSizeClass = [kIpadLandscapeSizeClasses[1] integerValue];
    
    [self configureSutForFrame:frame withHorizontalSizeClass:horizontalSizeClass withVerticalSizeClass:verticalSizeClass];
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIpadMultitaskingLandscapeTwoToOneMain {
    DONT_RUN_TEST_IF_PARENT
    
    CGRect frame = kIpadMultitaskingLandscapeTwoToOneMainRect;
    UIUserInterfaceSizeClass horizontalSizeClass = [kIpadMultitaskingLandscapeTwoToOneMainSizeClasses[0] integerValue];
    UIUserInterfaceSizeClass verticalSizeClass = [kIpadMultitaskingLandscapeTwoToOneMainSizeClasses[1] integerValue];
    
    [self configureSutForFrame:frame withHorizontalSizeClass:horizontalSizeClass withVerticalSizeClass:verticalSizeClass];
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIpadMultitaskingLandscapeTwoToOneAlt {
    DONT_RUN_TEST_IF_PARENT
    
    CGRect frame = kIpadMultitaskingLandscapeTwoToOneAltRect;
    UIUserInterfaceSizeClass horizontalSizeClass = [kIpadMultitaskingLandscapeTwoToOneAltSizeClasses[0] integerValue];
    UIUserInterfaceSizeClass verticalSizeClass = [kIpadMultitaskingLandscapeTwoToOneAltSizeClasses[1] integerValue];
    
    [self configureSutForFrame:frame withHorizontalSizeClass:horizontalSizeClass withVerticalSizeClass:verticalSizeClass];
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIpadMultitaskingLandscapeOneToOneMainAndAlt {
    DONT_RUN_TEST_IF_PARENT
    
    CGRect frame = kIpadMultitaskingLandscapeOneToOneMainAndAltRect;
    UIUserInterfaceSizeClass horizontalSizeClass = [kIpadMultitaskingLandscapeOneToOneMainAndAltSizeClasses[0] integerValue];
    UIUserInterfaceSizeClass verticalSizeClass = [kIpadMultitaskingLandscapeOneToOneMainAndAltSizeClasses[1] integerValue];
    
    [self configureSutForFrame:frame withHorizontalSizeClass:horizontalSizeClass withVerticalSizeClass:verticalSizeClass];
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIpadMultitaskingPortraitOneToOneMain {
    DONT_RUN_TEST_IF_PARENT
    
    CGRect frame = kIpadMultitaskingPortraitOneToOneMainRect;
    UIUserInterfaceSizeClass horizontalSizeClass = [kIpadMultitaskingPortraitOneToOneMainSizeClasses[0] integerValue];
    UIUserInterfaceSizeClass verticalSizeClass = [kIpadMultitaskingPortraitOneToOneMainSizeClasses[1] integerValue];
    
    [self configureSutForFrame:frame withHorizontalSizeClass:horizontalSizeClass withVerticalSizeClass:verticalSizeClass];
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIpadMultitaskingPortraitOneToOneAlt {
    DONT_RUN_TEST_IF_PARENT
    
    CGRect frame = kIpadMultitaskingPortraitOneToOneAltRect;
    UIUserInterfaceSizeClass horizontalSizeClass = [kIpadMultitaskingPortraitOneToOneAltSizeClasses[0] integerValue];
    UIUserInterfaceSizeClass verticalSizeClass = [kIpadMultitaskingPortraitOneToOneAltSizeClasses[1] integerValue];
    
    [self configureSutForFrame:frame withHorizontalSizeClass:horizontalSizeClass withVerticalSizeClass:verticalSizeClass];
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)configureSutForFrame:(CGRect)frame withHorizontalSizeClass:(UIUserInterfaceSizeClass)horizontalSizeClass withVerticalSizeClass:(UIUserInterfaceSizeClass)verticalSizeClass {
    
    self.sut.frame = frame;
    
    if (self.sutBackingViewController != nil) {
        UITraitCollection *traitCollectionHorizontal = [UITraitCollection traitCollectionWithHorizontalSizeClass:horizontalSizeClass];
        UITraitCollection *traitCollectionVertical = [UITraitCollection traitCollectionWithVerticalSizeClass:verticalSizeClass];
        
        UITraitCollection *traitCollection = [UITraitCollection traitCollectionWithTraitsFromCollections:@[traitCollectionHorizontal, traitCollectionVertical]];
        [_parentViewController setOverrideTraitCollection:traitCollection forChildViewController:self.sutBackingViewController];
    }
    
}

@end
