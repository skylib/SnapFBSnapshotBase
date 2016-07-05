//@import FBSnapshotTestCase;
//#import "Theme.h"
#import <FBSnapshotTestCase/FBSnapshotTestCase-umbrella.h>

//#import <CustomBadge/CustomBadge.h>

@interface FBSnapshotSwiftTestCase : FBSnapshotTestCase

- (void) verifyView:(UIView*) view;

@end
