
// Source: https://medium.com/@yiweini/opencv-with-swift-step-by-step-c3cc1d1ee5f1

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rioImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("\(OpenCVWrapper.openCVVersionString()!)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToGrayscale(_ sender: Any) {
        rioImageView.image = OpenCVWrapper.makeGray(from: rioImageView.image)
    }
    
}

