//
//  Ucesnik.swift
//  tableViewSectionTest
//
//  Created by CodeWell on 1/14/19.
//  Copyright © 2019 Ivana Stamardjioska. All rights reserved.
//

import UIKit

class Ucesnik: NSObject {
    
    var ime: String!
    var odi: Bool = false
    
    init(ime:String) {
        self.ime = ime
        
    }

    override var description: String {
        return "\(ime!)\(odi)"
    }
}
