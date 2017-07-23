import SNKit
#if os(iOS)
import UIKit
#elseif os(OSX)
import Foundation
#endif

class ViewController : SNViewController {
    override func viewDidLoad() {
        let label = SNLabel(frame:CGRect(x: 0, y: 0, width: 100, height: 100))
        label.text = "hello SNKit"
        self.view.addSubview(label)
    }
}
