import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class Alert : Tea.TeaModel {
    public var body: String?

    public var subtitle: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body!
        }
        if self.subtitle != nil {
            map["subtitle"] = self.subtitle!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
        }
        if dict.keys.contains("subtitle") {
            self.subtitle = dict["subtitle"] as! String
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
    }
}

public class AndroidPayload : Tea.TeaModel {
    public var body: Body?

    public var displayType: String?

    public var extra: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.displayType != nil {
            map["displayType"] = self.displayType!
        }
        if self.extra != nil {
            map["extra"] = self.extra!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = Body()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("displayType") {
            self.displayType = dict["displayType"] as! String
        }
        if dict.keys.contains("extra") {
            self.extra = dict["extra"] as! [String: Any]
        }
    }
}

public class Aps : Tea.TeaModel {
    public var alert: Alert?

    public var badge: Int32?

    public var category: String?

    public var contentAvailable: Int32?

    public var interruptionLevel: String?

    public var sound: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.alert?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alert != nil {
            map["alert"] = self.alert?.toMap()
        }
        if self.badge != nil {
            map["badge"] = self.badge!
        }
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.contentAvailable != nil {
            map["contentAvailable"] = self.contentAvailable!
        }
        if self.interruptionLevel != nil {
            map["interruptionLevel"] = self.interruptionLevel!
        }
        if self.sound != nil {
            map["sound"] = self.sound!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alert") {
            var model = Alert()
            model.fromMap(dict["alert"] as! [String: Any])
            self.alert = model
        }
        if dict.keys.contains("badge") {
            self.badge = dict["badge"] as! Int32
        }
        if dict.keys.contains("category") {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("contentAvailable") {
            self.contentAvailable = dict["contentAvailable"] as! Int32
        }
        if dict.keys.contains("interruptionLevel") {
            self.interruptionLevel = dict["interruptionLevel"] as! String
        }
        if dict.keys.contains("sound") {
            self.sound = dict["sound"] as! String
        }
    }
}

public class Body : Tea.TeaModel {
    public var activity: String?

    public var afterOpen: String?

    public var badge: Int32?

    public var builderId: Int64?

    public var custom: String?

    public var expandImage: String?

    public var icon: String?

    public var img: String?

    public var largeIcon: String?

    public var playLights: Bool?

    public var playSound: Bool?

    public var playVibrate: Bool?

    public var sound: String?

    public var text: String?

    public var title: String?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activity != nil {
            map["activity"] = self.activity!
        }
        if self.afterOpen != nil {
            map["afterOpen"] = self.afterOpen!
        }
        if self.badge != nil {
            map["badge"] = self.badge!
        }
        if self.builderId != nil {
            map["builderId"] = self.builderId!
        }
        if self.custom != nil {
            map["custom"] = self.custom!
        }
        if self.expandImage != nil {
            map["expandImage"] = self.expandImage!
        }
        if self.icon != nil {
            map["icon"] = self.icon!
        }
        if self.img != nil {
            map["img"] = self.img!
        }
        if self.largeIcon != nil {
            map["largeIcon"] = self.largeIcon!
        }
        if self.playLights != nil {
            map["playLights"] = self.playLights!
        }
        if self.playSound != nil {
            map["playSound"] = self.playSound!
        }
        if self.playVibrate != nil {
            map["playVibrate"] = self.playVibrate!
        }
        if self.sound != nil {
            map["sound"] = self.sound!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("activity") {
            self.activity = dict["activity"] as! String
        }
        if dict.keys.contains("afterOpen") {
            self.afterOpen = dict["afterOpen"] as! String
        }
        if dict.keys.contains("badge") {
            self.badge = dict["badge"] as! Int32
        }
        if dict.keys.contains("builderId") {
            self.builderId = dict["builderId"] as! Int64
        }
        if dict.keys.contains("custom") {
            self.custom = dict["custom"] as! String
        }
        if dict.keys.contains("expandImage") {
            self.expandImage = dict["expandImage"] as! String
        }
        if dict.keys.contains("icon") {
            self.icon = dict["icon"] as! String
        }
        if dict.keys.contains("img") {
            self.img = dict["img"] as! String
        }
        if dict.keys.contains("largeIcon") {
            self.largeIcon = dict["largeIcon"] as! String
        }
        if dict.keys.contains("playLights") {
            self.playLights = dict["playLights"] as! Bool
        }
        if dict.keys.contains("playSound") {
            self.playSound = dict["playSound"] as! Bool
        }
        if dict.keys.contains("playVibrate") {
            self.playVibrate = dict["playVibrate"] as! Bool
        }
        if dict.keys.contains("sound") {
            self.sound = dict["sound"] as! String
        }
        if dict.keys.contains("text") {
            self.text = dict["text"] as! String
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
        if dict.keys.contains("url") {
            self.url = dict["url"] as! String
        }
    }
}

public class ChannelProperties : Tea.TeaModel {
    public var channelActivity: String?

    public var mainActivity: String?

    public var oppoChannelId: String?

    public var vivoClassification: String?

    public var xiaomiChannelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelActivity != nil {
            map["channelActivity"] = self.channelActivity!
        }
        if self.mainActivity != nil {
            map["mainActivity"] = self.mainActivity!
        }
        if self.oppoChannelId != nil {
            map["oppoChannelId"] = self.oppoChannelId!
        }
        if self.vivoClassification != nil {
            map["vivoClassification"] = self.vivoClassification!
        }
        if self.xiaomiChannelId != nil {
            map["xiaomiChannelId"] = self.xiaomiChannelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("channelActivity") {
            self.channelActivity = dict["channelActivity"] as! String
        }
        if dict.keys.contains("mainActivity") {
            self.mainActivity = dict["mainActivity"] as! String
        }
        if dict.keys.contains("oppoChannelId") {
            self.oppoChannelId = dict["oppoChannelId"] as! String
        }
        if dict.keys.contains("vivoClassification") {
            self.vivoClassification = dict["vivoClassification"] as! String
        }
        if dict.keys.contains("xiaomiChannelId") {
            self.xiaomiChannelId = dict["xiaomiChannelId"] as! String
        }
    }
}

public class IosPayload : Tea.TeaModel {
    public var aps: Aps?

    public var extra: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.aps?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aps != nil {
            map["aps"] = self.aps?.toMap()
        }
        if self.extra != nil {
            map["extra"] = self.extra!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("aps") {
            var model = Aps()
            model.fromMap(dict["aps"] as! [String: Any])
            self.aps = model
        }
        if dict.keys.contains("extra") {
            self.extra = dict["extra"] as! [String: Any]
        }
    }
}

public class Policy : Tea.TeaModel {
    public var expireTime: String?

    public var outerBizNo: String?

    public var speed: Int32?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expireTime != nil {
            map["expireTime"] = self.expireTime!
        }
        if self.outerBizNo != nil {
            map["outerBizNo"] = self.outerBizNo!
        }
        if self.speed != nil {
            map["speed"] = self.speed!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("expireTime") {
            self.expireTime = dict["expireTime"] as! String
        }
        if dict.keys.contains("outerBizNo") {
            self.outerBizNo = dict["outerBizNo"] as! String
        }
        if dict.keys.contains("speed") {
            self.speed = dict["speed"] as! Int32
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! String
        }
    }
}

public class SendByAppRequest : Tea.TeaModel {
    public var androidPayload: AndroidPayload?

    public var channelProperties: ChannelProperties?

    public var description_: String?

    public var iosPayload: IosPayload?

    public var policy: Policy?

    public var productionMode: Bool?

    public var receiptType: Int32?

    public var receiptUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.androidPayload?.validate()
        try self.channelProperties?.validate()
        try self.iosPayload?.validate()
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidPayload != nil {
            map["AndroidPayload"] = self.androidPayload?.toMap()
        }
        if self.channelProperties != nil {
            map["ChannelProperties"] = self.channelProperties?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.iosPayload != nil {
            map["IosPayload"] = self.iosPayload?.toMap()
        }
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.productionMode != nil {
            map["ProductionMode"] = self.productionMode!
        }
        if self.receiptType != nil {
            map["ReceiptType"] = self.receiptType!
        }
        if self.receiptUrl != nil {
            map["ReceiptUrl"] = self.receiptUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidPayload") {
            var model = AndroidPayload()
            model.fromMap(dict["AndroidPayload"] as! [String: Any])
            self.androidPayload = model
        }
        if dict.keys.contains("ChannelProperties") {
            var model = ChannelProperties()
            model.fromMap(dict["ChannelProperties"] as! [String: Any])
            self.channelProperties = model
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("IosPayload") {
            var model = IosPayload()
            model.fromMap(dict["IosPayload"] as! [String: Any])
            self.iosPayload = model
        }
        if dict.keys.contains("Policy") {
            var model = Policy()
            model.fromMap(dict["Policy"] as! [String: Any])
            self.policy = model
        }
        if dict.keys.contains("ProductionMode") {
            self.productionMode = dict["ProductionMode"] as! Bool
        }
        if dict.keys.contains("ReceiptType") {
            self.receiptType = dict["ReceiptType"] as! Int32
        }
        if dict.keys.contains("ReceiptUrl") {
            self.receiptUrl = dict["ReceiptUrl"] as! String
        }
    }
}

public class SendByAppShrinkRequest : Tea.TeaModel {
    public var androidPayloadShrink: String?

    public var channelPropertiesShrink: String?

    public var description_: String?

    public var iosPayloadShrink: String?

    public var policyShrink: String?

    public var productionMode: Bool?

    public var receiptType: Int32?

    public var receiptUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidPayloadShrink != nil {
            map["AndroidPayload"] = self.androidPayloadShrink!
        }
        if self.channelPropertiesShrink != nil {
            map["ChannelProperties"] = self.channelPropertiesShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.iosPayloadShrink != nil {
            map["IosPayload"] = self.iosPayloadShrink!
        }
        if self.policyShrink != nil {
            map["Policy"] = self.policyShrink!
        }
        if self.productionMode != nil {
            map["ProductionMode"] = self.productionMode!
        }
        if self.receiptType != nil {
            map["ReceiptType"] = self.receiptType!
        }
        if self.receiptUrl != nil {
            map["ReceiptUrl"] = self.receiptUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidPayload") {
            self.androidPayloadShrink = dict["AndroidPayload"] as! String
        }
        if dict.keys.contains("ChannelProperties") {
            self.channelPropertiesShrink = dict["ChannelProperties"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("IosPayload") {
            self.iosPayloadShrink = dict["IosPayload"] as! String
        }
        if dict.keys.contains("Policy") {
            self.policyShrink = dict["Policy"] as! String
        }
        if dict.keys.contains("ProductionMode") {
            self.productionMode = dict["ProductionMode"] as! Bool
        }
        if dict.keys.contains("ReceiptType") {
            self.receiptType = dict["ReceiptType"] as! Int32
        }
        if dict.keys.contains("ReceiptUrl") {
            self.receiptUrl = dict["ReceiptUrl"] as! String
        }
    }
}

public class SendByAppResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var msgId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MsgId") {
                self.msgId = dict["MsgId"] as! String
            }
        }
    }
    public var code: String?

    public var data: SendByAppResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = SendByAppResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SendByAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendByAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SendByAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendByDeviceRequest : Tea.TeaModel {
    public var androidPayload: AndroidPayload?

    public var channelProperties: ChannelProperties?

    public var description_: String?

    public var deviceTokens: String?

    public var iosPayload: IosPayload?

    public var policy: Policy?

    public var productionMode: Bool?

    public var receiptType: Int32?

    public var receiptUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.androidPayload?.validate()
        try self.channelProperties?.validate()
        try self.iosPayload?.validate()
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidPayload != nil {
            map["AndroidPayload"] = self.androidPayload?.toMap()
        }
        if self.channelProperties != nil {
            map["ChannelProperties"] = self.channelProperties?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.deviceTokens != nil {
            map["DeviceTokens"] = self.deviceTokens!
        }
        if self.iosPayload != nil {
            map["IosPayload"] = self.iosPayload?.toMap()
        }
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.productionMode != nil {
            map["ProductionMode"] = self.productionMode!
        }
        if self.receiptType != nil {
            map["ReceiptType"] = self.receiptType!
        }
        if self.receiptUrl != nil {
            map["ReceiptUrl"] = self.receiptUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidPayload") {
            var model = AndroidPayload()
            model.fromMap(dict["AndroidPayload"] as! [String: Any])
            self.androidPayload = model
        }
        if dict.keys.contains("ChannelProperties") {
            var model = ChannelProperties()
            model.fromMap(dict["ChannelProperties"] as! [String: Any])
            self.channelProperties = model
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DeviceTokens") {
            self.deviceTokens = dict["DeviceTokens"] as! String
        }
        if dict.keys.contains("IosPayload") {
            var model = IosPayload()
            model.fromMap(dict["IosPayload"] as! [String: Any])
            self.iosPayload = model
        }
        if dict.keys.contains("Policy") {
            var model = Policy()
            model.fromMap(dict["Policy"] as! [String: Any])
            self.policy = model
        }
        if dict.keys.contains("ProductionMode") {
            self.productionMode = dict["ProductionMode"] as! Bool
        }
        if dict.keys.contains("ReceiptType") {
            self.receiptType = dict["ReceiptType"] as! Int32
        }
        if dict.keys.contains("ReceiptUrl") {
            self.receiptUrl = dict["ReceiptUrl"] as! String
        }
    }
}

public class SendByDeviceShrinkRequest : Tea.TeaModel {
    public var androidPayloadShrink: String?

    public var channelPropertiesShrink: String?

    public var description_: String?

    public var deviceTokens: String?

    public var iosPayloadShrink: String?

    public var policyShrink: String?

    public var productionMode: Bool?

    public var receiptType: Int32?

    public var receiptUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidPayloadShrink != nil {
            map["AndroidPayload"] = self.androidPayloadShrink!
        }
        if self.channelPropertiesShrink != nil {
            map["ChannelProperties"] = self.channelPropertiesShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.deviceTokens != nil {
            map["DeviceTokens"] = self.deviceTokens!
        }
        if self.iosPayloadShrink != nil {
            map["IosPayload"] = self.iosPayloadShrink!
        }
        if self.policyShrink != nil {
            map["Policy"] = self.policyShrink!
        }
        if self.productionMode != nil {
            map["ProductionMode"] = self.productionMode!
        }
        if self.receiptType != nil {
            map["ReceiptType"] = self.receiptType!
        }
        if self.receiptUrl != nil {
            map["ReceiptUrl"] = self.receiptUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidPayload") {
            self.androidPayloadShrink = dict["AndroidPayload"] as! String
        }
        if dict.keys.contains("ChannelProperties") {
            self.channelPropertiesShrink = dict["ChannelProperties"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DeviceTokens") {
            self.deviceTokens = dict["DeviceTokens"] as! String
        }
        if dict.keys.contains("IosPayload") {
            self.iosPayloadShrink = dict["IosPayload"] as! String
        }
        if dict.keys.contains("Policy") {
            self.policyShrink = dict["Policy"] as! String
        }
        if dict.keys.contains("ProductionMode") {
            self.productionMode = dict["ProductionMode"] as! Bool
        }
        if dict.keys.contains("ReceiptType") {
            self.receiptType = dict["ReceiptType"] as! Int32
        }
        if dict.keys.contains("ReceiptUrl") {
            self.receiptUrl = dict["ReceiptUrl"] as! String
        }
    }
}

public class SendByDeviceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var msgId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MsgId") {
                self.msgId = dict["MsgId"] as! String
            }
        }
    }
    public var code: String?

    public var data: SendByDeviceResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = SendByDeviceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SendByDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendByDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SendByDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
