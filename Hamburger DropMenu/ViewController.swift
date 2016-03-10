//
//  ViewController.swift
//  Hamburger DropMenu
//
//  Created by Vinit Jasoliya on 3/10/16.
//  Copyright © 2016 ViNiT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var selectedCellLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let items = ["Home", "About", "Services", "Contact", "Forum"]
        
        self.selectedCellLabel.text = items.first
        self.navigationController?.navigationBar.translucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 87.0/255.0, green: 56.0/255.0, blue: 92.0/255.0, alpha: 1.0)
        
        let dropdownMenu: NKDropdownMenu = NKDropdownMenu(items: items)
        dropdownMenu.didSelectItemAtIndexHandler = {(indexPath: Int) -> () in
            
            //ADD YOUR CODE HERE TO PERFORM ACTION ON A SINGLE CELL SELECTED USING THE INDEX
            
            print("Did select item at index: \(indexPath)")
            self.selectedCellLabel.text = items[indexPath]
            
        }
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: dropdownMenu)
        
    }
    
}


