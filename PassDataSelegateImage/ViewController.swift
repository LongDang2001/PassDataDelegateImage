//
//  ViewController.swift
//  PassDataSelegateImage
//
//  Created by admin on 2/16/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class ViewController: UIViewController,passDataDelegateImage {
    
    func passDataImage(data: UIImage) {
        imageView.image = data
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "hinh1a")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewcontroller = segue.destination as? SecondViewController
        secondViewcontroller?.delegate = self
    }
}
