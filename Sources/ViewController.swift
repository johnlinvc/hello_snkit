import SNKit
#if os(iOS)
import UIKit
#elseif os(OSX)
import Foundation
#endif

class ViewController : SNViewController {
    var label:SNLabel?
    override func viewDidLoad() {
        label = SNLabel(frame:CGRect(x: 100, y: 100, width: 100, height: 100))
        label.text = "hello SNKit"
        self.view.addSubview(label)
        let button = SNButton(frame:CGRect(x: 200, y: 200, width: 120, height: 40))
        button.setTitle("Magic Button", forState: .Normal)
        self.view.addSubview(button)
    }

    func buttonPushed() {
        label.text = "Someone pushed the button"
    }
}
