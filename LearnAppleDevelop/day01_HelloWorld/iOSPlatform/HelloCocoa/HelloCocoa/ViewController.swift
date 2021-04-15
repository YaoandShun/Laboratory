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

        //        if UIButton title is Plain✅👇
        self.helloButton.setTitle("Clicked",for:.normal)
        
        
        
//        if UIButton title is Attributed✅
//        let myNormalAttributedTitle = NSAttributedString(string: "Click Here",
//                                                         attributes: [NSAttributedString.Key.foregroundColor : UIColor.blue])
//        self.helloButton.setAttributedTitle(myNormalAttributedTitle,for:.normal)


    }

    
//    @IBAction func helloButtonTapped(_ sender: Any) {
//        let alert = UIAlertController(title: "Hello", message: "Hello, world", preferredStyle: UIAlertController.Style.alert)
//        alert.addAction(UIAlertAction(title: "close", style: .default, handler: { (_) in
//            self.helloButton.setTitle("Clicked",for:.normal)}))
//        self.present(alert,animated:true,completion:nil)}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

