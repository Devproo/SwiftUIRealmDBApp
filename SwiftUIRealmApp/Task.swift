//
//  Task.swift
//  SwiftUIRealmApp
//
//  Created by ipeerless on 11/08/2023.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
