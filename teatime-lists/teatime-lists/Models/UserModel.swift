//
//  UserModel.swift
//  placetest
//
//  Created by Benjamin Vigier on 9/15/18.
//  Copyright © 2018 Benjamin Vigier. All rights reserved.
//

import Foundation
import Parse

class UserModel: PFUser {
    @NSManaged var facebookID: String
    @NSManaged var fullname: String
    @NSManaged var firstname: String
    @NSManaged var lastname: String
    @NSManaged var gender: String
    @NSManaged var photoURL: String
    
    var photoImage: UIImage?
    
    static var currentUser : UserModel?
    
    override init(){
        super.init()
    }
    
    init(facebookID: String = "", email: String, fullname: String, firstname: String = "", lastname: String = "", gender: String = "", photoURL: String = ""){
        super.init()
        self.facebookID = facebookID
        self.email = email
        self.fullname = fullname
        self.firstname = firstname
        self.lastname = lastname
        self.gender = gender
        self.photoURL = photoURL
    }
    
}
