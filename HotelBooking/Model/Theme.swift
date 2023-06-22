//
//  Theme.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 22/6/2023.
//

import Foundation

struct Theme : Identifiable {
    var id : UUID = UUID()
    var themeName : String
    var themeImageNmae : String
}


let themeLists : [Theme] = [
    Theme(themeName: "Perfect Date Night", themeImageNmae: "theme1"),
    Theme(themeName: "Friends & Family", themeImageNmae: "theme2"),
    Theme(themeName: "Friend’s Night Out", themeImageNmae: "theme3"),
    Theme(themeName: "Sole Holiday", themeImageNmae: "theme4"),
    Theme(themeName: "Work & Life", themeImageNmae: "theme5")
]
