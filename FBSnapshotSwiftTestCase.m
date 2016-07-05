#import "FBSnapshotSwiftTestCase.h"

@implementation FBSnapshotSwiftTestCase

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void) verifyView:(UIView*) view {
    FBSnapshotVerifyView(view, nil);
}

- (NSString*) getReferenceImageDirectoryWithDefault:(NSString *)dir {
    NSString *newDir = [super getReferenceImageDirectoryWithDefault:dir];
    return newDir;
}

@end
