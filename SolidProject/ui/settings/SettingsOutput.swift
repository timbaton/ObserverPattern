//
//  SettingsOutput.swift
//  SolidProject
//
//  Created by Тимур Бадретдинов on 24/02/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import Foundation

protocol SettingsOutput {
    
    
    /// поменять цвет приложения
    ///
    /// - Parameter index: индекс состояния переключателя
    func switchColor(index: Int)
}
