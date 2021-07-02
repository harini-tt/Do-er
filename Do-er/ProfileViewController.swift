//
//  ProfileViewController.swift
//  Do-er
//
//  Created by Harini Thiagarajan on 6/30/21.
//

import UIKit

class ProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

//    var currentUser : [DoerLoginInfo] = []
    
    var imagePicker = UIImagePickerController()
    
    @IBOutlet weak var userProfileTitle: UILabel!
    
    @IBOutlet weak var userProfilePic: UIImageView!
    
    @IBAction func choosePictureTapped(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
//        getUser()
        // Do any additional setup after loading the view.
    }
    
//    func getUser() {
//        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
//            if let user = try? context.fetch(DoerLoginInfo.fetchRequest()) as? [DoerLoginInfo] {
//                currentUser = user
//                userProfileTitle.text = "\(user)'s Profile"
//            }
//        }
//    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            // Whenever you pick up an image, it goes into the info Dictionary and you are getting your image out of the dictionary and setting it equal to the outlet that we have
            if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
                userProfilePic.image = selectedImage
            }
            //we also want to take it back to the view controller
        imagePicker.dismiss(animated: true, completion: nil) // nil because we do not want it to do anything else
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
