//
//  Explore.swift
//  Pods
//
//  Created by Daniel Noskin on 4/26/17.
//
//

import Foundation

public func exploreAppsDownloaded() -> [String] {    
    var verifiedApps: [String] = []
    
    if let plist = Plist(name: "Info") {
        let dict = plist.getValuesInPlistFile()!
        
        if let apps = dict["LSApplicationQueriesSchemes"] as? [String] {
            for app in apps {
                if UIApplication.shared.canOpenURL(URL(string: "\(app)://")!) {
                    verifiedApps.append(app)
                }
            }
        } else {
            print("No strings found in LSApplicationQueriesSchemes")
        }
    } else {
        print("Unable to get Plist")
    }
    
    return verifiedApps
}

struct Plist {
    enum PlistError: Error {
        case FileNotWritten
        case FileDoesNotExist
    }
    
    let name: String
    
    var sourcePath: String? {
        guard let path = Bundle.main.path(forResource: name, ofType: "plist") else { return .none }
        return path
    }
    
    init?(name: String) {
        self.name = name
        
        let fileManager = FileManager.default
        
        guard let source = sourcePath else { return nil }
        guard fileManager.fileExists(atPath: source) else { return nil }
    }
    
    func getValuesInPlistFile() -> NSDictionary? {
        let fileManager = FileManager.default
        if fileManager.fileExists(atPath: sourcePath!) {
            guard let dict = NSDictionary(contentsOfFile: sourcePath!) else { return .none }
            return dict
        } else {
            return .none
        }
    }
}
