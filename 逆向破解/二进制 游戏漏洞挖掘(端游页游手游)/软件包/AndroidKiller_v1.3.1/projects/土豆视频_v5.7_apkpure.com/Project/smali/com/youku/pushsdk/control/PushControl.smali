.class public Lcom/youku/pushsdk/control/PushControl;
.super Ljava/lang/Object;
.source "PushControl.java"

# interfaces
.implements Lcom/youku/pushsdk/control/IPushControl;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TIME_OUT:I = 0x7d0


# instance fields
.field private clientId:Ljava/lang/String;

.field private connOptions:Lcom/youku/pushsdk/control/PushConnectOptions;

.field private connSuccessful:Z

.field private eventHandler:Landroid/os/Handler;

.field private mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

.field private pushCallBack:Lcom/youku/pushsdk/control/PushCallback;

.field private final server:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/youku/pushsdk/control/PushControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/youku/pushsdk/control/PushCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverUrl"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "clientId"    # Ljava/lang/String;
    .param p5, "pushCallBack"    # Lcom/youku/pushsdk/control/PushCallback;

    .prologue
    .line 42
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/youku/pushsdk/control/PushControl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/pushsdk/control/PushCallback;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/pushsdk/control/PushCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverUrl"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "clientId"    # Ljava/lang/String;
    .param p5, "pushCallBack"    # Lcom/youku/pushsdk/control/PushCallback;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/pushsdk/control/PushControl;->connSuccessful:Z

    .line 54
    sget-object v0, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    const-string v1, "PushManager initial constructor"

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p2, p3}, Lcom/youku/pushsdk/control/PushControl;->getBrokerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/pushsdk/control/PushControl;->server:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/youku/pushsdk/control/PushControl;->clientId:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/youku/pushsdk/control/PushControl;->pushCallBack:Lcom/youku/pushsdk/control/PushCallback;

    .line 58
    new-instance v0, Lcom/youku/pushsdk/control/PushConnectOptions;

    invoke-direct {v0, p1}, Lcom/youku/pushsdk/control/PushConnectOptions;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youku/pushsdk/control/PushControl;->connOptions:Lcom/youku/pushsdk/control/PushConnectOptions;

    .line 59
    return-void
.end method

.method private getBrokerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "serverUrl"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tcp://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public connect()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 121
    sget-object v2, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    const-string v3, "connect mqtt server"

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/youku/pushsdk/control/PushControl;->server:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/youku/pushsdk/control/PushControl;->clientId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    :cond_0
    sget-object v2, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    const-string v3, "PushManager initial failed"

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_0
    return v1

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/youku/pushsdk/control/PushControl;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    if-nez v2, :cond_2

    .line 129
    :try_start_0
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttClient;

    iget-object v3, p0, Lcom/youku/pushsdk/control/PushControl;->server:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/pushsdk/control/PushControl;->clientId:Ljava/lang/String;

    new-instance v5, Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;

    invoke-direct {v5}, Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/MqttClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V

    iput-object v2, p0, Lcom/youku/pushsdk/control/PushControl;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    .line 130
    iget-object v2, p0, Lcom/youku/pushsdk/control/PushControl;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    iget-object v3, p0, Lcom/youku/pushsdk/control/PushControl;->pushCallBack:Lcom/youku/pushsdk/control/PushCallback;

    invoke-virtual {v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V

    .line 131
    iget-object v2, p0, Lcom/youku/pushsdk/control/PushControl;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->setTimeToWait(J)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/youku/pushsdk/control/PushControl;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    iget-object v3, p0, Lcom/youku/pushsdk/control/PushControl;->connOptions:Lcom/youku/pushsdk/control/PushConnectOptions;

    invoke-virtual {v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)V

    .line 143
    sget-object v2, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    const-string v3, "MQTT connect successfully!"

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/youku/pushsdk/control/PushControl;->connSuccessful:Z

    .line 145
    iget-object v2, p0, Lcom/youku/pushsdk/control/PushControl;->eventHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const-string v4, "PUSH_MQTT\u6210\u529f\u8fde\u63a5"

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Lorg/eclipse/paho/client/mqttv3/MqttSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_1 .. :try_end_1} :catch_2

    .line 163
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/youku/pushsdk/control/PushControl;->connSuccessful:Z

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lorg/eclipse/paho/client/mqttv3/MqttException;
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->printStackTrace()V

    goto :goto_1

    .line 146
    .end local v0    # "e":Lorg/eclipse/paho/client/mqttv3/MqttException;
    :catch_1
    move-exception v0

    .line 148
    .local v0, "e":Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
    iput-boolean v1, p0, Lcom/youku/pushsdk/control/PushControl;->connSuccessful:Z

    .line 149
    sget-object v1, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect server MqttSecurityException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;->printStackTrace()V

    goto :goto_2

    .line 151
    .end local v0    # "e":Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
    :catch_2
    move-exception v0

    .line 153
    .local v0, "e":Lorg/eclipse/paho/client/mqttv3/MqttException;
    iput-boolean v1, p0, Lcom/youku/pushsdk/control/PushControl;->connSuccessful:Z

    .line 154
    sget-object v1, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect server MqttException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    move-result v1

    const/16 v2, 0x7d00

    if-ne v1, v2, :cond_3

    .line 156
    sget-object v1, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    const-string v2, "connect timeout "

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->printStackTrace()V

    goto :goto_2
.end method

.method public disConnect()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/youku/pushsdk/control/PushControl;->disConnect(I)V

    .line 74
    return-void
.end method

.method public disConnect(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 77
    sget-object v1, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    const-string v2, "PushManager: stop push work..."

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/youku/pushsdk/control/PushControl;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->disconnect(J)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/youku/pushsdk/control/PushControl;->connSuccessful:Z

    .line 94
    sget-object v1, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    const-string v2, "PushManager: stop push work done"

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lorg/eclipse/paho/client/mqttv3/MqttException;
    sget-object v1, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    const-string v2, "PushManager: stop push work failed!"

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    move-result v1

    const/16 v2, 0x7d00

    if-ne v1, v2, :cond_0

    .line 85
    sget-object v1, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    const-string v2, "disconnect timeout "

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->printStackTrace()V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/youku/pushsdk/control/PushControl;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mqttClient is null in isConnected()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/youku/pushsdk/control/PushControl;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public setEventHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/youku/pushsdk/control/PushControl;->eventHandler:Landroid/os/Handler;

    .line 256
    return-void
.end method

.method public setPushConnectOptions(Lcom/youku/pushsdk/control/PushConnectOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/youku/pushsdk/control/PushConnectOptions;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/youku/pushsdk/control/PushControl;->connOptions:Lcom/youku/pushsdk/control/PushConnectOptions;

    .line 67
    return-void
.end method

.method public subscribe([Ljava/lang/String;)Z
    .locals 13
    .param p1, "topics"    # [Ljava/lang/String;

    .prologue
    .line 169
    const/4 v7, 0x0

    .line 170
    .local v7, "result":Z
    sget-object v10, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "subcribe : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v10, p0, Lcom/youku/pushsdk/control/PushControl;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/youku/pushsdk/control/PushControl;->connSuccessful:Z

    if-eqz v10, :cond_0

    .line 174
    :try_start_0
    array-length v4, p1

    .line 175
    .local v4, "len":I
    new-array v6, v4, [I

    .line 176
    .local v6, "qos":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 182
    iget-object v10, p0, Lcom/youku/pushsdk/control/PushControl;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v10, p1, v6}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe([Ljava/lang/String;[I)V

    .line 183
    const/4 v7, 0x1

    .line 184
    const/4 v10, 0x1

    sput-boolean v10, Lcom/youku/pushsdk/service/PushService;->SUBSCRIBED:Z

    .line 185
    sget-object v10, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "set PushService.SUBSCRIBED = true"

    invoke-static {v10, v11}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v6    # "qos":[I
    :cond_0
    :goto_1
    move v8, v7

    .line 228
    .end local v7    # "result":Z
    .local v8, "result":Z
    :goto_2
    return v8

    .line 177
    .end local v8    # "result":Z
    .restart local v3    # "i":I
    .restart local v4    # "len":I
    .restart local v6    # "qos":[I
    .restart local v7    # "result":Z
    :cond_1
    const/4 v10, 0x1

    aput v10, v6, v3
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v6    # "qos":[I
    :catch_0
    move-exception v2

    .line 189
    .local v2, "e":Lorg/eclipse/paho/client/mqttv3/MqttException;
    const/4 v10, 0x0

    sput-boolean v10, Lcom/youku/pushsdk/service/PushService;->SUBSCRIBED:Z

    .line 190
    sget-object v10, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "set PushService.SUBSCRIBED = false"

    invoke-static {v10, v11}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 193
    .local v5, "msg":Landroid/os/Message;
    const/4 v10, 0x1

    iput v10, v5, Landroid/os/Message;->what:I

    .line 194
    const-string v10, "PUSH_MQTT\u8ba2\u9605\u5931\u8d25"

    iput-object v10, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 195
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v1, "data":Landroid/os/Bundle;
    sget-object v10, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "subscribe failed topics "

    invoke-static {v10, v11}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    array-length v10, p1

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_3

    :cond_2
    move v8, v7

    .line 199
    .end local v7    # "result":Z
    .restart local v8    # "result":Z
    goto :goto_2

    .line 202
    .end local v8    # "result":Z
    .restart local v7    # "result":Z
    :cond_3
    array-length v10, p1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 203
    const-string v10, "event_topics"

    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v10, "event_apps"

    const/4 v11, 0x0

    aget-object v11, p1, v11

    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_3
    invoke-virtual {v5, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 219
    iget-object v10, p0, Lcom/youku/pushsdk/control/PushControl;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    sget-object v10, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "subcribe failed : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;->printStackTrace()V

    goto/16 :goto_1

    .line 206
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v9, "tps":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v0, "apps":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    array-length v10, p1

    if-lt v3, v10, :cond_5

    .line 213
    const-string v10, "event_topics"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v10, "event_apps"

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 209
    :cond_5
    aget-object v10, p1, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    aget-object v10, p1, v3

    aget-object v11, p1, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method public unsubscribe(Ljava/lang/String;)Z
    .locals 5
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "result":Z
    sget-object v2, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unsubcribe : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Lcom/youku/pushsdk/control/PushControl;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    if-eqz v2, :cond_0

    .line 238
    :try_start_0
    iget-object v2, p0, Lcom/youku/pushsdk/control/PushControl;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v2, p1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->unsubscribe(Ljava/lang/String;)V

    .line 239
    const/4 v1, 0x1

    .line 240
    sget-object v2, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unscribe successfully!"

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    :goto_0
    return v1

    .line 241
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Lorg/eclipse/paho/client/mqttv3/MqttException;
    sget-object v2, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unsubscribe failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    move-result v2

    const/16 v3, 0x7d00

    if-ne v2, v3, :cond_1

    .line 245
    sget-object v2, Lcom/youku/pushsdk/control/PushControl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unsubscribe timeout ,close connect"

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->printStackTrace()V

    goto :goto_0
.end method
