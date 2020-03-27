// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: vehicleapi.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Sending direction: App -> BFF -> AppTwin
struct Proto_AcknowledgeAppTwinCommandStatusUpdatesByVIN {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var sequenceNumber: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Sending direction: App <- BFF <- AppTwin
struct Proto_AppTwinCommandStatusUpdatesByVIN {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var sequenceNumber: Int32 = 0

  /// VIN -> Update
  var updatesByVin: Dictionary<String,Proto_AppTwinCommandStatusUpdatesByPID> = [:]

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Sending direction: App <- BFF <- AppTwin as part of an AppTwinCommandStatusUpdatesByVIN
struct Proto_AppTwinCommandStatusUpdatesByPID {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var vin: String = String()

  /// Process ID -> Status
  var updatesByPid: Dictionary<Int64,Proto_AppTwinCommandStatus> = [:]

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Sending direction: App <- BFF <- AppTwin as part of an AppTwinCommandStatusUpdatesByPID
struct Proto_AppTwinCommandStatus {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The remote vehicleAPI process id of the command.
  var processID: Int64 = 0

  /// The id of the command with which the app created it. Only guaranteed to be
  /// set on the first transmission to the app.
  var requestID: String = String()

  /// The initial CommandStatus from the response of the vehicleAPI has a timestamp of
  /// -1
  var timestampInMs: Int64 = 0

  /// Potential ACP error if the command request could not be fulfilled
  var errors: [Proto_VehicleAPIError] = []

  /// Potential timestamp until user cannot send login requests. Data in seconds
  /// since Unix epoch
  var blockingTimeSeconds: Int64 = 0

  /// Potential amount of failed pin attempts.
  var pinAttempts: Int32 = 0

  /// The type of command the AppTwinCommandStatus belongs to
  var type: Proto_ACP.CommandType = .unknowncommandtype

  /// The command state
  var state: Proto_VehicleAPI.CommandState = .unknownCommandState

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// VehicleAPICommandPostResult is a message type that can be unmarshaled from a POST request against the vehicle API
/// for issuing commands.
struct Proto_VehicleAPICommandPostResult {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The remote VVA process id of the command.
  var processID: Int64 = 0

  /// Potential ACP error if the command request could not be fulfilled
  var errors: [Proto_VehicleAPIError] = []

  /// The command state
  var state: Proto_VehicleAPI.CommandState = .unknownCommandState

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Proto_VehicleAPICommandGetResult {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// List of processes
  var process: [Proto_VehicleAPICommandProcessStatus] = []

  /// Number of enqueued commands in related command queue
  var queueCount: Int32 = 0

  /// Name of related command queue type
  var queueType: Proto_VehicleAPI.QueueType = .unknowncommandqueuetype

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Proto_VehicleAPIDataGetResult {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var data: Dictionary<String,Proto_VehicleAPIAttributeStatus> = [:]

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Proto_VehicleAPIAttributeStatus {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Value of the attribute (can be anything)
  var value: SwiftProtobuf.Google_Protobuf_Value {
    get {return _storage._value ?? SwiftProtobuf.Google_Protobuf_Value()}
    set {_uniqueStorage()._value = newValue}
  }
  /// Returns true if `value` has been explicitly set.
  var hasValue: Bool {return _storage._value != nil}
  /// Clears the value of `value`. Subsequent reads from it will return its default value.
  mutating func clearValue() {_uniqueStorage()._value = nil}

  /// UTC timestamp in milliseconds
  var timestampInMs: Int64 {
    get {return _storage._timestampInMs}
    set {_uniqueStorage()._timestampInMs = newValue}
  }

  /// Status of the attribute
  var status: Proto_VehicleAPI.AttributeStatus {
    get {return _storage._status}
    set {_uniqueStorage()._status = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct Proto_VehicleAPICommandProcessStatus {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var errors: [Proto_VehicleAPIError] {
    get {return _storage._errors}
    set {_uniqueStorage()._errors = newValue}
  }

  /// GUID (RFC 4122)
  var instanceID: String {
    get {return _storage._instanceID}
    set {_uniqueStorage()._instanceID = newValue}
  }

  /// Name of the command
  var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  /// Process ID
  var processID: Int64 {
    get {return _storage._processID}
    set {_uniqueStorage()._processID = newValue}
  }

  /// Response parameters as defined by the command
  var responseParameters: SwiftProtobuf.Google_Protobuf_Value {
    get {return _storage._responseParameters ?? SwiftProtobuf.Google_Protobuf_Value()}
    set {_uniqueStorage()._responseParameters = newValue}
  }
  /// Returns true if `responseParameters` has been explicitly set.
  var hasResponseParameters: Bool {return _storage._responseParameters != nil}
  /// Clears the value of `responseParameters`. Subsequent reads from it will return its default value.
  mutating func clearResponseParameters() {_uniqueStorage()._responseParameters = nil}

  /// Current processing state
  var state: Proto_VehicleAPI.CommandState {
    get {return _storage._state}
    set {_uniqueStorage()._state = newValue}
  }

  /// UTC timestamp in seconds (ISO 9945)
  var timestampInS: Int64 {
    get {return _storage._timestampInS}
    set {_uniqueStorage()._timestampInS = newValue}
  }

  /// Tracking ID. SHOULD be a GUID (RFC 4122)
  var trackingID: String {
    get {return _storage._trackingID}
    set {_uniqueStorage()._trackingID = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct Proto_VehicleAPIError {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var code: String = String()

  var message: String = String()

  var attributes: Dictionary<String,SwiftProtobuf.Google_Protobuf_Value> = [:]

  var subErrors: [Proto_VehicleAPIError] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// AppTwinPendingCommandsRequest is sent from the AppTwin to the app to ask for commands that the app has not yet
/// received a finished state for. This request MUST eventually be answered with AppTwinPendingCommandsResponse.
struct Proto_AppTwinPendingCommandsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// AppTwinPendingCommandsResponse is sent from the app to the AppTwin to tell it the commands that haven't been
/// "resolved yet" (are not in a finished state). The delivery of this message to the AppTwin will trigger a command
/// actor that polls the state for the specified command type and PID.
struct Proto_AppTwinPendingCommandsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var pendingCommands: [Proto_PendingCommand] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Proto_PendingCommand {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var vin: String = String()

  var processID: Int64 = 0

  var requestID: String = String()

  var type: Proto_ACP.CommandType = .unknowncommandtype

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_AcknowledgeAppTwinCommandStatusUpdatesByVIN: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".AcknowledgeAppTwinCommandStatusUpdatesByVIN"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "sequence_number"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.sequenceNumber)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.sequenceNumber != 0 {
      try visitor.visitSingularInt32Field(value: self.sequenceNumber, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_AcknowledgeAppTwinCommandStatusUpdatesByVIN, rhs: Proto_AcknowledgeAppTwinCommandStatusUpdatesByVIN) -> Bool {
    if lhs.sequenceNumber != rhs.sequenceNumber {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_AppTwinCommandStatusUpdatesByVIN: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".AppTwinCommandStatusUpdatesByVIN"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "sequence_number"),
    2: .standard(proto: "updates_by_vin"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.sequenceNumber)
      case 2: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Proto_AppTwinCommandStatusUpdatesByPID>.self, value: &self.updatesByVin)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.sequenceNumber != 0 {
      try visitor.visitSingularInt32Field(value: self.sequenceNumber, fieldNumber: 1)
    }
    if !self.updatesByVin.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Proto_AppTwinCommandStatusUpdatesByPID>.self, value: self.updatesByVin, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_AppTwinCommandStatusUpdatesByVIN, rhs: Proto_AppTwinCommandStatusUpdatesByVIN) -> Bool {
    if lhs.sequenceNumber != rhs.sequenceNumber {return false}
    if lhs.updatesByVin != rhs.updatesByVin {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_AppTwinCommandStatusUpdatesByPID: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".AppTwinCommandStatusUpdatesByPID"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "vin"),
    2: .standard(proto: "updates_by_pid"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.vin)
      case 2: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufInt64,Proto_AppTwinCommandStatus>.self, value: &self.updatesByPid)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.vin.isEmpty {
      try visitor.visitSingularStringField(value: self.vin, fieldNumber: 1)
    }
    if !self.updatesByPid.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufInt64,Proto_AppTwinCommandStatus>.self, value: self.updatesByPid, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_AppTwinCommandStatusUpdatesByPID, rhs: Proto_AppTwinCommandStatusUpdatesByPID) -> Bool {
    if lhs.vin != rhs.vin {return false}
    if lhs.updatesByPid != rhs.updatesByPid {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_AppTwinCommandStatus: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".AppTwinCommandStatus"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "process_id"),
    2: .standard(proto: "request_id"),
    3: .standard(proto: "timestamp_in_ms"),
    4: .same(proto: "errors"),
    5: .standard(proto: "blocking_time_seconds"),
    6: .standard(proto: "pin_attempts"),
    7: .same(proto: "type"),
    8: .same(proto: "state"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.processID)
      case 2: try decoder.decodeSingularStringField(value: &self.requestID)
      case 3: try decoder.decodeSingularInt64Field(value: &self.timestampInMs)
      case 4: try decoder.decodeRepeatedMessageField(value: &self.errors)
      case 5: try decoder.decodeSingularInt64Field(value: &self.blockingTimeSeconds)
      case 6: try decoder.decodeSingularInt32Field(value: &self.pinAttempts)
      case 7: try decoder.decodeSingularEnumField(value: &self.type)
      case 8: try decoder.decodeSingularEnumField(value: &self.state)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.processID != 0 {
      try visitor.visitSingularInt64Field(value: self.processID, fieldNumber: 1)
    }
    if !self.requestID.isEmpty {
      try visitor.visitSingularStringField(value: self.requestID, fieldNumber: 2)
    }
    if self.timestampInMs != 0 {
      try visitor.visitSingularInt64Field(value: self.timestampInMs, fieldNumber: 3)
    }
    if !self.errors.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.errors, fieldNumber: 4)
    }
    if self.blockingTimeSeconds != 0 {
      try visitor.visitSingularInt64Field(value: self.blockingTimeSeconds, fieldNumber: 5)
    }
    if self.pinAttempts != 0 {
      try visitor.visitSingularInt32Field(value: self.pinAttempts, fieldNumber: 6)
    }
    if self.type != .unknowncommandtype {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 7)
    }
    if self.state != .unknownCommandState {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_AppTwinCommandStatus, rhs: Proto_AppTwinCommandStatus) -> Bool {
    if lhs.processID != rhs.processID {return false}
    if lhs.requestID != rhs.requestID {return false}
    if lhs.timestampInMs != rhs.timestampInMs {return false}
    if lhs.errors != rhs.errors {return false}
    if lhs.blockingTimeSeconds != rhs.blockingTimeSeconds {return false}
    if lhs.pinAttempts != rhs.pinAttempts {return false}
    if lhs.type != rhs.type {return false}
    if lhs.state != rhs.state {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_VehicleAPICommandPostResult: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".VehicleAPICommandPostResult"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .unique(proto: "process_id", json: "processid"),
    2: .same(proto: "errors"),
    3: .same(proto: "state"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.processID)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.errors)
      case 3: try decoder.decodeSingularEnumField(value: &self.state)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.processID != 0 {
      try visitor.visitSingularInt64Field(value: self.processID, fieldNumber: 1)
    }
    if !self.errors.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.errors, fieldNumber: 2)
    }
    if self.state != .unknownCommandState {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_VehicleAPICommandPostResult, rhs: Proto_VehicleAPICommandPostResult) -> Bool {
    if lhs.processID != rhs.processID {return false}
    if lhs.errors != rhs.errors {return false}
    if lhs.state != rhs.state {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_VehicleAPICommandGetResult: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".VehicleAPICommandGetResult"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "process"),
    2: .unique(proto: "queue_count", json: "queuecount"),
    3: .unique(proto: "queue_type", json: "queuetype"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.process)
      case 2: try decoder.decodeSingularInt32Field(value: &self.queueCount)
      case 3: try decoder.decodeSingularEnumField(value: &self.queueType)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.process.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.process, fieldNumber: 1)
    }
    if self.queueCount != 0 {
      try visitor.visitSingularInt32Field(value: self.queueCount, fieldNumber: 2)
    }
    if self.queueType != .unknowncommandqueuetype {
      try visitor.visitSingularEnumField(value: self.queueType, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_VehicleAPICommandGetResult, rhs: Proto_VehicleAPICommandGetResult) -> Bool {
    if lhs.process != rhs.process {return false}
    if lhs.queueCount != rhs.queueCount {return false}
    if lhs.queueType != rhs.queueType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_VehicleAPIDataGetResult: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".VehicleAPIDataGetResult"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "data"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Proto_VehicleAPIAttributeStatus>.self, value: &self.data)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.data.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Proto_VehicleAPIAttributeStatus>.self, value: self.data, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_VehicleAPIDataGetResult, rhs: Proto_VehicleAPIDataGetResult) -> Bool {
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_VehicleAPIAttributeStatus: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".VehicleAPIAttributeStatus"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    3: .same(proto: "value"),
    2: .unique(proto: "timestamp_in_ms", json: "ts"),
    1: .unique(proto: "Status", json: "status"),
  ]

  fileprivate class _StorageClass {
    var _value: SwiftProtobuf.Google_Protobuf_Value? = nil
    var _timestampInMs: Int64 = 0
    var _status: Proto_VehicleAPI.AttributeStatus = .valueSet

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _value = source._value
      _timestampInMs = source._timestampInMs
      _status = source._status
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularEnumField(value: &_storage._status)
        case 2: try decoder.decodeSingularInt64Field(value: &_storage._timestampInMs)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._value)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._status != .valueSet {
        try visitor.visitSingularEnumField(value: _storage._status, fieldNumber: 1)
      }
      if _storage._timestampInMs != 0 {
        try visitor.visitSingularInt64Field(value: _storage._timestampInMs, fieldNumber: 2)
      }
      if let v = _storage._value {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_VehicleAPIAttributeStatus, rhs: Proto_VehicleAPIAttributeStatus) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._value != rhs_storage._value {return false}
        if _storage._timestampInMs != rhs_storage._timestampInMs {return false}
        if _storage._status != rhs_storage._status {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_VehicleAPICommandProcessStatus: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".VehicleAPICommandProcessStatus"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "errors"),
    2: .unique(proto: "instance_id", json: "instanceid"),
    3: .same(proto: "name"),
    4: .unique(proto: "process_id", json: "processid"),
    6: .unique(proto: "response_parameters", json: "responseparameters"),
    7: .same(proto: "state"),
    8: .unique(proto: "timestamp_in_s", json: "timestamp"),
    9: .unique(proto: "tracking_id", json: "trackingid"),
  ]

  fileprivate class _StorageClass {
    var _errors: [Proto_VehicleAPIError] = []
    var _instanceID: String = String()
    var _name: String = String()
    var _processID: Int64 = 0
    var _responseParameters: SwiftProtobuf.Google_Protobuf_Value? = nil
    var _state: Proto_VehicleAPI.CommandState = .unknownCommandState
    var _timestampInS: Int64 = 0
    var _trackingID: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _errors = source._errors
      _instanceID = source._instanceID
      _name = source._name
      _processID = source._processID
      _responseParameters = source._responseParameters
      _state = source._state
      _timestampInS = source._timestampInS
      _trackingID = source._trackingID
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeRepeatedMessageField(value: &_storage._errors)
        case 2: try decoder.decodeSingularStringField(value: &_storage._instanceID)
        case 3: try decoder.decodeSingularStringField(value: &_storage._name)
        case 4: try decoder.decodeSingularInt64Field(value: &_storage._processID)
        case 6: try decoder.decodeSingularMessageField(value: &_storage._responseParameters)
        case 7: try decoder.decodeSingularEnumField(value: &_storage._state)
        case 8: try decoder.decodeSingularInt64Field(value: &_storage._timestampInS)
        case 9: try decoder.decodeSingularStringField(value: &_storage._trackingID)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._errors.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._errors, fieldNumber: 1)
      }
      if !_storage._instanceID.isEmpty {
        try visitor.visitSingularStringField(value: _storage._instanceID, fieldNumber: 2)
      }
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 3)
      }
      if _storage._processID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._processID, fieldNumber: 4)
      }
      if let v = _storage._responseParameters {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if _storage._state != .unknownCommandState {
        try visitor.visitSingularEnumField(value: _storage._state, fieldNumber: 7)
      }
      if _storage._timestampInS != 0 {
        try visitor.visitSingularInt64Field(value: _storage._timestampInS, fieldNumber: 8)
      }
      if !_storage._trackingID.isEmpty {
        try visitor.visitSingularStringField(value: _storage._trackingID, fieldNumber: 9)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_VehicleAPICommandProcessStatus, rhs: Proto_VehicleAPICommandProcessStatus) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._errors != rhs_storage._errors {return false}
        if _storage._instanceID != rhs_storage._instanceID {return false}
        if _storage._name != rhs_storage._name {return false}
        if _storage._processID != rhs_storage._processID {return false}
        if _storage._responseParameters != rhs_storage._responseParameters {return false}
        if _storage._state != rhs_storage._state {return false}
        if _storage._timestampInS != rhs_storage._timestampInS {return false}
        if _storage._trackingID != rhs_storage._trackingID {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_VehicleAPIError: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".VehicleAPIError"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .unique(proto: "code", json: "error-code"),
    2: .unique(proto: "message", json: "error-message"),
    3: .same(proto: "attributes"),
    4: .unique(proto: "sub_errors", json: "sub-errors"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.code)
      case 2: try decoder.decodeSingularStringField(value: &self.message)
      case 3: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.Google_Protobuf_Value>.self, value: &self.attributes)
      case 4: try decoder.decodeRepeatedMessageField(value: &self.subErrors)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.code.isEmpty {
      try visitor.visitSingularStringField(value: self.code, fieldNumber: 1)
    }
    if !self.message.isEmpty {
      try visitor.visitSingularStringField(value: self.message, fieldNumber: 2)
    }
    if !self.attributes.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.Google_Protobuf_Value>.self, value: self.attributes, fieldNumber: 3)
    }
    if !self.subErrors.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.subErrors, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_VehicleAPIError, rhs: Proto_VehicleAPIError) -> Bool {
    if lhs.code != rhs.code {return false}
    if lhs.message != rhs.message {return false}
    if lhs.attributes != rhs.attributes {return false}
    if lhs.subErrors != rhs.subErrors {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_AppTwinPendingCommandsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".AppTwinPendingCommandsRequest"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_AppTwinPendingCommandsRequest, rhs: Proto_AppTwinPendingCommandsRequest) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_AppTwinPendingCommandsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".AppTwinPendingCommandsResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "pending_commands"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.pendingCommands)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.pendingCommands.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.pendingCommands, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_AppTwinPendingCommandsResponse, rhs: Proto_AppTwinPendingCommandsResponse) -> Bool {
    if lhs.pendingCommands != rhs.pendingCommands {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_PendingCommand: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PendingCommand"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "vin"),
    2: .standard(proto: "process_id"),
    3: .standard(proto: "request_id"),
    4: .same(proto: "type"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.vin)
      case 2: try decoder.decodeSingularInt64Field(value: &self.processID)
      case 3: try decoder.decodeSingularStringField(value: &self.requestID)
      case 4: try decoder.decodeSingularEnumField(value: &self.type)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.vin.isEmpty {
      try visitor.visitSingularStringField(value: self.vin, fieldNumber: 1)
    }
    if self.processID != 0 {
      try visitor.visitSingularInt64Field(value: self.processID, fieldNumber: 2)
    }
    if !self.requestID.isEmpty {
      try visitor.visitSingularStringField(value: self.requestID, fieldNumber: 3)
    }
    if self.type != .unknowncommandtype {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_PendingCommand, rhs: Proto_PendingCommand) -> Bool {
    if lhs.vin != rhs.vin {return false}
    if lhs.processID != rhs.processID {return false}
    if lhs.requestID != rhs.requestID {return false}
    if lhs.type != rhs.type {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
