#import "FBSnapshotSwiftTestCase.h"

@implementation FBSnapshotSwiftTestCase

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
