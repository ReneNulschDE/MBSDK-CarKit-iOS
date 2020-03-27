//
//  Copyright © 2020 MBition GmbH. All rights reserved.
//

import Foundation

public enum ConsumptionUnit: String, Codable, CaseIterable {
    case litersPer100Km = "l/100km"
    case kilometersPerLiter = "km/l"
    case milesPerGallonUK = "mpg (UK)"
    case milesPerGallonUS = "mpg (US)"
}
