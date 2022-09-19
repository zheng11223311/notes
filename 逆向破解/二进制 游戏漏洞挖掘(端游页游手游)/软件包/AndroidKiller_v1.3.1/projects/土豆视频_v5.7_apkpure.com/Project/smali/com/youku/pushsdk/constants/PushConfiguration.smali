.class public Lcom/youku/pushsdk/constants/PushConfiguration;
.super Ljava/lang/Object;
.source "PushConfiguration.java"


# static fields
.field public static final CLIENT_ID_SUFFIX:Ljava/lang/String; = "/PSH2.1"

.field public static final CONNECT_TIMEOUT:I = 0xa

.field public static final KEEP_ALIVE_TIME:I = 0x12c

.field public static MQTT_SERVER:Ljava/lang/String; = null

.field public static MQTT_SERVER_PORT:I = 0x0

.field public static final OFFICIAL_MQTT_SERVER_IP:Ljava/lang/String; = "mqtt.m.youku.com"

.field public static final OFFICIAL_MQTT_SERVER_PORT:I = 0x1f90

.field public static final PUSH_SERVICE_PROCESS_NAME:Ljava/lang/String; = "com.push.Youku_PushService"

.field public static final QoS:I = 0x1

.field public static final TEST_MQTT_SERVER_IP:Ljava/lang/String; = "dev-mqtt.m.youku.com"

.field public static final TEST_MQTT_SERVER_PORT:I = 0x1bb


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x1f90

    sput v0, Lcom/youku/pushsdk/constants/PushConfiguration;->MQTT_SERVER_PORT:I

    .line 35
    const-string v0, "mqtt.m.youku.com"

    sput-object v0, Lcom/youku/pushsdk/constants/PushConfiguration;->MQTT_SERVER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
