import SnapSnapshotBase
@testable import Example

class ExampleSnapshotTests: FBSnapshotBase {
    
    var vc: ViewController!
    
    override func setUp() {
        // Setup code
        vc = ViewController()
        vc.imageView?.image = UIImage(named: "snapsale")
        
        sut = vc.view
        sut.setNeedsDisplay()
        sut.layoutIfNeeded()
        
        super.setUp()
        recordMode = false
    }
    
    override func tearDown() {
        vc = nil
        
        super.tearDown()
    }
    
}
