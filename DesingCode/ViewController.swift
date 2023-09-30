//
//  ViewController.swift
//  DesingCode
//
//  Created by Matias Martinelli on 28/09/2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var blurView: UIVisualEffectView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blurView.layer.shadowOpacity = 0.2


    }

    
        

}

