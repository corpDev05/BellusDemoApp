//
//  ViewController.swift
//  DemoApp
//
//  Created by Bellubis-WS29 on 25/09/23.
//  Copyright © 2023 Bellubis-WS29. All rights reserved.
//

import UIKit

class LoginPageController: UIViewController ,UITextFieldDelegate {
    @IBOutlet var loginBtn: UIButton!
    
    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var emailView: UIView!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var imageView: UIImageView!
 
    @IBOutlet var imageHeight: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       // emailTextField.layer.cornerRadius = 4.0
       
        loginBtn.layer.cornerRadius = 4.0
        emailTextField.layer.cornerRadius = 24.0
        passwordTextField.layer.cornerRadius = 24.0
         self.hideKeyboardWhenTappedAround()
         setHeightOfImageView(imageView)
          debugPrint(" the height of the logo image is \(imageHeight)")
        //setHeightOfImageView(imageView)
        
        //emailView.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        true
    }
    
    func setHeightOfImageView(_ view : UIImageView){
        let screenSize: CGRect = UIScreen.main.bounds
        let multiplier = 0.133
        print("Screen size  = \(screenSize)")
        imageHeight.constant = screenSize.height * CGFloat(multiplier)
        print(" the height of the logo image is \(imageHeight)")
        
        
        
        
    }
  
    


}
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
//Now in every UIViewController, all you have to do is call this function:

//override func viewDidLoad() {
//    super.viewDidLoad()
//    self.hideKeyboardWhenTappedAround()
//}
