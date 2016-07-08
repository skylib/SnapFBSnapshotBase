import SnapFBSnapshotBase
@testable import SnapFBSnapshotBaseExample

class ExampleSnapshotTests: FBSnapshotBase {
    
    var vc: ViewController!
    
    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        vc = storyboard.instantiateInitialViewController() as! ViewController
        
        sutBackingViewController = vc // Enables size classes
        sut = vc.view // Also loads the view
        
        // Setup the loaded view
        vc.imageView?.image = UIImage(named: "snapsale")
        
        super.setUp()
        recordMode = self.recordAll || false
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
}
