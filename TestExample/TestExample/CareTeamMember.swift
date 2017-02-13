//
//  CareTeamMember.swift
//  TestExample
//
//  Created by Fede on 2/11/17.
//  Copyright © 2017 lateralview. All rights reserved.
//

import UIKit

class CareTeamMember: NSObject {

    enum CareTeamMemberStatus{
        case Inactive
        case Active
    }
    
    var name: String!
    var lastName: String!
    var roleCode: Int!
    var status: CareTeamMemberStatus!
    
    required init(dictionary: NSDictionary) {
        self.name = dictionary["name"] as! String
        self.lastName = dictionary["lastName"] as! String
        self.roleCode = dictionary["roleCode"] as! Int
        self.status = .Inactive
        if (dictionary["status"] as! Int == 1) {
            self.status = .Active
        }
    }
}
