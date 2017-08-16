//
//  GameProtocol.swift
//  class_protocol
//

import Foundation

protocol GameProtocol {
    var gamePoint:Int { get }
    func hit()
    func miss()
}
