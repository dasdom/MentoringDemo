//  Created by Dominik Hauser on 10.06.18 at 21:29.
//  Copyright © 2018 Dominik Hauser. All rights reserved.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        print("motionBegan")
        
        if view.backgroundColor == UIColor.green {
            let runtimeView = value(forKey: textField.text!) as? UIView
            runtimeView?.backgroundColor = UIColor.white
        } else {
            view.backgroundColor = UIColor.green
        }
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        print("motionEnded")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare for segue")
        
        if segue.identifier == "DemoSegue" {
            segue.destination.view.backgroundColor = UIColor.red
        }
    }
}
