//
//  SignUpViewController.swift
//  Do-er
//
//  Created by  Scholar on 6/29/21.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func signUpButton(_ sender: UIButton) {
        // we have to grab this view context to be able to work with Core Data
          if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

            // we are creating a new user object here, naming it user
            let user = DoerLoginInfo(entity: DoerLoginInfo.entity(), insertInto: context)

            // if the emailField has text, we will call that text userEmail
            if let userEmail = emailField.text {
                if let userUsername = usernameField.text {
                    if let userPassword = passwordTextField.text {
                        user.email = userEmail
                        user.username = userUsername
                        user.password = userPassword
                    }
                }
            }

            try? context.save()

            navigationController?.popViewController(animated: true)
          }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
