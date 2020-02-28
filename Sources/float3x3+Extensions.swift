//
//  float3x3+Extensions.swift
//  org.SwiftGFX.SwiftMath
//
//  Created by Eugene Bokhan on 28.02.20.
//
//

import Foundation
import simd

extension float3x3: Codable {
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        let c1 = try values.decode(SIMD3<Float>.self, forKey: .column1)
        let c2 = try values.decode(SIMD3<Float>.self, forKey: .column2)
        let c3 = try values.decode(SIMD3<Float>.self, forKey: .column3)

        self.init(c1, c2, c3)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.columns.0, forKey: .column1)
        try container.encode(self.columns.1, forKey: .column2)
        try container.encode(self.columns.2, forKey: .column3)
    }

    private enum CodingKeys: String, CodingKey {
        case column1, column2, column3
    }
}
