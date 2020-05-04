//
//  MissionDetailInterface.swift
//  MasterDetailLayout
//
//  Created by Eric Jeffers on 5/1/20.
//  Copyright © 2020 Eric Jeffers. All rights reserved.
//

import Foundation
import SwiftUI


@objc
class MissionDetailInterface: NSObject {
 
    @objc func makeMissionDetailUI(objCmission: GCMission) -> UIViewController{
        let missionModel = MissionViewModel(missionId: objCmission.missionId,
                                       name: objCmission.missionName,
                                       description: objCmission.missionDescription,
                                       points: objCmission.missionDiplayPointsString,
                                       image: Image(uiImage: GCMission.image(fromHexString: objCmission.missionDisplayHexColorString)))
        
        let missionDetail = MissionDetail(mission: missionModel)
        
        return UIHostingController(rootView: missionDetail)
    }
}
