//
//  ViewController.swift
//  HelloCocoa
//
//  Created by LearnChild on 2021/4/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloButton: UIButton!
    
    @IBAction func showAlert(_ sender: Any) {
//        var alert = UIAlertController(title: "Hello!", message: "Hello, world!",preferredStyle: UIAlertControllerStyle.Alert)
        
        let alert = UIAlertController(title: "Hello", message: "Hello, world", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "close", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert,animated:true,completion:nil)
//        ❌ it didn't work
        self.helloButton.setTitle("Clicked",for:.normal)
        
        
            
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

