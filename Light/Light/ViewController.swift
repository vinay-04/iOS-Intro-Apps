//
//  ViewController.swift
//  Light
//
//  Created by admin29 on 18/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lightBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var lightOn = true
    fileprivate func upadteUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
    
    @IBAction func lightBtnPress(_ sender: Any) {
        lightOn.toggle()
        upadteUI()
    }
    
}

