//
//  ListSection.swift
//  MultipleSectionWithComposionalLayout
//
//  Created by Admin on 26/08/22.
//

import Foundation


enum ListSection {
    
    case stories([ListItem])
    case popular([ListItem])
    case comingSoon([ListItem])
    
    var items: [ListItem] {
        switch self {
            
        case .stories(let item):
            return item
        case .popular(let item):
            return item
        case .comingSoon(let item):
            return item
        }
    }
    
    var count: Int {
        return self.items.count
    }
    
    var title: String {
        switch self {
        case .stories:
            return "Stories"
        case .popular:
            return "Popular"
        case .comingSoon:
            return "Coming Soon"
        }
    }
    
}
