# SwiftExtensions

[![mit licensed](https://img.shields.io/badge/License-MIT-d94c32.svg)](./license)
[![swiftextensions](https://img.shields.io/badge/Swift-SwiftExtensions-3B5998.svg)](https://github.com/atsushi130/SwiftExtensions.git)
![swift](https://img.shields.io/badge/Swift-4-ffac45.svg)
![Carthage](https://img.shields.io/badge/Carthage-v1.0.3-7ec9d9.svg)

## Installation
**Install via [Carthage](https://github.com/Carthage/Carthage)**
```
github "atsushi130/SwiftExtensions"
```

## Requirements
- Swift 4 or later

## Extensions and Protocols Usage
- NSObject
- Int
- Double
- CGFloat
- String
- Bool
- Date
- DateFormetter
- CGColor
- UIColor
- UITextView
- UICollectionView
- UITableView
- UIView
- UUID
- [NibDesignable](#nibdesignable)
- NibInstantiatable

### NibDesignable
Setup the File’s Owner with the custom class you created.
![image](https://user-images.githubusercontent.com/11363154/34498505-40ecd376-f045-11e7-9f54-6173a39248c3.png)

conform to NibDesignable. Please call `configureNib` method on `init(frame:)` and `init?(decoder:)`.
```swift
@IBDesignable
final class ReactiveView: UIView, NibDesignable {

    init(frame: CGRect) {
        super.init(frame: frame)
        self.configureNib()
    }

    required init?(decoder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configureNib()
    }
}
```

Last step, set its class as custom view (ex: ReactiveView) in storyboard.
![image](https://user-images.githubusercontent.com/11363154/34498849-bfe3d174-f046-11e7-94b8-b7184dc2fe69.png)

## License
SwiftExtensions is available under the MIT license. See the [LICENSE file](https://github.com/atsushi130/SwiftExtensions/blob/master/license).
