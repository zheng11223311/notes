.class public Lcom/youku/pushsdk/constants/StatusDataKeyConstants;
.super Ljava/lang/Object;
.source "StatusDataKeyConstants.java"


# static fields
.field public static final EVENT_BASE_INFO:Ljava/lang/String; = "PUSH_\u57fa\u7840\u4fe1\u606f\u6c47\u62a5"

.field public static final EVENT_DUPLICATE_MESSAGE:Ljava/lang/String; = "PUSH_\u91cd\u590d\u6d88\u606f"

.field public static final EVENT_MQTT_CONNECT_SUCCESS:Ljava/lang/String; = "PUSH_MQTT\u6210\u529f\u8fde\u63a5"

.field public static final EVENT_MQTT_MSG_ARRIVED_ACK:Ljava/lang/String; = "PUSH_MQTT\u63a5\u6536\u4fe1\u606f\u786e\u8ba4"

.field public static final EVENT_MQTT_OPEN:Ljava/lang/String; = "PUSH_MQTT\u8fdb\u7a0b\u5f00\u542f"

.field public static final EVENT_MQTT_RECEIVE_HEART_BEAT_FAIL:Ljava/lang/String; = "PUSH_MQTT\u63a5\u6536\u5fc3\u8df3\u5931\u8d25"

.field public static final EVENT_MQTT_SUBSCRIBE_FAIL:Ljava/lang/String; = "PUSH_MQTT\u8ba2\u9605\u5931\u8d25"

.field public static final EVENT_NET_CHANGE:Ljava/lang/String; = "PUSH_\u7528\u6237\u7f51\u7edc\u5207\u6362 "

.field public static final EVENT_NET_DISCONNECT:Ljava/lang/String; = "PUSH_\u7528\u6237\u7f51\u7edc\u5173\u95ed"

.field public static final EVENT_PUSH_SWITCH_CLOSE:Ljava/lang/String; = "PUSH_\u7528\u6237\u5173\u95ed\u63a8\u9001"

.field public static final EVENT_PUSH_SWITCH_OPEN:Ljava/lang/String; = "PUSH_\u7528\u6237\u6253\u5f00\u63a8\u9001"

.field public static final KEY_APP_TYPE:Ljava/lang/String; = "apps"

.field public static final KEY_BRAND:Ljava/lang/String; = "brand"

.field public static final KEY_MODEL:Ljava/lang/String; = "product"

.field public static final KEY_MQTT_STATUS:Ljava/lang/String; = "mqst"

.field public static final KEY_NET_STATE:Ljava/lang/String; = "netst"

.field public static final KEY_NET_TYPE:Ljava/lang/String; = "netype"

.field public static final KEY_OS_NAME:Ljava/lang/String; = "osname"

.field public static final KEY_PUSH_SERVICE_STATUS:Ljava/lang/String; = "psst"

.field public static final KEY_SAFE_APP:Ljava/lang/String; = "secsofts"

.field public static final KEY_TOKEN:Ljava/lang/String; = "topics"

.field public static final KEY_VERSION:Ljava/lang/String; = "ver"

.field public static final PUSH_SDK_VERSION:Ljava/lang/String; = "2.1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
