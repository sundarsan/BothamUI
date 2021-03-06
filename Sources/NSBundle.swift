//
//  NSBundle.swift
//  BothamUI
//
//  Created by Davide Mendolia on 23/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

extension NSBundle {
#if os(iOS) || os(watchOS) || os(tvOS)

    public func loadNib<T: UIView>(name name: String, owner: AnyObject? = nil) -> T {
        return self.loadNibNamed(name, owner: owner, options: nil)[0] as! T
    }
#elseif os(OSX)
    public func loadNib<T: NSView>(name name: String, owner: AnyObject? = nil) -> T {
        return self.loadNibNamed(name, owner: owner, options: nil)[0] as! T
    }
#endif
}