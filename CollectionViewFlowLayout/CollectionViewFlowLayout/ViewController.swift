//
//  ViewController.swift
//  CollectionViewFlowLayout
//
//  Created by VR on 21/10/24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        

        let flowLayout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
//        let randWidth = Int.random(in: 100...200)
//        let randHeight = Int.random(in: 100...200)
//        flowLayout.estimatedItemSize = CGSize(width: randWidth, height: randHeight)
//        flowLayout.estimatedItemSize = CGSize(width: self.view.bounds.width - 50, height: 77)
//        flowLayout.estimatedItemSize = CGSize(width: 50, height: 50)
//        flowLayout.itemSize = CGSize(width: self.view.bounds.width - 50, height: 77)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let randWidth = Int.random(in: 100...200)
        let randHeight = Int.random(in: 100...200)
//        return CGSize(width: self.view.bounds.width - 50, height: 77)
        return CGSize(width: randWidth, height: randHeight)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        200
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "item", for: indexPath)
        if let colorCell = cell as? CustomCell{
            colorCell.cellView.backgroundColor = randomColor
            
        }

        return cell
    }
    
    var randomColor:UIColor {
        let red: CGFloat = .random(in: 0...1)
        let green: CGFloat = .random(in: 0...1)
        let blue: CGFloat = .random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    
}

