//
//  DataStore.swift
//  SpringAnimation 3.1
//
//  Created by user on 18.03.2023.
//

import Foundation
import SpringAnimation

class DataStore {
    static  let shared = DataStore()
    
    let animation = AnimationPreset.allCases
    let curve = AnimationCurve.allCases
}
