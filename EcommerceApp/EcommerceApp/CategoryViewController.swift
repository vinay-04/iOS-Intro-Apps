//
//  CategoryViewController.swift
//  EcommerceApp
//
//  Created by VR on 11/11/24.
//

import UIKit

class CategoryViewController: UITableViewController {
    
    let categories = [
     Category(image: "shirts", name: "Shirts", item: Item(image: "shirt1", price: "$29.99", imageList: ["shirt1", "shirt2", "shirt3"])),
     Category(image: "hoodies", name: "Hoodies", item: Item(image: "hoodie1", price: "$49.99", imageList: ["hoodie1", "hoodie2", "hoodie3"])),
     Category(image: "hats", name: "Hats", item: Item(image: "hat1", price: "$19.99", imageList: ["hat1", "hat2", "hat3"])),
     Category(image: "digital", name: "Digital", item: Item(image: "digital1", price: "$9.99", imageList: ["digital1", "digital2", "digital3"]))
     ]
    
    @IBOutlet var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        self.navigationItem.title = "Categories"
        
    }
    
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as? CategoryTableViewCell else {
            return UITableViewCell()
        }
        
        let category = categories[indexPath.row]
        cell.categoryLable.text = category.name
        cell.catergoryImage.image = UIImage(named: category.image)
        
        return cell
    }
    
    let mainSegueIdentifier = "page2"
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedCategory = categories[indexPath.row]
        performSegue(withIdentifier: mainSegueIdentifier, sender: selectedCategory)
        
    }
}
    
 

