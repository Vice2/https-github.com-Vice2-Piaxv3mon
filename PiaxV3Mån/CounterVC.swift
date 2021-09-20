//
//  CounterVC.swift
//  PiaxV3Mån
//
//  Created by Bashar Al Bagdadi on 2021-09-20.
//  Copyright © 2021 Bashar Al Bagdadi. All rights reserved.
//

import UIKit

class CounterVC: UIViewController {

    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    @IBOutlet weak var minusButton: UIButton!
    
    
    
    var siffra = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        numberLabel.text = "0"
    }
    

    @IBAction func minusClick(_ sender: Any) {
    
        siffra = siffra - 1
        
        if(siffra < 0)
        {
            siffra = 0
        }
        if(siffra == 0){
            minusButton.isEnabled = false
        }
        numberLabel.text = String(siffra)
    }
    
    
    @IBAction func plusClick(_ sender: Any) {
        
        siffra = siffra + 1
        
        minusButton.isEnabled = true
        
        numberLabel.text = String(siffra)
    }
    
    
    @IBAction func resetClick(_ sender: Any) {
        
        siffra = 0
    
        numberLabel.text = String(siffra)
        
        minusButton.isEnabled = false
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
