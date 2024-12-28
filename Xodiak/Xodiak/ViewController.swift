//
//  ViewController.swift
//  Xodiak
//
//  Created by VR on 29/08/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var signLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var currentIndex = 1
    
    var signs:Signs = Signs()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let currentSign = signs.getSign(for: currentIndex)
        signLabel.text = currentSign
        imageView.image = UIImage(named: currentSign)
        
    }
    @IBAction func rightSwipe(_ sender: UISwipeGestureRecognizer) {
        currentIndex += 1
        let currentSign = signs.getSign(for: currentIndex)
        signLabel.text = currentSign
        imageView.image = UIImage(named: currentSign)
    
    }
    
    @IBAction func leftSwipe(_ sender: UISwipeGestureRecognizer) {
        currentIndex -= 1
        let currentSign = signs.getSign(for: currentIndex)
        signLabel.text = currentSign
        imageView.image = UIImage(named: currentSign)
        
    }
}

 
