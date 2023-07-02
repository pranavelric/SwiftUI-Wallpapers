//
//  ContentView.swift
//  SwfitUI-Example
//
//  Created by Pranav Choudhary on 02/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedWallpaper: Wallpaper? = nil
    @State private var showDetailView: Bool? = false
    var wallpapers:[Wallpaper] = WallpaperData.topSix

    func handleTap(_ wallpaper: Wallpaper){
        self.selectedWallpaper = wallpaper
        self.showDetailView = true
        
    }
    var body: some View {
        
        NavigationView{
            List(wallpapers) { wallpaper in
                HStack(){
                    Image(wallpaper.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 90)
                        .cornerRadius(8)
                    
                    Spacer().frame(width: 16)
                    
                    VStack(alignment: .leading) {
                        Text(wallpaper.title)
                            .fontWeight(.bold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.75)
                        
                        
                        Spacer().frame(height: 5)
                        Text(wallpaper.uploadDate)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        
                    }
                }.onTapGesture {
                    self.handleTap(wallpaper)
                }
                
                
            }.sheet(item: $selectedWallpaper) { wallpaper in
                FullScreenView(wallpaper: wallpaper)
            }.navigationTitle("Wallpapers")
              
        }
        }
}
struct FullScreenView:View{
    var wallpaper: Wallpaper
    var body: some View{
        VStack {
                    Image(wallpaper.imageName)
                        .resizable()
                        .scaledToFit()
                    
                    Text(wallpaper.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                    
                    Text(wallpaper.uploadDate)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(wallpapers: WallpaperData.topSix)
    }
}
