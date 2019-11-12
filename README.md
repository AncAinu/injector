# SimpleInjector

[![CI Status](https://img.shields.io/travis/AncAinu/SimpleInjector.svg?style=flat)](https://travis-ci.org/AncAinu/SimpleInjector)
[![Version](https://img.shields.io/cocoapods/v/SimpleInjector.svg?style=flat)](https://cocoapods.org/pods/SimpleInjector)
[![License](https://img.shields.io/cocoapods/l/SimpleInjector.svg?style=flat)](https://cocoapods.org/pods/SimpleInjector)
[![Platform](https://img.shields.io/cocoapods/p/SimpleInjector.svg?style=flat)](https://cocoapods.org/pods/SimpleInjector)

## Requirements

iOS 8.0+

## Installation

SimpleInjector is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SimpleInjector'
```

## Usage

```
protocol FooService {}
class FooServiceImplementation: RandomService {}

class Bar {
    let fooService: FooService
    
    init(injector: Injector) {
        fooService = injector.dependency()
    }
}

let fooService = FooServiceImplementation()
let injector = Injector([fooService])
let bar = Bar(injector: injector)
```

## Author

Tancrède Chazallet, tancredechazallet@gmail.com

## License

SimpleInjector is available under the MIT license. See the LICENSE file for more info.
