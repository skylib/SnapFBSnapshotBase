# SnapFBSnapshotBase

**SnapFBSnapshotBase** is Snapsale's customization of Facebook's snapshot test framework for iOS, [FBSnapshotTestCase](https://github.com/facebook/ios-snapshot-test-case). It features functionality to automatically perform snapshot tests on all existing layouts for iOS devices.

## Features

From FBSnapshotTestCase (quoted from their [README](https://github.com/facebook/ios-snapshot-test-case)):
- Automatically names reference images on disk according to test class and
  selector.
- Prints a descriptive error message to the console on failure. (Bonus:
  failure message includes a one-line command to see an image diff if
  you have [Kaleidoscope](http://www.kaleidoscopeapp.com) installed.)
- Supply an optional "identifier" if you want to perform multiple snapshots
  in a single test method.
- Support for `CALayer` via `FBSnapshotVerifyLayer`.
- `isDeviceAgnostic` to allow appending the device model (`iPhone`, `iPad`, `iPod Touch`, etc), OS version and screen size to the images (allowing to have multiple tests for the same «snapshot» for different `OS`s and devices).

Our customizations:
- Write one test, run it in record mode on one device, and SnapFBSnapshotBase automatically generates snapshots for the 15 different layouts available on iOS.
- Run a test once, on one device, and SnapFBSnapshotBase automatically compares 15 new snapshots with your 15 saved snapshots.
- Automatic support for size classes if you specify the view being tested (`sut`)'s backing view controller (`sutBackingViewController`).

## Installation

Include **SnapFBSnapshotBase** in your [CocoaPods](https://github.com/cocoapods/cocoapods) Podfile:

```
source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/skylib/SnapPods'
```

```
target "Tests" do
  pod 'SnapFBSnapshotBase'
end
```

Please see the [FBSnapshotTestCase README](https://github.com/facebook/ios-snapshot-test-case) for instructions on setting reference image directories.

The example app in this repo provides a simple demonstration of how to write your own tests.

## Notes

**SnapFBSnapshotBase** will generate snapshots with the scale of the simulator device that runs the test. As of now, a comparison of a @2x snapshot and an identical @3x snapshot will fail. We therefore recommend choosing one test device or scale, and sticking with it.

## License

This repository contains a customized version of software released under the BSD license. A copy of the original copyright notice is provided in the file LICENSE-FBSnapshotTestCase.

**SnapFBSnapshotBase** is also released under the BSD license. See the LICENSE file for more info.
