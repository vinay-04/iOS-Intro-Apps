import UIKit


struct Note: Codable {
    var msg: String
    var date: Date
}

let note1 = Note(msg: "Get groceries", date: Date())
let note2 = Note(msg: "Go to the gym", date: Date())


let pListEncoder = PropertyListEncoder()
let pListDecoder = PropertyListDecoder()


let encodedData = try pListEncoder.encode([note1, note2])
print(encodedData)


let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

let archiveURL = documentDirectory.appendingPathComponent("notes").appendingPathExtension("plist")
try encodedData.write(to: archiveURL)
//print(archiveURL)


if let retrievedData = try? Data(contentsOf: archiveURL) {
    let decodedNotes: [Note] = try pListDecoder.decode([Note].self, from: retrievedData)
    print(decodedNotes)
}
