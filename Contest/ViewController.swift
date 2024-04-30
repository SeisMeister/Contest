//
//  ViewController.swift
//  Contest
//
//  Created by Cesar Fernandez on 4/29/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
//    func isValidInput() -> Bool {
//
//    }
    
    @IBAction func submitTap(_ sender: UIButton) {
        if let input = emailTextField.text, !input.isEmpty, input.contains("@") {
            // Body of code to check if a proper email is entered into text field.
            // Should I use a function to check that the entered email contains proper email characters?
            performSegue(withIdentifier: "viewControllerSegue", sender: Any?.self)
            
        } else {
            // Body of code to execute animation to grab users attention to fill in empty email field.
            let start = self.emailTextField.center
            let x: CGFloat = 5
            
            UIView.animateKeyframes(withDuration: 0.3, delay: 0, options: .calculationModeCubic, animations: {
                UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
                    self.emailTextField.transform = CGAffineTransform(translationX: x, y: 0)
                }
                
                UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                    self.emailTextField.transform = CGAffineTransform(translationX: -x, y: 0)
                }
                
                UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) {
                    self.emailTextField.transform = CGAffineTransform(translationX: x, y: 0)
                }
                
                UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                    self.emailTextField.transform = CGAffineTransformIdentity
                }
            })
        }
        
    }
    
}
