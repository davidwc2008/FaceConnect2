//
//  ViewController.swift
//  SelfieTime
//
//  Created by Andrew Seeley on 11/09/2016.
//  Copyright © 2016 Seemu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet var myImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func takePhoto(_ sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            myImg.contentMode = .scaleToFill
            myImg.image = pickedImage
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
    
    
}

