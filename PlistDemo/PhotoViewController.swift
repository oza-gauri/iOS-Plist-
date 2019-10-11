//
//  PhotoViewController.swift
//  PlistDemo
//
//  Created by Aress Software Pvt Ltd on 30/08/19.
//  Copyright © 2019 Aress Software Pvt Ltd. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        let vc = UIImagePickerController()
        vc.delegate = self
        vc.allowsEditing = true
      // vc.sourceType = UIImagePickerController.SourceType.camera
        vc.sourceType = UIImagePickerController.SourceType.photoLibrary
        
        self.present(vc, animated: true, completion: nil)
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            print("Camera is available 📸 ")
            vc.sourceType = .camera
        } else {
            print("Camera is not available 🚫 ")
            vc.sourceType = .photoLibrary
        }

    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
           let originalImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
          let editedImage = info[UIImagePickerController.InfoKey.editedImage] as! UIImage
        
        dismiss(animated: true, completion: nil)
    }
    
    

}
