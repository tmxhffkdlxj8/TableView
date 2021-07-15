//
//  AlarmsViewController.swift
//  Alarm's illnara
//
//  Created by USG공유대학 on 2021/07/15.
//

import Foundation
import UIKit


struct AlarmInformation {
    var alarmName: String
    var alarmTime: Int
    var alarmDayOfTheWeek: String
    var alarmClearMission: String
    var wakeUpConfirmCount: Int
}
class AlarmsViewController : UITableViewController {
    
    
    var alarmdata:[AlarmInformation] = []
    
    override func viewDidLoad() {
        let alarmdata1 = AlarmInformation(alarmName: "알람1", alarmTime: 9, alarmDayOfTheWeek: "월, 화", alarmClearMission: "미션1", wakeUpConfirmCount:3 )
        let alarmdata2 = AlarmInformation(alarmName: "알람2", alarmTime: 8, alarmDayOfTheWeek: "수, 목", alarmClearMission: "미션2", wakeUpConfirmCount:4 )
        
        alarmdata.append(alarmdata1)
        alarmdata.append(alarmdata2)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alarmdata.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        let alarm = alarmdata[indexPath.row]
        
        cell.textLabel?.text = alarm.alarmName
        
        return cell;
      
    }
    
}
