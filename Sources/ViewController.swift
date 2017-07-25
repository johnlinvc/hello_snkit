import SNKit
#if os(iOS)
import UIKit
#elseif os(OSX)
import Foundation
#endif

class ViewController : SNViewController {
    var label:SNLabel!
    override func viewDidLoad() {
        label = SNLabel(frame:CGRect(x: 100, y: 100, width: 100, height: 100))
        label.text = "hello SNKit"
        self.view.addSubview(label!)
        let button = SNButton(frame:CGRect(x: 200, y: 200, width: 200, height: 40))
        button.setTitle("Magic Button", for: .normal)
        button.backgroundColor = SNColor.blue
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.buttonPushed), for: .touchUpInside)
    }

    @objc
    func buttonPushed() {
        label.text = "Someone pushed the button"
    }
}
