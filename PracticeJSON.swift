//
//  PracticeJSON.swift
//  CodablePracticeiOS18
//
//  Created by Spencer Curtis on 8/6/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import Foundation

let basicPerson = """
{
  "gender": "female",
  "name": {
    "title": "Miss",
    "first": "Aria",
    "last": "Martin"
  },
  "location": {
    "street": {
      "number": 441,
      "name": "Western Hills Drive"
    },
    "city": "Rotorua",
    "state": "Tasman",
    "country": "New Zealand",
    "postcode": 15579,
    "coordinates": {
      "latitude": "63.2515",
      "longitude": "2.9888"
    },
    "timezone": {
      "offset": "+2:00",
      "description": "Kaliningrad, South Africa"
    }
  },
  "email": "aria.martin@example.com",
  "login": {
    "uuid": "18480fbc-0db7-4436-9a82-9a7aff0b6dd2",
    "username": "bigmouse700",
    "password": "lopez",
    "salt": "1TBrlzLN",
    "md5": "36a37bcccd0f855cd6a551f4712bda58",
    "sha1": "a177beddd7ad0c797e7b60d48b265e79a9c775a1",
    "sha256": "de0d5953936b7a10b64431b353effe79182eeba7c50f9a65269e9529d72aad00"
  },
  "dob": {
    "date": "1971-06-03T13:37:00.261Z",
    "age": 49
  },
  "registered": {
    "date": "2013-07-04T06:00:05.719Z",
    "age": 7
  },
  "phone": "(907)-488-1957",
  "cell": "(166)-030-8883",
  "id": {
    "name": "",
    "value": null
  },
  "picture": {
    "large": "https://randomuser.me/api/portraits/women/93.jpg",
    "medium": "https://randomuser.me/api/portraits/med/women/93.jpg",
    "thumbnail": "https://randomuser.me/api/portraits/thumb/women/93.jpg"
  },
  "nat": "NZ"
}
""".data(using: .utf8)!
