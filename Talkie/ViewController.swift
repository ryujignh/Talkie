//
//  ViewController.swift
//  Talkie
//
//  Created by Ryuji Ganaha on 4/9/18.
//  Copyright © 2018 Ryuji Ganaha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var painScaleButton: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        initializeImageButtons()
    }
    
    // Initializing UIImageView as touchable buttons
    func initializeImageButtons() {
        painScaleButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ViewController.PainScaleButtonTapped(_:))))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func PainScaleButtonTapped(_ sender: UITapGestureRecognizer) {
        print("タップ")
        self?.performSegue(withIdentifier: "move to detail", sender: image)

    }
    
    

    
    
}

