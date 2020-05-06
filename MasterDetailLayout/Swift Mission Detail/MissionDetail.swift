//
//  MissionDetail.swift
//  MasterDetailLayout
//
//  Created by Eric Jeffers on 5/1/20.
//  Copyright © 2020 Eric Jeffers. All rights reserved.
//


import SwiftUI


struct MissionDetail: View {
        
    let mission : MissionViewModel
    
    var body: some View {
        
        let spacing = CGFloat(10)
        let standardInsets = EdgeInsets(top: spacing/2, leading: spacing, bottom: spacing/2, trailing: spacing)
        
        let titlePointsHStack = HStack(alignment: .center) {
            Text(mission.name).frame(minWidth: 0,
                                     minHeight: 0,
                                     alignment:.leading)
            Spacer()
            Text(mission.points).frame(minWidth: 0,
                                       minHeight: 0,
                                       alignment: .trailing)
            }
        
        let detailHStack = HStack(alignment: .center, spacing: spacing)  {
            mission.image
            Spacer()
            VStack(alignment: .leading) {
                titlePointsHStack.frame(minWidth: 0,
                                        maxWidth: .infinity,
                                        minHeight: 0,
                                        maxHeight: .none,
                                        alignment: .center)
                Spacer().frame(width: 0, height: spacing, alignment: .top)
                Text(mission.description)
                Spacer().frame(width: 0, height: 0, alignment: .top)
            }
        }
            
        let snapButton = Button(action: {
            print("Evidence Snapped!")
            }) {
                Text("Snap Evidence")
                    .padding()
                    .frame(minWidth: 0,
                           maxWidth: .infinity,
                           minHeight: 0,
                           maxHeight: .none,
                           alignment: .center)
                    .background(Color.purple)
                    .foregroundColor(Color.white)
                    .cornerRadius(30)
        }
        
       return VStack (alignment: .leading, spacing: spacing) {
                detailHStack.padding(standardInsets)
                snapButton
                    .padding(standardInsets)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            }
    }
        
}


struct MissionDetail_Previews: PreviewProvider {
    static var previews: some View {
        
        MissionDetail(mission: MissionViewModel(missionId: "mission22",
                                                name: "Cat Party",
                                                description: "This is an actual sentenece as detail as sample text so that the canvas will show usable Detail in the canvas. \nNewline \nMore Detail Text",
                                                points: "3 pts",
                                                image: Image(uiImage: GCMission.image(fromHexString: "#0000FF"))))
    }
}
