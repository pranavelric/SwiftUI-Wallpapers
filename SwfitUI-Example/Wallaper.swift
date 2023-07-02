//
//  Wallaper.swift
//  SwfitUI-Example
//
//  Created by Pranav Choudhary on 02/07/23.
//

import Foundation

struct Wallpaper:Identifiable{
    var id = UUID()
    var imageName:String
    var title: String
    var uploadDate: String
}

struct WallpaperData {
    static let topSix = [
        Wallpaper(imageName: "1", title: "Venom", uploadDate: "Jul 2, 2023"),
        Wallpaper(imageName: "2", title: "Zoro", uploadDate: "Jul 3, 2023"),
        Wallpaper(imageName: "3", title: "Luffy", uploadDate: "Jun 22, 2023"),
        Wallpaper(imageName: "4", title: "Law", uploadDate: "Jan 25, 2023"),
        Wallpaper(imageName: "5", title: "Haikyuu", uploadDate: "Aug 2, 2023"),
        Wallpaper(imageName: "6", title: "Your name", uploadDate: "Mar 15, 2023"),
        
    ]
}
