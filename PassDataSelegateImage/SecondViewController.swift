//
//  SecondViewController.swift
//  PassDataSelegateImage
//
//  Created by admin on 2/16/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

protocol passDataDelegateImage {
    func passDataImage(data: UIImage)
    
}

class SecondViewController: UIViewController {

    @IBOutlet weak var imageSecond1: UIImageView!
    var delegate: passDataDelegateImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageSecond1.image = UIImage(named: "hinh1a")
    }
    @IBAction func saveToView() {
        imageSecond1.image = UIImage(named: "hinh1a")
        self.delegate?.passDataImage(data: imageSecond1.image!)
        dismiss(animated: true, completion: nil)
    }

}
