//
//  MenuStorage.swift
//  I want to eat ios
//
//  Created by Anton Pavlov on 21/06/2018.
//  Copyright © 2018 Anton Pavlov. All rights reserved.
//

import Foundation

class MenuStorage {
    private static let menuStorage: MenuStorage = { return MenuStorage() }()
    class func SharedInstance () -> MenuStorage { return menuStorage }
    
    
    var menuForTheDay:MenuForTheDay?
    
    //    MenuForTheDay
    public func fetchMenuForTheDay() -> MenuForTheDay? {
        return menuForTheDay
    }
    
    public func saveMenuForTheDay(menuForTheDay: MenuForTheDay?) {
       self.menuForTheDay = menuForTheDay
    }
    
    public func isMenuForTheDayExist() -> Bool {
        return self.menuForTheDay != nil
    }
}
