//
//  ImagePicker.swift
//  TwitterClone
//
//  Created by dhanasekaran on 26/12/21.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable
{
    @Binding var image: UIImage?
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let imagePickerConroller = UIImagePickerController()
        imagePickerConroller.delegate = context.coordinator
        return imagePickerConroller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
         
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
}

extension ImagePicker {
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
                picker.dismiss(animated: true, completion: nil)
                return
            }
            picker.dismiss(animated: true) {
                self.parent.image = selectedImage
            }
        }
    }
}
