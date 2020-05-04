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
        
        VStack (alignment: .leading) {
            HStack {
                mission.image
                Spacer()
                VStack(alignment: .center) {
                    
                    HStack(alignment: .center) {
                        Text(mission.name).frame(minWidth: 0,
                                                 minHeight: 0,
                                                 alignment:.leading)
                        Spacer()
                        Text(mission.points).frame(minWidth: 0,
                                                   minHeight: 0,
                                                   alignment: .trailing)
                    }.frame(minWidth: 0,
                            maxWidth: .infinity,
                            minHeight: 0,
                            maxHeight: .none,
                            alignment: .center)
                    
                    Text(mission.description)
                    Spacer().frame(width: 0, height: 0, alignment: .top)
                }
            }
            Button(action: {
                print("Evidence Snapped!")
                }) {
                    Text("Snap Evidence").padding()
                        .frame(minWidth: 0,
                               maxWidth: .infinity,
                               minHeight: 0,
                               maxHeight: .none,
                               alignment: .center)
                        .background(Color.yellow)
                        .cornerRadius(30)
            }
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            }
    }
}


struct MissionDetail_Previews: PreviewProvider {
    static var previews: some View {
        
        MissionDetail(mission: MissionViewModel(missionId: "mission22",
                                                name: "Cat Party",
                                                description: "test descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptionn descriptiondescriptiondescription \n descriptiondescriptiondescriptiondescription\n   description description description test tes this is more of me writing a desc that is a test",
                                                points: "3 pts",
                                                image: Image(uiImage: GCMission.image(fromHexString: "#0000FF"))))
    }
}
