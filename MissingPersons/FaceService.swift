//
//  FaceService.swift
//  MissingPersons
//
//  Created by Malhar Patel on 8/11/16.
//  Copyright © 2016 Malhar Patel. All rights reserved.
//

import Foundation
import ProjectOxfordFace

class FaceService {
    static let instance = FaceService()
    
    let client = MPOFaceServiceClient(subscriptionKey: "6d7c87349bb84a618722857df80d4131")
}
