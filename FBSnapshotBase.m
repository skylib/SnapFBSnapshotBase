#import "FBSnapshotBase.h"

// Because we cannot make this an abstract class.
// Source: http://stackoverflow.com/questions/23490133/shared-tests-in-xctest-test-suites - read it!
#define DONT_RUN_TEST_IF_PARENT if ([NSStringFromClass([self class]) isEqualToString:@"FBSnapshotBase"]) { return; }

@implementation FBSnapshotBase : FBSnapshotTestCase

- (void)setUp {
    self.recordAll = NO;
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
    self.sut.frame = kIphone4PortraitRect;
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIphone5Portrait {
    DONT_RUN_TEST_IF_PARENT
    self.sut.frame = kIphone5PortraitRect;
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIphone6Portrait {
    DONT_RUN_TEST_IF_PARENT
    self.sut.frame = kIphone6PortraitRect;
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIphone6PlusPortrait {
    DONT_RUN_TEST_IF_PARENT
    self.sut.frame = kIphone6PlusPortraitRect;
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIphone4Landscape {
    DONT_RUN_TEST_IF_PARENT
    self.sut.frame = kIphone4LandscapeRect;
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIphone5Landscape {
    DONT_RUN_TEST_IF_PARENT
    self.sut.frame = kIphone5LandscapeRect;
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIphone6Landscape {
    DONT_RUN_TEST_IF_PARENT
    self.sut.frame = kIphone6LandscapeRect;
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIphone6PlusLandscape {
    DONT_RUN_TEST_IF_PARENT
    self.sut.frame = kIphone6PlusLandscapeRect;
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIpadPortrait {
    DONT_RUN_TEST_IF_PARENT
    self.sut.frame = kIpadPortraitRect;
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIpadLandscape {
    DONT_RUN_TEST_IF_PARENT
    self.sut.frame = kIpadLandscapeRect;
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIpadMultitaskingLandscapeTwoToOneMain {
    DONT_RUN_TEST_IF_PARENT
    self.sut.frame = kIpadMultitaskingLandscapeTwoToOneMainRect;
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIpadMultitaskingLandscapeTwoToOneAlt {
    DONT_RUN_TEST_IF_PARENT
    self.sut.frame = kIpadMultitaskingLandscapeTwoToOneAltRect;
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIpadMultitaskingLandscapeOneToOneMainAndAlt {
    DONT_RUN_TEST_IF_PARENT
    self.sut.frame = kIpadMultitaskingLandscapeOneToOneMainAndAltRect;
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIpadMultitaskingPortraitOneToOneMain {
    DONT_RUN_TEST_IF_PARENT
    self.sut.frame = kIpadMultitaskingPortraitOneToOneMainRect;
    FBSnapshotVerifyView(self.sut, nil);
}

- (void)testIpadMultitaskingPortraitOneToOneAlt {
    DONT_RUN_TEST_IF_PARENT
    self.sut.frame = kIpadMultitaskingPortraitOneToOneAltRect;
    FBSnapshotVerifyView(self.sut, nil);
}

- (NSString *)getReferenceImageDirectoryWithDefault:(NSString *)dir {
    NSString *newDir = [super getReferenceImageDirectoryWithDefault:dir];
    return newDir;
}

@end
