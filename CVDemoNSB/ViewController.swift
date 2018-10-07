//
//  ViewController.swift
//  CVDemoNSB
//
//  Created by ADELU ABIDEEN ADELEYE on 10/7/18.
//  Copyright © 2018 Spantom Technologies Ltd. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = UIColor(red: 44/255, green: 57/255, blue: 95/255, alpha: 1)
        
        navigationItem.title = "Collection View"
        navigationController?.navigationBar.barTintColor = UIColor(red: 217/255, green: 48/255, blue: 80/255, alpha: 1)
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 20)]
    }
}

