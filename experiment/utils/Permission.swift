//
//  Permissions.swift
//  experiment
//
//  Created by Bhoma Ram on 12/01/25.
//

import Foundation
import AVFoundation

class Permission {
    private static let instance: Permission = Permission()
    
    private init() {
        
    }
    
    public static func shared() -> Permission {
        return Permission.instance
    }
    
    public func checkCameraPermission(completion: @escaping (_ granted: PermissionStatus)->Void) {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            completion(.granted)
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video) { granted in
                DispatchQueue.main.async {
                    completion(granted ? .granted : .restricted)
                }
            }
        case .denied, .restricted:
            completion(.restricted)
        @unknown default:
            completion(.restricted)
        }
    }
    
}
