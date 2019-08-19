//
//  MenuOption.swift
//  SlideMenu
//
//  Created by sinbad on 8/19/19.
//  Copyright © 2019 sinbad. All rights reserved.
//

import UIKit

enum MenuOption : Int, CustomStringConvertible {
    case Profile
    case Inbox
    case Notifications
    case Settings
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .Inbox : return "Inbox"
        case .Notifications: return "Notification"
        case .Settings : return "Settings"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(named: "ic_person_outline_white_2x") ?? UIImage()
        case .Inbox : return UIImage(named: "ic_mail_outline_white_2x") ?? UIImage()
        case .Notifications: return UIImage(named: "baseline_clear_white_36pt_3x") ?? UIImage()
        case .Settings : return UIImage(named: "baseline_settings_white_24dp") ?? UIImage()
        }
    }
}
