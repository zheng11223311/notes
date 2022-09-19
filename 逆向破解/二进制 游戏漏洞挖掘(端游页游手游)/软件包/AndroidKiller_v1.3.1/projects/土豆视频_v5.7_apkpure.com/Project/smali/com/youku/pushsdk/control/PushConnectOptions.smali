.class public Lcom/youku/pushsdk/control/PushConnectOptions;
.super Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
.source "PushConnectOptions.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/youku/pushsdk/control/PushConnectOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/pushsdk/control/PushConnectOptions;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    .line 30
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/youku/pushsdk/control/PushConnectOptions;->setKeepAliveInterval(I)V

    .line 31
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/youku/pushsdk/control/PushConnectOptions;->setConnectionTimeout(I)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/pushsdk/control/PushConnectOptions;->setCleanSession(Z)V

    .line 33
    return-void
.end method
