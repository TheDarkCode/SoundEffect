//
//  SoundEffect.swift
//  Sample class for quickly incorporating sound effects.
//
//  Created by Mark Hamilton on 2/16/16.
//  Copyright © 2016 dryverless. (http://www.dryverless.com)
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
// 

import UIKit
import AVFoundation

class SoundEffect {
    
    private var _name: String! = "sound"
    private var _ofType: String! = "wav"
    private var _isEnabled: Bool! = true
    private var _loop: Bool! = false
    private var _playing: Bool! = false
    private var _volume: Float! = 1.0
    private var _duration: NSTimeInterval! = nil
    private var _numberOfLoops: Int! = 0
    
    var sound: AVAudioPlayer!
    
    var name: String {
        get {
            return _name
        }
    }
    
    var ofType: String {
        get {
            return _ofType
        }
    }
    
    var isEnabled: Bool {
        get {
            if let enableBool: Bool = _isEnabled {
                return enableBool
            } else {
                return false
            }
        }
    }
    
    var loop: Bool {
        get {
            return _loop
        }
    }
    
    var playing: Bool {
        get {
            if let isPlaying: Bool = sound.playing {
                return isPlaying
            }
            else {
                return _playing
                // return false
            }
        }
    }
    
    var volume: Float {
        get {
            return _volume
        }
    }
    
    var duration: NSTimeInterval {
        get {
            if let soundDuration: NSTimeInterval = sound.duration {
                return soundDuration
            } else {
                return _duration
            }
        }
    }
    
    var numberOfLoops: Int {
        get {
            return _numberOfLoops
        }
    }
    
    init(fileName: String, fileType: String) {
        
        self._name = fileName
        self._ofType = fileType
        
    }
    
    init(fileName: String, fileType: String, enableSound: Bool?, enableLooping: Bool?) {
        
        self._name = fileName
        self._ofType = fileType
        
        if let setEnable = enableSound {
            self._isEnabled = setEnable
        }
        
        if let looping = enableLooping {
            self._loop = looping
        }
    
    }
    
    init(fileName: String, fileType: String, enableSound: Bool?, enableLooping: Bool?, loopTotal: Int?, defaultVolume: Float?) {
        
        self._name = fileName
        self._ofType = fileType
        
        if let setEnable = enableSound {
            self._isEnabled = setEnable
        }
        
        if let looping = enableLooping {
            self._loop = looping
        }
        
        if let loopCount = loopTotal {
            self._numberOfLoops = loopCount
        }
        
        if let setVolume = defaultVolume {
            self._volume = setVolume
        }
    }
    
    init(fileName: String, fileType: String, enableSound: Bool?, enableLooping: Bool?, defaultVolume: Float?) {
        
        self._name = fileName
        self._ofType = fileType
        
        if let setEnable = enableSound {
            self._isEnabled = setEnable
        }
        
        if let looping = enableLooping {
            self._loop = looping
        }
        
        if let setVolume = defaultVolume {
            self._volume = setVolume
        }
    }
    
    init() {
        // must have sound.wav file
    }
    
    func prepareToPlay() {
        
        let path = NSBundle.mainBundle().pathForResource(self.name, ofType: self.ofType)
        
        let soundUrl = NSURL(fileURLWithPath: path!)
        
        do {
            
            try sound = AVAudioPlayer(contentsOfURL: soundUrl)
            
            if loop {
                
                // infinite looping
                sound.numberOfLoops = -1
            }
            
            if volume != 1.0 {
                
                // set to non-default volume level
                sound.volume = volume
            }
            
            sound.prepareToPlay()
            
        } catch let err as NSError {
            
            print(err.debugDescription)
        }
    }
    
    func play() {
        
        if sound.playing {
            sound.stop()
        }
        
        if isEnabled == true {
            sound.play()
        }
    }
    
    func stop() {
        
        if sound.playing {
            sound.stop()
        }
    }
    
    func pause() {
        
        if sound.playing {
            sound.pause()
        }
    
    }
    
    func enable() {
        
        _isEnabled = true
    }
    
    func disable() {
        
        _isEnabled = false
    }
    
    func toggle() {
        
        _isEnabled = !_isEnabled
    }
    
    func setVolume(level: Float) {
        
        if sound.playing {
            sound.volume = level
        }
    }
    
}
