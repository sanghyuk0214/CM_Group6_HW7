//
//  Structure.swift
//  CMHW7
//
//  Created by snlcom on 2023/05/09.
//

import Foundation

struct Structure: Decodable, Identifiable, Hashable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let latitude: Double
    let longitude: Double
    let picture: String
    
    static let exampleStructure = Structure(id: 1, name: "Eiffel Tower", country: "France", description: "The Eiffel Tower is an iconic landmark located in Paris, France. It was built in 1889 as the entrance arch to the 1889 World's Fair and has since become one of the most recognizable structures in the world. The tower stands at a height of 324 meters (1,063 feet) and was the tallest man-made structure in the world when it was built. It is made of wrought iron and consists of four legs that curve inward at the base and taper to a point at the top. The tower has three levels that are accessible to visitors, each offering stunning views of the city. The Eiffel Tower was designed by Gustave Eiffel, a French engineer, and was initially met with controversy and criticism from some Parisians who felt it was an eyesore. However, it has since become a symbol of Paris and French culture, and is visited by millions of people every year. In addition to its beauty and historical significance, the Eiffel Tower also serves practical purposes. It was originally built as a telecommunications tower and still houses radio and television transmitters today. Overall, the Eiffel Tower is a remarkable feat of engineering and design that has captured the hearts and imaginations of people around the world. It stands as a testament to the ingenuity and creativity of humanity and remains a must-see destination for anyone visiting Paris.", latitude: 48.51301, longitude: 2.17401, picture: "eiffel tower")
}
