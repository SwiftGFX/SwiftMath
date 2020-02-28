//
//  Matrix3x3+Codable.swift
//  org.SwiftGFX.SwiftMath
//
//  Created by Eugene Bokhan on 28.02.20.
//
//

import Foundation
import simd

extension Matrix3x3f: Codable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try self.init(container.decode(float3x3.self,
                                       forKey: .float3x3))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(float3x3(self),
                             forKey: .float3x3)
    }

    private enum CodingKeys: String, CodingKey {
        case float3x3
    }
}
