// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/firestore/admin/v1/database.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2022 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// A Cloud Firestore Database.
/// Currently only one database is allowed per cloud project; this database
/// must have a `database_id` of '(default)'.
public struct Google_Firestore_Admin_V1_Database {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The resource name of the Database.
  /// Format: `projects/{project}/databases/{database}`
  public var name: String = String()

  /// The location of the database. Available databases are listed at
  /// https://cloud.google.com/firestore/docs/locations.
  public var locationID: String = String()

  /// The type of the database.
  /// See https://cloud.google.com/datastore/docs/firestore-or-datastore for
  /// information about how to choose.
  public var type: Google_Firestore_Admin_V1_Database.DatabaseType = .unspecified

  /// The concurrency control mode to use for this database.
  public var concurrencyMode: Google_Firestore_Admin_V1_Database.ConcurrencyMode = .unspecified

  /// The App Engine integration mode to use for this database.
  public var appEngineIntegrationMode: Google_Firestore_Admin_V1_Database.AppEngineIntegrationMode = .unspecified

  /// Output only. The key_prefix for this database. This key_prefix is used, in combination
  /// with the project id ("<key prefix>~<project id>") to construct the
  /// application id that is returned from the Cloud Datastore APIs in Google App
  /// Engine first generation runtimes.
  ///
  /// This value may be empty in which case the appid to use for URL-encoded keys
  /// is the project_id (eg: foo instead of v~foo).
  public var keyPrefix: String = String()

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  public var etag: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The type of the database.
  /// See https://cloud.google.com/datastore/docs/firestore-or-datastore for
  /// information about how to choose.
  ///
  /// Mode changes are only allowed if the database is empty.
  public enum DatabaseType: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// The default value. This value is used if the database type is omitted.
    case unspecified // = 0

    /// Firestore Native Mode
    case firestoreNative // = 1

    /// Firestore in Datastore Mode.
    case datastoreMode // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .firestoreNative
      case 2: self = .datastoreMode
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .firestoreNative: return 1
      case .datastoreMode: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// The type of concurrency control mode for transactions.
  public enum ConcurrencyMode: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Not used.
    case unspecified // = 0

    /// Use optimistic concurrency control by default. This mode is available
    /// for Cloud Firestore databases.
    case optimistic // = 1

    /// Use pessimistic concurrency control by default. This mode is available
    /// for Cloud Firestore databases.
    ///
    /// This is the default setting for Cloud Firestore.
    case pessimistic // = 2

    /// Use optimistic concurrency control with entity groups by default.
    ///
    /// This is the only available mode for Cloud Datastore.
    ///
    /// This mode is also available for Cloud Firestore with Datastore Mode but
    /// is not recommended.
    case optimisticWithEntityGroups // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .optimistic
      case 2: self = .pessimistic
      case 3: self = .optimisticWithEntityGroups
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .optimistic: return 1
      case .pessimistic: return 2
      case .optimisticWithEntityGroups: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// The type of App Engine integration mode.
  public enum AppEngineIntegrationMode: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Not used.
    case unspecified // = 0

    /// If an App Engine application exists in the same region as this database,
    /// App Engine configuration will impact this database. This includes
    /// disabling of the application & database, as well as disabling writes to
    /// the database.
    case enabled // = 1

    /// Appengine has no affect on the ability of this database to serve
    /// requests.
    case disabled // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .enabled
      case 2: self = .disabled
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .enabled: return 1
      case .disabled: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Google_Firestore_Admin_V1_Database.DatabaseType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Firestore_Admin_V1_Database.DatabaseType] = [
    .unspecified,
    .firestoreNative,
    .datastoreMode,
  ]
}

extension Google_Firestore_Admin_V1_Database.ConcurrencyMode: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Firestore_Admin_V1_Database.ConcurrencyMode] = [
    .unspecified,
    .optimistic,
    .pessimistic,
    .optimisticWithEntityGroups,
  ]
}

extension Google_Firestore_Admin_V1_Database.AppEngineIntegrationMode: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Firestore_Admin_V1_Database.AppEngineIntegrationMode] = [
    .unspecified,
    .enabled,
    .disabled,
  ]
}

#endif  // swift(>=4.2)

#if swift(>=5.5) && canImport(_Concurrency)
extension Google_Firestore_Admin_V1_Database: @unchecked Sendable {}
extension Google_Firestore_Admin_V1_Database.DatabaseType: @unchecked Sendable {}
extension Google_Firestore_Admin_V1_Database.ConcurrencyMode: @unchecked Sendable {}
extension Google_Firestore_Admin_V1_Database.AppEngineIntegrationMode: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.firestore.admin.v1"

extension Google_Firestore_Admin_V1_Database: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Database"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    9: .standard(proto: "location_id"),
    10: .same(proto: "type"),
    15: .standard(proto: "concurrency_mode"),
    19: .standard(proto: "app_engine_integration_mode"),
    20: .standard(proto: "key_prefix"),
    99: .same(proto: "etag"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 9: try { try decoder.decodeSingularStringField(value: &self.locationID) }()
      case 10: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 15: try { try decoder.decodeSingularEnumField(value: &self.concurrencyMode) }()
      case 19: try { try decoder.decodeSingularEnumField(value: &self.appEngineIntegrationMode) }()
      case 20: try { try decoder.decodeSingularStringField(value: &self.keyPrefix) }()
      case 99: try { try decoder.decodeSingularStringField(value: &self.etag) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.locationID.isEmpty {
      try visitor.visitSingularStringField(value: self.locationID, fieldNumber: 9)
    }
    if self.type != .unspecified {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 10)
    }
    if self.concurrencyMode != .unspecified {
      try visitor.visitSingularEnumField(value: self.concurrencyMode, fieldNumber: 15)
    }
    if self.appEngineIntegrationMode != .unspecified {
      try visitor.visitSingularEnumField(value: self.appEngineIntegrationMode, fieldNumber: 19)
    }
    if !self.keyPrefix.isEmpty {
      try visitor.visitSingularStringField(value: self.keyPrefix, fieldNumber: 20)
    }
    if !self.etag.isEmpty {
      try visitor.visitSingularStringField(value: self.etag, fieldNumber: 99)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Firestore_Admin_V1_Database, rhs: Google_Firestore_Admin_V1_Database) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.locationID != rhs.locationID {return false}
    if lhs.type != rhs.type {return false}
    if lhs.concurrencyMode != rhs.concurrencyMode {return false}
    if lhs.appEngineIntegrationMode != rhs.appEngineIntegrationMode {return false}
    if lhs.keyPrefix != rhs.keyPrefix {return false}
    if lhs.etag != rhs.etag {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Firestore_Admin_V1_Database.DatabaseType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DATABASE_TYPE_UNSPECIFIED"),
    1: .same(proto: "FIRESTORE_NATIVE"),
    2: .same(proto: "DATASTORE_MODE"),
  ]
}

extension Google_Firestore_Admin_V1_Database.ConcurrencyMode: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CONCURRENCY_MODE_UNSPECIFIED"),
    1: .same(proto: "OPTIMISTIC"),
    2: .same(proto: "PESSIMISTIC"),
    3: .same(proto: "OPTIMISTIC_WITH_ENTITY_GROUPS"),
  ]
}

extension Google_Firestore_Admin_V1_Database.AppEngineIntegrationMode: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "APP_ENGINE_INTEGRATION_MODE_UNSPECIFIED"),
    1: .same(proto: "ENABLED"),
    2: .same(proto: "DISABLED"),
  ]
}
