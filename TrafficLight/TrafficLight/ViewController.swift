//
//  ViewController.swift
//  TrafficLight
//
//  Created by VR on 03/09/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var yellowGreenSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindToRed(_ unwindSegue: UIStoryboardSegue) {
        // let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
  
    
    
    @IBAction func navButton(_ sender: UIButton) {
        if yellowGreenSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
        else {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
    
}

