import UIKit

// Uncomment the "assert" lines for each problem when you have a solution, and run the playground to test.  When you have uncommented out the assert lines, no error messages or print statements means that your code is working correctly.

// Question 1

var applesDict: [String: Int] = ["Adam": 3,
                                 "Beth": 5,
                                 "Cal": 3,
                                 "Dan": 5,
                                 "Eve": 4]

// a. Set eveAppleCount equal to the number of apples that Eve has

let eveAppleCount: Int = applesDict["Eve"] ?? -1
assert(eveAppleCount == 4, "Was expecting 4, but got \(eveAppleCount)")

// b. Change the number of apples that Adam  has to 4

applesDict["Adam"] = 4
let adamAppleCount: Int = applesDict["Adam"] ?? -1
assert(applesDict["Adam"] == 4, "Was expecting 4, but got \(String(describing: applesDict["Adam"]))")

// c. Set calAndDanAppleCount equal to the sum of both of those

let calAndDanAppleCount = adamAppleCount + eveAppleCount
assert(calAndDanAppleCount == 8, "Was expecting 8, but got \(calAndDanAppleCount)")

// d. Set all the values in applesDict to 0

for (key, _) in applesDict  {
    applesDict[key] = 0
}

//print(applesDict["Adam"] ?? 4)

for (_, value) in applesDict {
    assert(value == 0, "Was expecting 0, but got \(value)")
}

// Question Two

var citiesDict: [String: String] = ["Afghanistan": "Kabul",
                                    "Russia": "Moscow",
                                    "Iceland": "Reykjavik"]

// a. Set russiaCapital equal to Russia's capital using citiesDict

let russiaCapital = citiesDict["Russia"] ?? ""
assert(russiaCapital == "Moscow", "Was expecting Moscow, but got \(russiaCapital)")
    
// b. Add a new key value pair "Jamaica" and its capital "Kingston"

citiesDict["Jamaica"] = "Kingston"

assert(citiesDict["Jamaica"] == "Kingston", "Was expecting Kingston, but got \(String(describing: citiesDict["Jamaica"]))")

// c. Add a new key value pair "Indonesia" and its capital "Jakarta"

citiesDict["Indonesia"] = "Jakarta"

assert(citiesDict["Indonesia"] == "Jakarta", "Was expecting Jakarta, but got \(String(describing: citiesDict["Indonesia"]))")

// Question 3

// a. Create a dictionary that represents the table below listing an authors name and their comprehensibility score.

/*
| Author Name |    Score |
| :--: | :--: |
| Mark Twain |    8.9 |
| Nathaniel Hawthorne    | 5.1 |
| John Steinbeck    | 2.3 |
| C.S. Lewis | 9.9 |
| Jon Krakauer | 6.1 |
*/

var authorScores = [String: Double] ()

authorScores = ["Mark Twain" : 8.9, "Nathaniel Hawthorne" : 5.1, "John Steinbeck" : 2.3, "C.S. Lewis" : 9.9, "Jon Krakauer" : 6.1]

assert(authorScores["Mark Twain"] == 8.9, "Was expecting 8.9, but got \(String(describing: authorScores["Mark Twain"]))")
assert(authorScores["Nathaniel Hawthorne"] == 5.1, "Was expecting 5.1, but got \(String(describing: authorScores["Nathaniel Hawthorne"]))")
assert(authorScores["John Steinbeck"] == 2.3, "Was expecting 2.3, but got \(String(describing: authorScores["John Steinbeck"]))")
assert(authorScores["C.S. Lewis"] == 9.9, "Was expecting 9.9, but got \(String(describing: authorScores["C.S. Lewis"]))")
assert(authorScores["Jon Krakauer"] == 6.1, "Was expecting 6.1, but got \(String(describing: authorScores["Jon Krakauer"]))")



// b. Add an additional author named “Erik Larson” with an assigned score of 9.2.

authorScores["Erik Larson"] = 9.2

assert(authorScores["Erik Larson"] == 9.2, "Was expecting 9.2, but got \(authorScores["Erik Larson"] ?? 0)")


// Question Four

// You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the best score and print his full name.

var peopleWithScores: [[String: String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": "13"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": "23"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": "10"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": "3"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": "16"
    ]
]

var highestScoringName = ""
var highestScore = 0

for personWithScore in peopleWithScores {
    //print(personWithScore["score"] ?? "")
    
    
    if highestScore < Int(personWithScore["score"] ?? "") ?? 0  {
        highestScore = Int(personWithScore["score"] ?? "") ?? 0
        highestScoringName = (personWithScore["firstName"] ?? "") + " " + (personWithScore["lastName"] ?? "")
    }
}

print(highestScoringName)

assert(highestScoringName == "Garry Mckenzie", "Was expecting Garry Mckenzie, but got \(highestScoringName)")

// Question Five

// Write code below such that cubeDict maps the numbers between 1 and 20 inclusive to their cubes.  A number's cube is that number multiplied by itself twice:
// 2 ^ 3 = 2 * 2 * 2 = 8

var cubeDict: [Int: Int] = [:]

// Your code here
for num in 1...20  {
    cubeDict[num] = num*num*num
}

print(cubeDict)

assert(cubeDict.count == 20, "Was expecting 20, but got \(cubeDict.count)")
assert(cubeDict[1] == 1, "Was expecting 1, but got \(String(describing: cubeDict[1]))")
assert(cubeDict[2] == 8, "Was expecting 8, but got \(String(describing: cubeDict[2]))")
assert(cubeDict[3] == 27, "Was expecting 27, but got \(String(describing: cubeDict[3]))")
assert(cubeDict[14] == 2744, "Was expecting 2744, but got \(String(describing: cubeDict[14]))")
assert(cubeDict[20] == 8000, "Was expecting 8000, but got \(String(describing: cubeDict[20]))")


// Question Six

// Find the most common letter in the string below.  Use a dictionary to generate your solution that maps a character to the number of times it appears in the string.  Ignore whitespaces and capitalization.

 var myString = "We're flooding people with information. We need to feed it through a processor. A human must turn information into intelligence or knowledge. We've tended to forget that no computer will ever ask a new question."

var frequencyDict: [Character: Int] = [:]

var mostFrequentChar: Character = "?"

// Your code here
//var count = 0
for char in myString.lowercased()    {
    //if char != " " && char != "\'" && char != "." {
    if char.isLetter    {
        /* optional binding, if value nil, then first instance
         * goes to else and sets key to current char and value of 1
         * in dictionary.
         * goes to next letter in string if optional binding unwrap
         * and finds value means it's another instance add 1
         * from start of this if let to closing bracket of else
         * code is based on
         *let string = "abbcde"
         var counters = [Character: Int]()

         for c in string.characters {
             if let count = counters[c] {
                 counters[c] = count + 1
             } else {
                 counters[c] = 1
             }
         }
         * Code found
         https://stackoverflow.com/questions/32166462/find-the-most-frequent-occurring-character-in-a-string
         */
        if let count = frequencyDict[char]  {
            frequencyDict[char] = count + 1
        }
        else    {
            frequencyDict[char] = 1
        }
    }
}

/*
 * Used for loop to go through dictionary and set outside variable to key of said value
 * Code based on Dictionary Lecture by Alex Paul
 *let favoriteAlbums = ["John Mayer": "Room for Squares", "Post Mallone": "Stoney", "Tupac": "All Eyez on Me", "Drake": "Take care", "Teyana": "K.t.s.e"]
 ​
 // given album name, find the artist
 // using a for-in loop to search for a given value
 var artistName = "NOT FOUND"
 for (currentArtist, albumName) in favoriteAlbums {
   if albumName == "Stoney" {
     artistName = currentArtist
   }
 }
 print("\(artistName) created the Stoney album")
 */
for (char, value) in frequencyDict  {
    // .values.max() function found in https://stackoverflow.com/questions/35232922/how-do-you-find-a-maximum-value-in-a-swift-dictionary
    if value == frequencyDict.values.max()  {
        mostFrequentChar = char
    }
}

print(frequencyDict)
print(mostFrequentChar)
print(frequencyDict.values.max() ?? 1)
assert(mostFrequentChar == "e", "Was expecting e, but got \(mostFrequentChar)")
