# SoundEffect
Sample class for quickly incorporating sound effects in iOS, OS X and tvOS apps.

##Usage

```swift
// Initialize Options
let soundEffect = SoundEffect("sound", fileType: "mp3", enableSound: true, enableLooping: true, defaultVolume: 0.5)

let soundEffect2 = SoundEffect("sound", fileType: "mp3", enableSound: true, enableLooping: true, loopTotal: 20, defaultVolume: 1.0)

let soundEffect3 = SoundEffect("sound", fileType: "mp3", enableSound: true, enableLooping: false)

let soundEffect4 = SoundEffect("sound", fileType: "mp3")

// Prepare to Play
soundEffect.prepareToPlay()

// Start Playing
soundEffect.play()

// Pause Playing
soundEffect.pause()

// Stop Playing
soundEffect.stop()

// Toggle Enabled
soundEffect.toggle()

// Disable Sound
soundEffect.disable()

// Enable Sound
soundEffect.enable()

// Set Volume
soundEffect.setVolume(1.0) // Float 0.0-1.0

```

##CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 0.39.0+ is required to build SoundEffect 0.0.1+.

To integrate SoundEffect into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

pod 'SoundEffect', '~> 0.0.1'
```

Then, run the following command:

```bash
$ pod install
```

##Related Projects:

###Example Swift Apps by Mark Hamilton, Dryverless
Collection of example applications written in Swift / Objective-C for iOS 9.x (developed under 9.2.1 SDK - will be migrated to 9.3 when released)
######https://github.com/TheDarkCode/Example-Swift-Apps

##Support:

#####Send any questions or requests to: support@dryverless.com

## Contributing

  - 1) Fork this repository!
  - 2) Create your feature branch: ```git checkout -b Your-New-Feature```
  - 3) Commit your changes: ```git commit -am 'Adding some super awesome update'```
  - 4) Push to the branch: ```git push origin Your-New-Feature```
  - 5) Submit a pull request!

## License
Copyright (c) 2016 Mark Hamilton / dryverless (http://www.dryverless.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
