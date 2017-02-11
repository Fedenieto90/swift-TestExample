//
//  CareTeamMemberSpec.swift
//  TestExample
//
//  Created by Fede on 2/11/17.
//  Copyright © 2017 lateralview. All rights reserved.
//

import Nimble
import Quick
import OHHTTPStubs

@testable import TestExample

class CareTeamMemberSpec: QuickSpec {
   
    override func spec() {
        var ct: CareTeamMember!
        
        beforeEach {
            //Init a fake dictionary response
            let dictionary = NSDictionary(dictionary: ["name": "fede",
                                                    "surname": "nieto",
                                                   "roleCode": 2,
                                                     "status": 1])
            
            //Create a care team member with the dictionary
            ct = CareTeamMember(dictionary: dictionary)
        }
        
        describe("when we create a CareTeamMember successfully") {
            
            it("the name should be stored", closure: { 
                expect(ct.name) .to(equal("fede"))
            })
            
            it("the surname should be stored", closure: {
                expect(ct.surname) .to(equal("nieto"))
            })
            
            it("the roleCode should be stored", closure: {
                expect(ct.roleCode) .to(equal(2))
            })
            
            it("should store the status", closure: {
                expect(ct.status) .to(equal(CareTeamMember.CareTeamMemberStatus.Active))
            })
        
        }
    }

}
