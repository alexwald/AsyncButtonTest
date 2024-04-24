//
//  AsyncButtonTestApp.swift
//  AsyncButtonTest
//
//  Created by alex on 23/04/2024.
//

import SwiftUI
import ContextSDK

@main
struct AsyncButtonTestApp: App {
    
    init() {
        ContextManager.setup("1eb9f38ef755da3aa45a5b2717639421716f4b2bf2b6a6685fbfad8fc6ea5cfd71642b647c85a317f0461cce334a1c891c049c05f1bdfa0791f512b35f11c6f0")
print("App init")
    }
    
//    ContextManager.setup("1eb9f38ef755da3aa45a5b2717639421716f4b2bf2b6a6685fbfad8fc6ea5cfd71642b647c85a317f0461cce334a1c891c049c05f1bdfa0791f512b35f11c6f0")
    
    var body: some Scene {
        WindowGroup {
//            ContextManager.setup("1eb9f38ef755da3aa45a5b2717639421716f4b2bf2b6a6685fbfad8fc6ea5cfd71642b647c85a317f0461cce334a1c891c049c05f1bdfa0791f512b35f11c6f0")
            return ContentView()
        }
    }
}
