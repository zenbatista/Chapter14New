//
//  Document.swift
//  Chapter14New
//
//  Created by Harald Batista on 1/16/18.
//  Copyright © 2018 zenbatista. All rights reserved.
//

import UIKit

class EmojiArtDocument: UIDocument {
    
    
    var emojiArt: EmojiArt?
    
    override func contents(forType typeName: String) throws -> Any {
        // Encode your document with an instance of NSData or NSFileWrapper
        return emojiArt?.json ?? Data()
    }
    
    override func load(fromContents contents: Any, ofType typeName: String?) throws {
        // Load your document from contents
        
        if let json = contents as? Data {
            emojiArt = EmojiArt(json: json)
        }
        
        
    }
}

