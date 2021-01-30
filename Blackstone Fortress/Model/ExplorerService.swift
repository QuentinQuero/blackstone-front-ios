//
//  ExplorerService.swift
//  Blackstone Fortress
//
//  Created by Carl on 30/01/2021.
//

import Foundation

class ExplorerService {
        
    static let shared = ExplorerService()
    private init() {}

    private(set) var explorers = [StockExplorer]()

    func add(explorer: StockExplorer) {
        explorers.append(explorer)
    }
}
