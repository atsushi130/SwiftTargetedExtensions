<p align="center">
    <h1 align="center">SwiftExtensions</h1>
</p1>

<p align="center">
    <a href="https://github.com/atsushi130/SwiftExtensions.git"><img src="https://img.shields.io/badge/Swift-SwiftExtensions-3B5998.svg"></a> 
    <img src="https://img.shields.io/badge/Swift-4.2-ffac45.svg">
    <a href="./license"><img src="https://img.shields.io/badge/License-MIT-d94c32.svg"></a>
    <img src="https://img.shields.io/badge/Carthage-v1.0.3-7ec9d9.svg">
</p>

## Installation
**Install via [Carthage](https://github.com/Carthage/Carthage)**
```
github "atsushi130/SwiftExtensions"
```

## Requirements
- Swift 4 or later

## Extensions and Protocols Usage
- [NSObject](#nsobject)
- [Int](#int)
- [Double](#double)
- [CGFloat](#cgfloat)
- [String](#string)
- [Bool](#bool)
- [Date](#date)
- [DateFormatter](#dateformatter)
- [JSONEncoder](#jsonencoder)
- [JSONDecoder](#jsondecoder)
- [JSONCoder](#jsoncoder)
- [CGColor](#cgcolor)
- [UIColor](#uicolor)
- [UITextView](#uitextview)
- [UICollectionView](#uicollectionview)
- UITableView
- [UIView](#uiview)
- [UUID](#uuid)
- [NibDesignable](#nibdesignable)
- [NibInstantiatable](#nibinstantiatable)

### NSObject
Get class name.
```swift
let view = CustomView()
print(view.ex.className)
```

### Int
Half
```swift
let number = 3
print(number.ex.half) // 1.5
```

### Double
Half
```swift
let number = 3.0
print(number.ex.half) 1.5
```

Floor
```swift
let number = 1.4
print(number.ex.floor) // 1.0
```

Ceil
```swift
let number = 1.4
print(number.ex.ceil) // 2.0
```

Round
```swift
let number = 1.5
print(number.ex.round) // 2.0
```

CGFloat
```swift
let number = 1.5.ex.cgFloat
```

### CGFloat
The same as String extensions.

### String
attributed
```swift
"string".ex.attributed
```

toDate
```swift
"2018/01/01 00:00:00".ex.toDate()
```

Regular expression
```swift
password.ex.isMatch(pattern: "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}$")
```

### Bool
toInt
```swift
print(true.ex.toInt) // 1
```

### Date
toString
```swift
let dateString = Date().ex.toString()
```

### DateFormatter
```swift
let formatter = DateFormatter.ex.from(locale: Local.current, format: "yyyy/MM/dd HH:mm:ss")
```

### JSONEncoder
```swift
let encoder = JSONEncoder.snakeCaseEncoder
```

### JSONDecoder
```swift
let decoder = JSONDecoder.snakeCaseDecoder
```

### JSONCoder
```swift
let encoder = JSONCoder.snakeCaseEncoder
let decoder = JSONCoder.snakeCaseDecoder
```

### CGColor
to UIColor
```swift
view.backgroundColor = cgColor.ex.uiColor
```

### UIColor
```swift
let color = UIColor.ex.hex(hex: 0xAABBCC)
let color = UIColor.ex.hex(hexString: "ffffff")
```

### UITextView
```swift
let textView = UITextView()
textview.ex.placeholder = "Input message"
```
<img width="250" alt="uitextview placeholder" src="https://user-images.githubusercontent.com/11363154/34513458-b9d00aa4-f0ab-11e7-9986-1d87ad01bb42.png">

### UICollectionView
Custom cell registration.
```swift
@IBOutlet private weak var collectionView: UICollectionView! {
    didSet {
        self.layout = UICollectionViewFlowLayout()
        self.collectionView.collectionViewLayout = self.layout
        self.collectionView.ex.register(cellType: CustomCell.self)
        self.collectionView.ex.register(reusableViewType: CustomReusableView.self)
        self.collectionView.dataSource = self
        self.collectionView.delegate   = self
    }
}
```

Other example.
```swift
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    return collectionView.ex.dequeueReusableCell(with: CustomCell.self, for: indexPath)
}
```

### UIView
safeAreaInsets
```swift
// ios10.x or less: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
let safeAreaInsets = self.view.ex.safeAreaInsets
```

```swift
fillSuperview
let view = UIView()
superView.addSubView(view)
view.ex.fillSuperview()

```

### UUID
```swift
UUID.ex.generate()
```

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

### NibInstantiatable
```swift
final class CustomView: NibInstantiatable { ... }
let customView = CustomView.instantiate() // create instance from CustomView.Xib
```

## License
SwiftExtensions is available under the MIT license. See the [LICENSE file](https://github.com/atsushi130/SwiftExtensions/blob/master/license).
