//
//  Person.swift
//  MissingPersons
//
//  Created by Malhar Patel on 8/11/16.
//  Copyright © 2016 Malhar Patel. All rights reserved.
//

import Foundation
import UIKit
import ProjectOxfordFace

class Person {
    var faceId: String?
    var personImage: UIImage?
    var personImageUrl: String?
    
    init(personImageUrl: String) {
        self.personImageUrl = personImageUrl
    }
    
    func downloadFaceId() {
        if let img = personImage, let imgData = UIImageJPEGRepresentation(img, 0.8) {
            FaceService.instance.client.detectWithData(imgData, returnFaceId: true, returnFaceLandmarks: false, returnFaceAttributes: nil, completionBlock: { (faces: [MPOFace]!, error: NSError!) in
                if error == nil {
                    var faceId: String?
                    for face in faces {
                        faceId = face.faceId
                        print("Face ID: \(faceId)")
                        break
                    }
                    self.faceId = faceId
                }
            })
        }
    }
}
