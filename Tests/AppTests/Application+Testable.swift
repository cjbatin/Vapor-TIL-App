//
//  File.swift
//  
//
//  Created by Christopher Batin on 19/07/2022.
//

import XCTVapor
import App

extension Application {
    
    static func testable() throws -> Application {
        let app = Application(.testing)
        try configure(app)
        
        try app.autoRevert().wait()
        try app.autoMigrate().wait()
        
        return app
    }
}
