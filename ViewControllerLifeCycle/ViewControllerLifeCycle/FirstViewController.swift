//
//  ViewController.swift
//  ViewControllerLifeCycle
//
//  Created by VR on 05/09/24.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("First view controller VIEWDIDLOAD")
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("First view controller VIEWWILLAPPEAR")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("First view controller VIEWDIDAPPEAR")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("First view controller VIEWWILLDISAPPEAR")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("First view controller VIEWDIDDISAPPEAR")
    }
}

