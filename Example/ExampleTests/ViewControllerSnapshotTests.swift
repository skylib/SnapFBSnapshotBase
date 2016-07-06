import SnapFBSnapshotBase
@testable import SnapFBSnapshotBaseExample

class ExampleSnapshotTests: FBSnapshotBase {
    
    var vc: ViewController!
    
    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        vc = storyboard.instantiateInitialViewController() as! ViewController
        
        sut = vc.view
        
        // Setup the view
        vc.imageView?.image = UIImage(named: "snapsale")
        
        super.setUp()
        recordMode = self.recordAll || true
    }
    
    override func tearDown() {
        vc = nil
        
        super.tearDown()
    }
    
}
