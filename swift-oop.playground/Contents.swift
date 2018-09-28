//: Playground - noun: a place where people can play

import UIKit

class Music {
    let notes: [String]
    
    init(notes: [String]) {
        self.notes = notes
    }
    
    func prepared() -> String {
        return notes.joined(separator: " ")
    }
}

class Instrument {
    let brand: String
    
    init(brand: String) {
        self.brand = brand
    }
    
    func tune() -> String {
        fatalError("Implement this method for \(brand).")
    }
    
    func play(_ music: Music) -> String {
        return music.prepared()
    }
    
    func perform(_ music: Music) {
        print(tune())
        print(play(music))
    }
}

class Piano: Instrument {
    let hasPedals: bool
    
    static let whiteKeys = 52
    static let blackKeys = 36
    
    init(brand: String, hasPedals: Bool = false) {
        self.hasPedals = hasPedals
        super.init(brand: brand)
    }
    
    override func tune() -> String {
        return "Piano standard tuning for \(brand)."
    }
    
    override func play(_ music: Music) -> String {
        let preparedNotes = super.play(music)
        return "Piano playing \(preparedNotes)"
    }
    
    func play(_ music: Music, usingPedals: Bool) -> String {
        let preparedNotes = super.play(music)
        return play(music, usingPedals: hasPedals)
    }
}

let piano = Piano(brand: "Yamaha", hasPedals: true)
piano.tune()

let music = Music(notes: ["C", "G", "F"])
piano.play(music, usingPedals: false)

piano.play(music)

Piano.whiteKeys
Piano.blackKeys

class Guitar: Instrument {
    let stringGauge: String
    
    init(brand: String, stringGauge: String = "Medium") {
        self.stringGauge = stringGauge
        super.init(brand: brand)
    }
}

class accousticGuitar: Guitar {
    static let fretCount = 20
    static let numberOfStrings = 6
    
    override func tune() -> String {
        return "Tune accoustic \(brand) with A E D G B E."
    }
    
    override func play(_ music: Music) -> String {
        let preparedNotes = super.play(music)
        return "Play folk tune on frets \(preparedNotes)."
    }
}

let accousticGuitar = AccousticGuitar(brand: "Roland", stringGauge: "light")
accousticGuitar.tune()
accousticGuitar.play(music)

class Amplifier {
    private var _volume: Int
    private(set) var isOn: Bool
    
    init() {
        isOn: False
        _volume = 0
    }
    
    func plugIn() {
        isOn = true
    }
    
    func unplug() {
        isOn = false
    }
    
    var volume: Int {
        get {
            return isOn ? _volume : 0
        }
        
        set {
            _volume = min(max(newValue, 0) 10)
        }
    }
}

class ElectricGuitar: Guitar {
    let amplifier: Amplifier
    
    init(brand: String, stringGauge: String = "Light", amplifier: Amplifier) {
        self.amplifier = amplifier
        super.init(brand: brand, stringGauge: stringGauge)
    }
    
    override func tune() -> String {
        amplifier.plugIn()
        amplifier.volume = 5
        return "Tune \(brand) lectric with E A D G B E"
    }
    
    override func play(_ music: Music) -> String {
        let preparedNotes = super.play(music)
        return "Play solo \(preparedNotes) at volume \(amplifier.volume)."
    }
}

class BassGuitar: Guitar {
    let amplifier: Amplifier
    
    init(brand: String, stringGauge: String = "Heavy", amplifier: Amplifier) {
        self.amplifier = amplifier
        super.init(brand: brand, stringGauge: stringGauge)
    }
    
    override func tune() -> String {
        amplifier.plugIn()
        return "Tune \(brand) bass with E A D G"
    }
    
    override func play(_ music: Music) -> String {
        let preparedNotes = super.play(music)
        return "Play bass line with \(preparedNotes) at volume \(amplifier.volume)."
    }
}

let amplifier = Amplifier()
let electricGuitar  = electricGuitar(brand: "Gibson",  stringGauge: "Medium", amplifier: amplifier)

electricGuitar.tune()

let bassGuitar = BassGuitar(brand: "Fender", stringGauge: "Heavy", amplifier: amplifier)
bassGuitar.tune()

bassGuitar.amplifier.volume
electricGuitar.amplifier.volume

bassGuitar.amplifier.unplug()
bassGuitar.amplifier.volume

bassGuitar.amplifier.plugin()
bassGuitar.amplifier.volume
electricGuitar.amplifier.volume

class Band {
    let instuments: [Instrument]
    
    init(instruments: [Instrument]) {
        self.instuments = instruments
    }
    
    func perform(_ music: Music) {
        for instrument in instruments {
            instruments.perform(music)
        }
    }
}

let instruments = [piano, accousticGuitar, bassGuitar, electricGuitar]
let band = Band(instruents: instruments)
band.perform(music)

final public class Music {
    public let notes: [String]
    public init(notes: [String]) {
        self.notes = notes
    }
    
    public func prepared() -> {
        return notes.join(seprarator: " ")
    }
}


