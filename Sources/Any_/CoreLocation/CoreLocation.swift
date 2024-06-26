///
/// Copyright © 2020-2024 El Machine 🤖
/// https://el-machine.com/
///
/// Licensed under the Apache License, Version 2.0 (the "License");
/// you may not use this file except in compliance with the License.
/// You may obtain a copy of the License at
///
/// 1) LICENSE file
/// 2) https://apache.org/licenses/LICENSE-2.0
///
/// Unless required by applicable law or agreed to in writing, software
/// distributed under the License is distributed on an "AS IS" BASIS,
/// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
/// See the License for the specific language governing permissions and
/// limitations under the License.
///
/// Created by Alex Kozin
/// 2020 El Machine

#if canImport(CoreLocation)
import CoreLocation.CLLocation

/// Random Accuracy
extension CLLocationAccuracy: Any_ {

    public
    static
    var any: Self {
        [
            kCLLocationAccuracyBestForNavigation,
            kCLLocationAccuracyBest,
            kCLLocationAccuracyNearestTenMeters,
            kCLLocationAccuracyHundredMeters,
            kCLLocationAccuracyKilometer,
            kCLLocationAccuracyThreeKilometers,
        ].randomElement()!

    }

}

/// Random Accuracy Coordinate2D
extension CLLocationCoordinate2D: Any_ {

    public
    static
    var any: Self {
        Self(latitude: .any(in: -90...90), longitude: .any(in: -180...180))
    }

}

/// Random Accuracy Location
extension CLLocation: Any_ {

    public
    static
    var any: Self {
        Self.init(coordinate: .any,
                  altitude: .any,
                  horizontalAccuracy: .any,
                  verticalAccuracy: .any,
                  timestamp: .any)
    }

}

#endif
