#import "SnapFBSnapshotSwiftTestCase.h"

@implementation SnapFBSnapshotSwiftTestCase

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)verifyView:(UIView *)view {
    FBSnapshotVerifyView(view, nil);
}

@end
