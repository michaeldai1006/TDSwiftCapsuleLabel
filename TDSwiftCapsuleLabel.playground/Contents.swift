  import UIKit
  import PlaygroundSupport
  
  // View controller that hosts the target view
  class TDLiveViewController : UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Config background
        self.view.backgroundColor = .lightGray
        
        // Label location
        let labelWidth: CGFloat = 120.0
        let labelHeight: CGFloat = 20.0
        var labelX: CGFloat { get { return self.view.frame.width / 2 - labelWidth / 2 } }
        var labelY: CGFloat { get { return self.view.frame.height / 2 - labelHeight / 2 } }
        
        // Label instance
        let capsuleLabel = TDSwiftCapsuleLabel(frame: CGRect(x: labelX, y: labelY, width: labelWidth, height: labelHeight))
        capsuleLabel.text = "Hello, World!"
        
        // Present label
        self.view.addSubview(capsuleLabel)
    }
  }
  
  // Present the view controller in the Live View window
  PlaygroundPage.current.liveView = TDLiveViewController()
