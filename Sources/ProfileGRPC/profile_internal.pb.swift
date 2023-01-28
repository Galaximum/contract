// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: profile_internal.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

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

public struct CreateProfileRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var authAccountID: UInt64 = 0

  public var name: String = String()

  public var surname: String = String()

  public var links: Links {
    get {return _links ?? Links()}
    set {_links = newValue}
  }
  /// Returns true if `links` has been explicitly set.
  public var hasLinks: Bool {return self._links != nil}
  /// Clears the value of `links`. Subsequent reads from it will return its default value.
  public mutating func clearLinks() {self._links = nil}

  public var imageID: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _links: Links? = nil
}

public struct GetProfileRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct GetProfileResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: UInt64 = 0

  public var name: String = String()

  public var surname: String = String()

  public var imageID: UInt64 = 0

  public var channels: [ChannelType] = []

  public var addressID: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct GetProfileWithContactsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct GetProfileWithContactsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: UInt64 = 0

  public var name: String = String()

  public var surname: String = String()

  public var imageID: UInt64 = 0

  public var channels: [ChannelType] = []

  public var links: Links {
    get {return _links ?? Links()}
    set {_links = newValue}
  }
  /// Returns true if `links` has been explicitly set.
  public var hasLinks: Bool {return self._links != nil}
  /// Clears the value of `links`. Subsequent reads from it will return its default value.
  public mutating func clearLinks() {self._links = nil}

  public var addressID: Int64 = 0

  public var lastSeen: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _lastSeen ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_lastSeen = newValue}
  }
  /// Returns true if `lastSeen` has been explicitly set.
  public var hasLastSeen: Bool {return self._lastSeen != nil}
  /// Clears the value of `lastSeen`. Subsequent reads from it will return its default value.
  public mutating func clearLastSeen() {self._lastSeen = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _links: Links? = nil
  fileprivate var _lastSeen: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

public struct UpdateContactsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var profileID: UInt64 = 0

  /// Тип способа связи, который был изменен. Только он будет перезаписан сервисом
  public var type: ChannelType = .vk

  public var links: Links {
    get {return _links ?? Links()}
    set {_links = newValue}
  }
  /// Returns true if `links` has been explicitly set.
  public var hasLinks: Bool {return self._links != nil}
  /// Clears the value of `links`. Subsequent reads from it will return its default value.
  public mutating func clearLinks() {self._links = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _links: Links? = nil
}

public struct GetProfileByChannelRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var type: ChannelType = .vk

  /// В случае телефона - номер телефона
  /// В случае соц. сети - id
  public var identifier: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct GetProfileByChannelResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: UInt64 = 0

  public var name: String = String()

  public var surname: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension CreateProfileRequest: @unchecked Sendable {}
extension GetProfileRequest: @unchecked Sendable {}
extension GetProfileResponse: @unchecked Sendable {}
extension GetProfileWithContactsRequest: @unchecked Sendable {}
extension GetProfileWithContactsResponse: @unchecked Sendable {}
extension UpdateContactsRequest: @unchecked Sendable {}
extension GetProfileByChannelRequest: @unchecked Sendable {}
extension GetProfileByChannelResponse: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "ru.zveron.contract.profile"

extension CreateProfileRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateProfileRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "auth_account_id"),
    2: .same(proto: "name"),
    3: .same(proto: "surname"),
    4: .same(proto: "links"),
    5: .standard(proto: "image_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.authAccountID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.surname) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._links) }()
      case 5: try { try decoder.decodeSingularUInt64Field(value: &self.imageID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.authAccountID != 0 {
      try visitor.visitSingularUInt64Field(value: self.authAccountID, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if !self.surname.isEmpty {
      try visitor.visitSingularStringField(value: self.surname, fieldNumber: 3)
    }
    try { if let v = self._links {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    if self.imageID != 0 {
      try visitor.visitSingularUInt64Field(value: self.imageID, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: CreateProfileRequest, rhs: CreateProfileRequest) -> Bool {
    if lhs.authAccountID != rhs.authAccountID {return false}
    if lhs.name != rhs.name {return false}
    if lhs.surname != rhs.surname {return false}
    if lhs._links != rhs._links {return false}
    if lhs.imageID != rhs.imageID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GetProfileRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetProfileRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.id) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularUInt64Field(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GetProfileRequest, rhs: GetProfileRequest) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GetProfileResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetProfileResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    3: .same(proto: "surname"),
    4: .standard(proto: "image_id"),
    5: .same(proto: "channels"),
    6: .standard(proto: "address_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.surname) }()
      case 4: try { try decoder.decodeSingularUInt64Field(value: &self.imageID) }()
      case 5: try { try decoder.decodeRepeatedEnumField(value: &self.channels) }()
      case 6: try { try decoder.decodeSingularInt64Field(value: &self.addressID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularUInt64Field(value: self.id, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if !self.surname.isEmpty {
      try visitor.visitSingularStringField(value: self.surname, fieldNumber: 3)
    }
    if self.imageID != 0 {
      try visitor.visitSingularUInt64Field(value: self.imageID, fieldNumber: 4)
    }
    if !self.channels.isEmpty {
      try visitor.visitPackedEnumField(value: self.channels, fieldNumber: 5)
    }
    if self.addressID != 0 {
      try visitor.visitSingularInt64Field(value: self.addressID, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GetProfileResponse, rhs: GetProfileResponse) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.name != rhs.name {return false}
    if lhs.surname != rhs.surname {return false}
    if lhs.imageID != rhs.imageID {return false}
    if lhs.channels != rhs.channels {return false}
    if lhs.addressID != rhs.addressID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GetProfileWithContactsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetProfileWithContactsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.id) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularUInt64Field(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GetProfileWithContactsRequest, rhs: GetProfileWithContactsRequest) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GetProfileWithContactsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetProfileWithContactsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    3: .same(proto: "surname"),
    4: .standard(proto: "image_id"),
    5: .same(proto: "channels"),
    6: .same(proto: "links"),
    7: .standard(proto: "address_id"),
    8: .same(proto: "lastSeen"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.surname) }()
      case 4: try { try decoder.decodeSingularUInt64Field(value: &self.imageID) }()
      case 5: try { try decoder.decodeRepeatedEnumField(value: &self.channels) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._links) }()
      case 7: try { try decoder.decodeSingularInt64Field(value: &self.addressID) }()
      case 8: try { try decoder.decodeSingularMessageField(value: &self._lastSeen) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.id != 0 {
      try visitor.visitSingularUInt64Field(value: self.id, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if !self.surname.isEmpty {
      try visitor.visitSingularStringField(value: self.surname, fieldNumber: 3)
    }
    if self.imageID != 0 {
      try visitor.visitSingularUInt64Field(value: self.imageID, fieldNumber: 4)
    }
    if !self.channels.isEmpty {
      try visitor.visitPackedEnumField(value: self.channels, fieldNumber: 5)
    }
    try { if let v = self._links {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    } }()
    if self.addressID != 0 {
      try visitor.visitSingularInt64Field(value: self.addressID, fieldNumber: 7)
    }
    try { if let v = self._lastSeen {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GetProfileWithContactsResponse, rhs: GetProfileWithContactsResponse) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.name != rhs.name {return false}
    if lhs.surname != rhs.surname {return false}
    if lhs.imageID != rhs.imageID {return false}
    if lhs.channels != rhs.channels {return false}
    if lhs._links != rhs._links {return false}
    if lhs.addressID != rhs.addressID {return false}
    if lhs._lastSeen != rhs._lastSeen {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension UpdateContactsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateContactsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "profile_id"),
    2: .same(proto: "type"),
    3: .same(proto: "links"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.profileID) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._links) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.profileID != 0 {
      try visitor.visitSingularUInt64Field(value: self.profileID, fieldNumber: 1)
    }
    if self.type != .vk {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 2)
    }
    try { if let v = self._links {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: UpdateContactsRequest, rhs: UpdateContactsRequest) -> Bool {
    if lhs.profileID != rhs.profileID {return false}
    if lhs.type != rhs.type {return false}
    if lhs._links != rhs._links {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GetProfileByChannelRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetProfileByChannelRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "identifier"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.identifier) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.type != .vk {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 1)
    }
    if !self.identifier.isEmpty {
      try visitor.visitSingularStringField(value: self.identifier, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GetProfileByChannelRequest, rhs: GetProfileByChannelRequest) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.identifier != rhs.identifier {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GetProfileByChannelResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetProfileByChannelResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    3: .same(proto: "surname"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.surname) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularUInt64Field(value: self.id, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if !self.surname.isEmpty {
      try visitor.visitSingularStringField(value: self.surname, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GetProfileByChannelResponse, rhs: GetProfileByChannelResponse) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.name != rhs.name {return false}
    if lhs.surname != rhs.surname {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
