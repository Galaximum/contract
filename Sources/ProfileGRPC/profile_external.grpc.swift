//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: profile_external.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
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
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Usage: instantiate `ProfileServiceExternalClient`, then call methods of this protocol to make API calls.
public protocol ProfileServiceExternalClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: ProfileServiceExternalClientInterceptorFactoryProtocol? { get }

  func getProfilePage(
    _ request: GetProfilePageRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<GetProfilePageRequest, GetProfilePageResponse>

  func getProfileInfo(
    _ request: GetProfileInfoRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<GetProfileInfoRequest, GetProfileInfoResponse>

  func setProfileInfo(
    _ request: SetProfileInfoRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<SetProfileInfoRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func getSettings(
    _ request: GetSettingsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<GetSettingsRequest, GetSettingsResponse>

  func setSettings(
    _ request: SetSettingsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<SetSettingsRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func getChannelTypes(
    _ request: GetChannelTypesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<GetChannelTypesRequest, GetChannelTypesResponse>

  func getLinks(
    _ request: GetLinksRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<GetLinksRequest, Links>

  func deleteProfile(
    _ request: DeleteProfileRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<DeleteProfileRequest, SwiftProtobuf.Google_Protobuf_Empty>
}

extension ProfileServiceExternalClientProtocol {
  public var serviceName: String {
    return "ru.zveron.contract.profile.ProfileServiceExternal"
  }

  /// Получение профиля, как страницы в маркетплейсе (агрегируем данные из разных источников)
  ///
  /// - Parameters:
  ///   - request: Request to send to GetProfilePage.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getProfilePage(
    _ request: GetProfilePageRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<GetProfilePageRequest, GetProfilePageResponse> {
    return self.makeUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.getProfilePage.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetProfilePageInterceptors() ?? []
    )
  }

  /// Получение профиля, как страницы в маркетплейсе, для его владельца
  ///
  /// - Parameters:
  ///   - request: Request to send to GetProfileInfo.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getProfileInfo(
    _ request: GetProfileInfoRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<GetProfileInfoRequest, GetProfileInfoResponse> {
    return self.makeUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.getProfileInfo.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetProfileInfoInterceptors() ?? []
    )
  }

  /// Редактирование профиля, как страницы в маркетплейсе, владельцем
  ///
  /// - Parameters:
  ///   - request: Request to send to SetProfileInfo.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func setProfileInfo(
    _ request: SetProfileInfoRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<SetProfileInfoRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.setProfileInfo.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetProfileInfoInterceptors() ?? []
    )
  }

  /// Получение настроек профиля
  ///
  /// - Parameters:
  ///   - request: Request to send to GetSettings.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getSettings(
    _ request: GetSettingsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<GetSettingsRequest, GetSettingsResponse> {
    return self.makeUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.getSettings.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetSettingsInterceptors() ?? []
    )
  }

  /// Изменение настроект профиля
  ///
  /// - Parameters:
  ///   - request: Request to send to SetSettings.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func setSettings(
    _ request: SetSettingsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<SetSettingsRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.setSettings.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetSettingsInterceptors() ?? []
    )
  }

  /// Получение предпочительных способов связи (для создания объявлений)
  ///
  /// - Parameters:
  ///   - request: Request to send to GetChannelTypes.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getChannelTypes(
    _ request: GetChannelTypesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<GetChannelTypesRequest, GetChannelTypesResponse> {
    return self.makeUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.getChannelTypes.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetChannelTypesInterceptors() ?? []
    )
  }

  /// Получение способов связи, привязанных к профилю. Доступно для владельца профиля
  ///
  /// - Parameters:
  ///   - request: Request to send to GetLinks.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getLinks(
    _ request: GetLinksRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<GetLinksRequest, Links> {
    return self.makeUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.getLinks.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetLinksInterceptors() ?? []
    )
  }

  /// Полное удаление профиля без возможности восстановления
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteProfile.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteProfile(
    _ request: DeleteProfileRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<DeleteProfileRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.deleteProfile.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteProfileInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension ProfileServiceExternalClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "ProfileServiceExternalNIOClient")
public final class ProfileServiceExternalClient: ProfileServiceExternalClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: ProfileServiceExternalClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: ProfileServiceExternalClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the ru.zveron.contract.profile.ProfileServiceExternal service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: ProfileServiceExternalClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct ProfileServiceExternalNIOClient: ProfileServiceExternalClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: ProfileServiceExternalClientInterceptorFactoryProtocol?

  /// Creates a client for the ru.zveron.contract.profile.ProfileServiceExternal service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: ProfileServiceExternalClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol ProfileServiceExternalAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: ProfileServiceExternalClientInterceptorFactoryProtocol? { get }

  func makeGetProfilePageCall(
    _ request: GetProfilePageRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<GetProfilePageRequest, GetProfilePageResponse>

  func makeGetProfileInfoCall(
    _ request: GetProfileInfoRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<GetProfileInfoRequest, GetProfileInfoResponse>

  func makeSetProfileInfoCall(
    _ request: SetProfileInfoRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<SetProfileInfoRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func makeGetSettingsCall(
    _ request: GetSettingsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<GetSettingsRequest, GetSettingsResponse>

  func makeSetSettingsCall(
    _ request: SetSettingsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<SetSettingsRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func makeGetChannelTypesCall(
    _ request: GetChannelTypesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<GetChannelTypesRequest, GetChannelTypesResponse>

  func makeGetLinksCall(
    _ request: GetLinksRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<GetLinksRequest, Links>

  func makeDeleteProfileCall(
    _ request: DeleteProfileRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<DeleteProfileRequest, SwiftProtobuf.Google_Protobuf_Empty>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension ProfileServiceExternalAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return ProfileServiceExternalClientMetadata.serviceDescriptor
  }

  public var interceptors: ProfileServiceExternalClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeGetProfilePageCall(
    _ request: GetProfilePageRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<GetProfilePageRequest, GetProfilePageResponse> {
    return self.makeAsyncUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.getProfilePage.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetProfilePageInterceptors() ?? []
    )
  }

  public func makeGetProfileInfoCall(
    _ request: GetProfileInfoRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<GetProfileInfoRequest, GetProfileInfoResponse> {
    return self.makeAsyncUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.getProfileInfo.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetProfileInfoInterceptors() ?? []
    )
  }

  public func makeSetProfileInfoCall(
    _ request: SetProfileInfoRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<SetProfileInfoRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeAsyncUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.setProfileInfo.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetProfileInfoInterceptors() ?? []
    )
  }

  public func makeGetSettingsCall(
    _ request: GetSettingsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<GetSettingsRequest, GetSettingsResponse> {
    return self.makeAsyncUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.getSettings.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetSettingsInterceptors() ?? []
    )
  }

  public func makeSetSettingsCall(
    _ request: SetSettingsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<SetSettingsRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeAsyncUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.setSettings.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetSettingsInterceptors() ?? []
    )
  }

  public func makeGetChannelTypesCall(
    _ request: GetChannelTypesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<GetChannelTypesRequest, GetChannelTypesResponse> {
    return self.makeAsyncUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.getChannelTypes.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetChannelTypesInterceptors() ?? []
    )
  }

  public func makeGetLinksCall(
    _ request: GetLinksRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<GetLinksRequest, Links> {
    return self.makeAsyncUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.getLinks.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetLinksInterceptors() ?? []
    )
  }

  public func makeDeleteProfileCall(
    _ request: DeleteProfileRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<DeleteProfileRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeAsyncUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.deleteProfile.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteProfileInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension ProfileServiceExternalAsyncClientProtocol {
  public func getProfilePage(
    _ request: GetProfilePageRequest,
    callOptions: CallOptions? = nil
  ) async throws -> GetProfilePageResponse {
    return try await self.performAsyncUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.getProfilePage.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetProfilePageInterceptors() ?? []
    )
  }

  public func getProfileInfo(
    _ request: GetProfileInfoRequest,
    callOptions: CallOptions? = nil
  ) async throws -> GetProfileInfoResponse {
    return try await self.performAsyncUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.getProfileInfo.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetProfileInfoInterceptors() ?? []
    )
  }

  public func setProfileInfo(
    _ request: SetProfileInfoRequest,
    callOptions: CallOptions? = nil
  ) async throws -> SwiftProtobuf.Google_Protobuf_Empty {
    return try await self.performAsyncUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.setProfileInfo.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetProfileInfoInterceptors() ?? []
    )
  }

  public func getSettings(
    _ request: GetSettingsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> GetSettingsResponse {
    return try await self.performAsyncUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.getSettings.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetSettingsInterceptors() ?? []
    )
  }

  public func setSettings(
    _ request: SetSettingsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> SwiftProtobuf.Google_Protobuf_Empty {
    return try await self.performAsyncUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.setSettings.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSetSettingsInterceptors() ?? []
    )
  }

  public func getChannelTypes(
    _ request: GetChannelTypesRequest,
    callOptions: CallOptions? = nil
  ) async throws -> GetChannelTypesResponse {
    return try await self.performAsyncUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.getChannelTypes.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetChannelTypesInterceptors() ?? []
    )
  }

  public func getLinks(
    _ request: GetLinksRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Links {
    return try await self.performAsyncUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.getLinks.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetLinksInterceptors() ?? []
    )
  }

  public func deleteProfile(
    _ request: DeleteProfileRequest,
    callOptions: CallOptions? = nil
  ) async throws -> SwiftProtobuf.Google_Protobuf_Empty {
    return try await self.performAsyncUnaryCall(
      path: ProfileServiceExternalClientMetadata.Methods.deleteProfile.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteProfileInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct ProfileServiceExternalAsyncClient: ProfileServiceExternalAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: ProfileServiceExternalClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: ProfileServiceExternalClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol ProfileServiceExternalClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'getProfilePage'.
  func makeGetProfilePageInterceptors() -> [ClientInterceptor<GetProfilePageRequest, GetProfilePageResponse>]

  /// - Returns: Interceptors to use when invoking 'getProfileInfo'.
  func makeGetProfileInfoInterceptors() -> [ClientInterceptor<GetProfileInfoRequest, GetProfileInfoResponse>]

  /// - Returns: Interceptors to use when invoking 'setProfileInfo'.
  func makeSetProfileInfoInterceptors() -> [ClientInterceptor<SetProfileInfoRequest, SwiftProtobuf.Google_Protobuf_Empty>]

  /// - Returns: Interceptors to use when invoking 'getSettings'.
  func makeGetSettingsInterceptors() -> [ClientInterceptor<GetSettingsRequest, GetSettingsResponse>]

  /// - Returns: Interceptors to use when invoking 'setSettings'.
  func makeSetSettingsInterceptors() -> [ClientInterceptor<SetSettingsRequest, SwiftProtobuf.Google_Protobuf_Empty>]

  /// - Returns: Interceptors to use when invoking 'getChannelTypes'.
  func makeGetChannelTypesInterceptors() -> [ClientInterceptor<GetChannelTypesRequest, GetChannelTypesResponse>]

  /// - Returns: Interceptors to use when invoking 'getLinks'.
  func makeGetLinksInterceptors() -> [ClientInterceptor<GetLinksRequest, Links>]

  /// - Returns: Interceptors to use when invoking 'deleteProfile'.
  func makeDeleteProfileInterceptors() -> [ClientInterceptor<DeleteProfileRequest, SwiftProtobuf.Google_Protobuf_Empty>]
}

public enum ProfileServiceExternalClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "ProfileServiceExternal",
    fullName: "ru.zveron.contract.profile.ProfileServiceExternal",
    methods: [
      ProfileServiceExternalClientMetadata.Methods.getProfilePage,
      ProfileServiceExternalClientMetadata.Methods.getProfileInfo,
      ProfileServiceExternalClientMetadata.Methods.setProfileInfo,
      ProfileServiceExternalClientMetadata.Methods.getSettings,
      ProfileServiceExternalClientMetadata.Methods.setSettings,
      ProfileServiceExternalClientMetadata.Methods.getChannelTypes,
      ProfileServiceExternalClientMetadata.Methods.getLinks,
      ProfileServiceExternalClientMetadata.Methods.deleteProfile,
    ]
  )

  public enum Methods {
    public static let getProfilePage = GRPCMethodDescriptor(
      name: "GetProfilePage",
      path: "/ru.zveron.contract.profile.ProfileServiceExternal/GetProfilePage",
      type: GRPCCallType.unary
    )

    public static let getProfileInfo = GRPCMethodDescriptor(
      name: "GetProfileInfo",
      path: "/ru.zveron.contract.profile.ProfileServiceExternal/GetProfileInfo",
      type: GRPCCallType.unary
    )

    public static let setProfileInfo = GRPCMethodDescriptor(
      name: "SetProfileInfo",
      path: "/ru.zveron.contract.profile.ProfileServiceExternal/SetProfileInfo",
      type: GRPCCallType.unary
    )

    public static let getSettings = GRPCMethodDescriptor(
      name: "GetSettings",
      path: "/ru.zveron.contract.profile.ProfileServiceExternal/GetSettings",
      type: GRPCCallType.unary
    )

    public static let setSettings = GRPCMethodDescriptor(
      name: "SetSettings",
      path: "/ru.zveron.contract.profile.ProfileServiceExternal/SetSettings",
      type: GRPCCallType.unary
    )

    public static let getChannelTypes = GRPCMethodDescriptor(
      name: "GetChannelTypes",
      path: "/ru.zveron.contract.profile.ProfileServiceExternal/GetChannelTypes",
      type: GRPCCallType.unary
    )

    public static let getLinks = GRPCMethodDescriptor(
      name: "GetLinks",
      path: "/ru.zveron.contract.profile.ProfileServiceExternal/GetLinks",
      type: GRPCCallType.unary
    )

    public static let deleteProfile = GRPCMethodDescriptor(
      name: "DeleteProfile",
      path: "/ru.zveron.contract.profile.ProfileServiceExternal/DeleteProfile",
      type: GRPCCallType.unary
    )
  }
}
