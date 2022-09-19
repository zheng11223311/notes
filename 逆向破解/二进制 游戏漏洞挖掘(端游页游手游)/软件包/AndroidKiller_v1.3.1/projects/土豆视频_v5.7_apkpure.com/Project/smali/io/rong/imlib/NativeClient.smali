.class public final Lio/rong/imlib/NativeClient;
.super Ljava/lang/Object;
.source "NativeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/NativeClient$RealTimeLocationListener;,
        Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;,
        Lio/rong/imlib/NativeClient$OnReceiveMessageListener;,
        Lio/rong/imlib/NativeClient$GetNotificationQuietHoursCallback;,
        Lio/rong/imlib/NativeClient$IResultProgressCallback;,
        Lio/rong/imlib/NativeClient$IResultSendMessageCallback;,
        Lio/rong/imlib/NativeClient$IResultCallback;,
        Lio/rong/imlib/NativeClient$OperationCallback;,
        Lio/rong/imlib/NativeClient$ICodeListener;,
        Lio/rong/imlib/NativeClient$ICodeCallback;,
        Lio/rong/imlib/NativeClient$BlacklistStatus;,
        Lio/rong/imlib/NativeClient$NavigationListener;
    }
.end annotation


# static fields
.field private static client:Lio/rong/imlib/NativeClient;

.field private static constructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lio/rong/imlib/model/MessageContent;",
            ">;>;"
        }
    .end annotation
.end field

.field private static conversationTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mConnectStatusListener:Lio/rong/imlib/NativeClient$ICodeListener;

.field private static mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

.field private static messageHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lio/rong/imlib/model/MessageContent$MessageHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static nativeObj:Lio/rong/imlib/NativeObject;

.field private static resourcePath:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;


# instance fields
.field private currentUserId:Ljava/lang/String;

.field private mReceiveMessageListener:Lio/rong/imlib/NativeClient$OnReceiveMessageListener;

.field private mReceiveMessageListenerEx:Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    sput-object v0, Lio/rong/imlib/NativeClient;->client:Lio/rong/imlib/NativeClient;

    .line 54
    sput-object v0, Lio/rong/imlib/NativeClient;->sContext:Landroid/content/Context;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/rong/imlib/NativeClient;->constructorMap:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/rong/imlib/NativeClient;->messageHandlerMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lio/rong/imlib/NativeClient;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lio/rong/imlib/NativeClient$ICodeListener;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lio/rong/imlib/NativeClient;->mConnectStatusListener:Lio/rong/imlib/NativeClient$ICodeListener;

    return-object v0
.end method

.method static synthetic access$200()Lio/rong/imlib/NativeClient;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lio/rong/imlib/NativeClient;->client:Lio/rong/imlib/NativeClient;

    return-object v0
.end method

.method static synthetic access$302(Lio/rong/imlib/NativeClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/rong/imlib/NativeClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lio/rong/imlib/NativeClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/NativeClient;

    .prologue
    .line 51
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->token:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lio/rong/imlib/NativeClient;->renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lio/rong/imlib/NativeClient;)Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/NativeClient;

    .prologue
    .line 51
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mReceiveMessageListenerEx:Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;

    return-object v0
.end method

.method private clearCachedResources(Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 0
    .param p1, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;

    .prologue
    .line 1539
    return-void
.end method

.method public static connect(Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 3
    .param p0, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "callback":Lio/rong/imlib/NativeClient$IResultCallback;, "Lio/rong/imlib/NativeClient$IResultCallback<Ljava/lang/String;>;"
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v1, :cond_0

    .line 224
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_0
    sget-object v1, Lio/rong/imlib/NativeClient;->resourcePath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 227
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "\u8d44\u6e90\u8def\u5f84\u5f02\u5e38\u3002"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_1
    if-nez p0, :cond_2

    .line 230
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Token\u4e0d\u80fd\u4e3a\u7a7a\u3002"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_2
    sget-object v1, Lio/rong/imlib/NativeClient;->client:Lio/rong/imlib/NativeClient;

    iput-object p0, v1, Lio/rong/imlib/NativeClient;->token:Ljava/lang/String;

    .line 234
    sget-object v1, Lio/rong/imlib/NativeClient;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lio/rong/imlib/NativeClient;->setEnvInfo(Landroid/content/Context;)V

    .line 236
    const-string v1, "NativeClient"

    const-string v2, "connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v0, Lio/rong/imlib/NativeClient$1;

    invoke-direct {v0, p1}, Lio/rong/imlib/NativeClient$1;-><init>(Lio/rong/imlib/NativeClient$IResultCallback;)V

    .line 256
    .local v0, "connectAckCallback":Lio/rong/imlib/NativeObject$ConnectAckCallback;
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v1, p0, v0}, Lio/rong/imlib/NativeObject;->Connect(Ljava/lang/String;Lio/rong/imlib/NativeObject$ConnectAckCallback;)V

    .line 257
    return-void
.end method

.method private static final createPath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RongCloud/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .local v0, "baseDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getConversationType(Ljava/lang/String;)V
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 177
    sget-object v0, Lio/rong/imlib/NativeClient;->conversationTypeList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method public static getNativeInstance()Lio/rong/imlib/NativeClient;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lio/rong/imlib/NativeClient;->client:Lio/rong/imlib/NativeClient;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)Lio/rong/imlib/NativeClient;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context\u5f02\u5e38"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lio/rong/imlib/NativeClient;->sContext:Landroid/content/Context;

    .line 147
    new-instance v0, Lio/rong/imlib/NativeClient;

    invoke-direct {v0}, Lio/rong/imlib/NativeClient;-><init>()V

    sput-object v0, Lio/rong/imlib/NativeClient;->client:Lio/rong/imlib/NativeClient;

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    .line 150
    .local v7, "environmentPath":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v0, "RongCloud"

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    .local v6, "baseDirectory":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 155
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/rong/imlib/NativeClient;->resourcePath:Ljava/lang/String;

    .line 156
    invoke-static {p0}, Lio/rong/common/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "deviceId":Ljava/lang/String;
    new-instance v0, Lio/rong/imlib/NativeObject;

    invoke-direct {v0}, Lio/rong/imlib/NativeObject;-><init>()V

    sput-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    .line 159
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/NativeObject;->InitClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 160
    .local v8, "result":I
    const-string v0, "NativeClient----"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/rong/imlib/NativeClient;->resourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", init result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$NavigationListener;

    invoke-direct {v1}, Lio/rong/imlib/NativeClient$NavigationListener;-><init>()V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeObject;->SetNaviDataListener(Lio/rong/imlib/NativeObject$NaviDataListener;)V

    .line 163
    invoke-static {p0}, Lio/rong/imlib/location/RealTimeLocationManager;->init(Landroid/content/Context;)Lio/rong/imlib/location/RealTimeLocationManager;

    move-result-object v0

    sput-object v0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    .line 165
    sget-object v0, Lio/rong/imlib/NativeClient;->client:Lio/rong/imlib/NativeClient;

    return-object v0
.end method

.method public static registerMessageType(Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/rong/imlib/model/MessageContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/imlib/AnnotationNotFoundException;
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v6, :cond_0

    .line 188
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 190
    :cond_0
    if-nez p0, :cond_1

    .line 191
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "MessageContent \u4e3a\u7a7a\uff01"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 193
    :cond_1
    const-class v6, Lio/rong/imlib/MessageTag;

    invoke-virtual {p0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/MessageTag;

    .line 195
    .local v5, "tag":Lio/rong/imlib/MessageTag;
    if-eqz v5, :cond_2

    .line 196
    invoke-interface {v5}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "objName":Ljava/lang/String;
    invoke-interface {v5}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v2

    .line 200
    .local v2, "flag":I
    const/4 v6, 0x1

    :try_start_0
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, [B

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 201
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent;>;"
    invoke-interface {v5}, Lio/rong/imlib/MessageTag;->messageHandler()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 203
    .local v3, "handlerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent$MessageHandler;>;"
    sget-object v6, Lio/rong/imlib/NativeClient;->constructorMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v6, Lio/rong/imlib/NativeClient;->messageHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v6, v4, v2}, Lio/rong/imlib/NativeObject;->RegisterMessageType(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    return-void

    .line 206
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent;>;"
    .end local v3    # "handlerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent$MessageHandler;>;"
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v6, Lio/rong/imlib/AnnotationNotFoundException;

    invoke-direct {v6}, Lio/rong/imlib/AnnotationNotFoundException;-><init>()V

    throw v6

    .line 211
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .end local v2    # "flag":I
    .end local v4    # "objName":Ljava/lang/String;
    :cond_2
    new-instance v6, Lio/rong/imlib/AnnotationNotFoundException;

    invoke-direct {v6}, Lio/rong/imlib/AnnotationNotFoundException;-><init>()V

    throw v6
.end method

.method private renderConversationFromJson(Lorg/json/JSONObject;)Lio/rong/imlib/model/Conversation;
    .locals 6
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x1

    .line 422
    new-instance v1, Lio/rong/imlib/model/Conversation;

    invoke-direct {v1}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 423
    .local v1, "conversation":Lio/rong/imlib/model/Conversation;
    const-string/jumbo v4, "target_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 424
    const-string v4, "last_message_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lio/rong/imlib/model/Conversation;->setLatestMessageId(I)V

    .line 425
    const-string v4, "conversation_title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/rong/imlib/model/Conversation;->setConversationTitle(Ljava/lang/String;)V

    .line 426
    const-string/jumbo v4, "unread_count"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lio/rong/imlib/model/Conversation;->setUnreadMessageCount(I)V

    .line 427
    const-string v4, "conversation_category"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 428
    const-string v4, "is_top"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_1

    :goto_0
    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Conversation;->setTop(Z)V

    .line 429
    const-string v3, "object_name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Conversation;->setObjectName(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getLatestMessageId()I

    move-result v3

    if-lez v3, :cond_0

    .line 432
    new-instance v2, Lio/rong/imlib/model/Message;

    invoke-direct {v2}, Lio/rong/imlib/model/Message;-><init>()V

    .line 433
    .local v2, "message":Lio/rong/imlib/model/Message;
    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getLatestMessageId()I

    move-result v3

    invoke-virtual {v2, v3}, Lio/rong/imlib/model/Message;->setMessageId(I)V

    .line 434
    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getSenderUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getObjectName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4, v2}, Lio/rong/imlib/NativeClient;->renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    .line 436
    .local v0, "content":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {v1, v0}, Lio/rong/imlib/model/Conversation;->setLatestMessage(Lio/rong/imlib/model/MessageContent;)V

    .line 438
    .end local v0    # "content":Lio/rong/imlib/model/MessageContent;
    .end local v2    # "message":Lio/rong/imlib/model/Message;
    :cond_0
    new-instance v3, Lio/rong/imlib/model/Message$ReceivedStatus;

    const-string v4, "read_status"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lio/rong/imlib/model/Message$ReceivedStatus;-><init>(I)V

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Conversation;->setReceivedStatus(Lio/rong/imlib/model/Message$ReceivedStatus;)V

    .line 439
    const-string v3, "receive_time"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lio/rong/imlib/model/Conversation;->setReceivedTime(J)V

    .line 440
    const-string/jumbo v3, "send_time"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lio/rong/imlib/model/Conversation;->setSentTime(J)V

    .line 441
    const-string/jumbo v3, "send_status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lio/rong/imlib/model/Message$SentStatus;->setValue(I)Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Conversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 442
    const-string/jumbo v3, "sender_user_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Conversation;->setSenderUserId(Ljava/lang/String;)V

    .line 443
    const-string/jumbo v3, "sender_user_name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Conversation;->setSenderUserName(Ljava/lang/String;)V

    .line 444
    const-string v3, "draft_message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Conversation;->setDraft(Ljava/lang/String;)V

    .line 445
    const-string v3, "block_push"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->DO_NOT_DISTURB:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    :goto_1
    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Conversation;->setNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V

    .line 448
    return-object v1

    .line 428
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 445
    :cond_2
    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->NOTIFY:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    goto :goto_1
.end method

.method private renderConversationFromNative(Lio/rong/imlib/NativeObject$Conversation;)Lio/rong/imlib/model/Conversation;
    .locals 4
    .param p1, "conversation"    # Lio/rong/imlib/NativeObject$Conversation;

    .prologue
    .line 395
    new-instance v1, Lio/rong/imlib/model/Conversation;

    invoke-direct {v1}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 396
    .local v1, "result":Lio/rong/imlib/model/Conversation;
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getMessageId()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setLatestMessageId(I)V

    .line 398
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getConversationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setConversationTitle(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getUnreadMessageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setUnreadMessageCount(I)V

    .line 400
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getConversationType()I

    move-result v2

    invoke-static {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 401
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->isTop()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setTop(Z)V

    .line 402
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getObjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setObjectName(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getMessageId()I

    move-result v2

    if-lez v2, :cond_0

    .line 404
    new-instance v0, Lio/rong/imlib/model/Message;

    invoke-direct {v0}, Lio/rong/imlib/model/Message;-><init>()V

    .line 405
    .local v0, "message":Lio/rong/imlib/model/Message;
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getMessageId()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/rong/imlib/model/Message;->setMessageId(I)V

    .line 406
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getSenderUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getObjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getContent()[B

    move-result-object v3

    invoke-static {v2, v3, v0}, Lio/rong/imlib/NativeClient;->renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setLatestMessage(Lio/rong/imlib/model/MessageContent;)V

    .line 409
    .end local v0    # "message":Lio/rong/imlib/model/Message;
    :cond_0
    new-instance v2, Lio/rong/imlib/model/Message$ReceivedStatus;

    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getReadStatus()I

    move-result v3

    invoke-direct {v2, v3}, Lio/rong/imlib/model/Message$ReceivedStatus;-><init>(I)V

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setReceivedStatus(Lio/rong/imlib/model/Message$ReceivedStatus;)V

    .line 410
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getReceivedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/rong/imlib/model/Conversation;->setReceivedTime(J)V

    .line 411
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getSentTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/rong/imlib/model/Conversation;->setSentTime(J)V

    .line 412
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getSenderUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setSenderUserId(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getSentStatus()I

    move-result v2

    invoke-static {v2}, Lio/rong/imlib/model/Message$SentStatus;->setValue(I)Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 414
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setSenderUserName(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getDraft()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setDraft(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getPortraitUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setPortraitUrl(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->isBlockPush()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->DO_NOT_DISTURB:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    :goto_0
    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V

    .line 418
    return-object v1

    .line 417
    :cond_1
    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->NOTIFY:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    goto :goto_0
.end method

.method private static renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;
    .locals 9
    .param p0, "objectName"    # Ljava/lang/String;
    .param p1, "content"    # [B
    .param p2, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 69
    sget-object v6, Lio/rong/imlib/NativeClient;->constructorMap:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 70
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent;>;"
    const/4 v5, 0x0

    .line 72
    .local v5, "result":Lio/rong/imlib/model/MessageContent;
    if-nez v1, :cond_0

    .line 73
    new-instance v6, Lio/rong/imlib/model/UnknownMessage;

    invoke-direct {v6, p1}, Lio/rong/imlib/model/UnknownMessage;-><init>([B)V

    .line 105
    :goto_0
    return-object v6

    .line 77
    :cond_0
    const/4 v6, 0x1

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lio/rong/imlib/model/MessageContent;

    move-object v5, v0

    .line 79
    sget-object v6, Lio/rong/imlib/NativeClient;->messageHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 82
    .local v4, "handlerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent$MessageHandler;>;"
    if-eqz v4, :cond_1

    .line 83
    const/4 v6, 0x1

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lio/rong/imlib/NativeClient;->sContext:Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imlib/model/MessageContent$MessageHandler;

    .line 84
    .local v3, "handler":Lio/rong/imlib/model/MessageContent$MessageHandler;
    invoke-virtual {v3, p2, v5}, Lio/rong/imlib/model/MessageContent$MessageHandler;->decodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)V

    .end local v3    # "handler":Lio/rong/imlib/model/MessageContent$MessageHandler;
    .end local v4    # "handlerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent$MessageHandler;>;"
    :goto_1
    move-object v6, v5

    .line 105
    goto :goto_0

    .line 86
    .restart local v4    # "handlerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent$MessageHandler;>;"
    :cond_1
    const-string/jumbo v6, "renderMessageContent"

    const-string/jumbo v7, "\u8be5\u6d88\u606f\u672a\u6ce8\u518c\uff0c\u8bf7\u8c03\u7528registerMessageType\u65b9\u6cd5\u6ce8\u518c\u3002"

    invoke-static {v4, v6, v7}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/InstantiationException;
    :try_start_2
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5

    .line 97
    .end local v2    # "e":Ljava/lang/InstantiationException;
    .end local v4    # "handlerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent$MessageHandler;>;"
    :catch_1
    move-exception v2

    .line 98
    .restart local v2    # "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 90
    .end local v2    # "e":Ljava/lang/InstantiationException;
    .restart local v4    # "handlerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent$MessageHandler;>;"
    :catch_2
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5

    .line 99
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v4    # "handlerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent$MessageHandler;>;"
    :catch_3
    move-exception v2

    .line 100
    .restart local v2    # "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 92
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v4    # "handlerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent$MessageHandler;>;"
    :catch_4
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_4
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_5

    .line 101
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v4    # "handlerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent$MessageHandler;>;"
    :catch_5
    move-exception v2

    .line 102
    .restart local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static setConnectionStatusListener(Lio/rong/imlib/NativeClient$ICodeListener;)V
    .locals 2
    .param p0, "listener"    # Lio/rong/imlib/NativeClient$ICodeListener;

    .prologue
    .line 1839
    sput-object p0, Lio/rong/imlib/NativeClient;->mConnectStatusListener:Lio/rong/imlib/NativeClient$ICodeListener;

    .line 1841
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$23;

    invoke-direct {v1}, Lio/rong/imlib/NativeClient$23;-><init>()V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeObject;->SetExceptionListener(Lio/rong/imlib/NativeObject$ExceptionListener;)V

    .line 1849
    return-void
.end method

.method private static setEnvInfo(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2406
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 2408
    .local v7, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 2411
    .local v6, "connectivityManager":Landroid/net/ConnectivityManager;
    const-string v4, ""

    .line 2412
    .local v4, "network":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2413
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    .line 2416
    :cond_0
    const-string v5, ""

    .line 2417
    .local v5, "MCCMNC":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 2418
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    .line 2421
    :cond_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2422
    .local v1, "manufacturer":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2424
    .local v2, "model":Ljava/lang/String;
    if-nez v1, :cond_2

    const-string v1, ""

    .line 2425
    :cond_2
    if-nez v2, :cond_3

    const-string v2, ""

    .line 2428
    :cond_3
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/NativeObject;->SetDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    return-void
.end method


# virtual methods
.method public addListener(ILjava/lang/String;Lio/rong/imlib/NativeClient$RealTimeLocationListener;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "listener"    # Lio/rong/imlib/NativeClient$RealTimeLocationListener;

    .prologue
    .line 2603
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2604
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2606
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_1

    .line 2607
    const-string v0, "addListener"

    const-string v1, "RealTimeLocationManager Not setup!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    :goto_0
    return-void

    .line 2610
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lio/rong/imlib/location/RealTimeLocationManager;->addListener(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/NativeClient$RealTimeLocationListener;)V

    goto :goto_0
.end method

.method public addMemberToDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 3
    .param p1, "discussionId"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lio/rong/imlib/NativeClient$OperationCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1101
    .local p2, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v1, :cond_0

    .line 1102
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1104
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1105
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "discussionId \u6216 userIdList \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1107
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 1108
    .local v0, "ids":[Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1110
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v2, Lio/rong/imlib/NativeClient$9;

    invoke-direct {v2, p0, p3}, Lio/rong/imlib/NativeClient$9;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v1, p1, v0, v2}, Lio/rong/imlib/NativeObject;->InviteMemberToDiscussion(Ljava/lang/String;[Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 1124
    return-void
.end method

.method public addToBlacklist(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;

    .prologue
    .line 2097
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2098
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2100
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    .line 2101
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2103
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$29;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/NativeClient$29;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeObject;->AddToBlacklist(Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 2114
    return-void
.end method

.method public varargs clearConversations([Lio/rong/imlib/model/Conversation$ConversationType;)Z
    .locals 8
    .param p1, "conversationTypes"    # [Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 2017
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v6, :cond_0

    .line 2018
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2020
    :cond_0
    if-eqz p1, :cond_1

    array-length v6, p1

    if-nez v6, :cond_2

    .line 2021
    :cond_1
    new-instance v6, Ljava/lang/IllegalAccessException;

    const-string v7, "ConversationTypes \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v6, v7}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 2024
    :cond_2
    array-length v6, p1

    new-array v2, v6, [I

    .line 2026
    .local v2, "conversationTypeValues":[I
    const/4 v3, 0x0

    .line 2027
    .local v3, "i":I
    move-object v0, p1

    .local v0, "arr$":[Lio/rong/imlib/model/Conversation$ConversationType;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 2028
    .local v1, "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v6

    aput v6, v2, v3

    .line 2029
    add-int/lit8 v3, v3, 0x1

    .line 2027
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2032
    .end local v1    # "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_3
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v6, v2}, Lio/rong/imlib/NativeObject;->ClearConversations([I)Z

    move-result v6

    return v6
.end method

.method public clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 720
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 721
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 724
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversationType \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/NativeObject;->ClearMessages(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 737
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 738
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 740
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 741
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversationType \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/NativeObject;->ClearUnread(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 842
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 843
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversationType \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 848
    :cond_2
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lio/rong/imlib/NativeClient;->saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 919
    .local p2, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "callback":Lio/rong/imlib/NativeClient$IResultCallback;, "Lio/rong/imlib/NativeClient$IResultCallback<Ljava/lang/String;>;"
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v1, :cond_0

    .line 920
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 922
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 923
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name \u6216 userIdList \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 925
    :cond_2
    iget-object v1, p0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 926
    iget-object v1, p0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 929
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 930
    .local v0, "ids":[Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 932
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v2, Lio/rong/imlib/NativeClient$6;

    invoke-direct {v2, p0, p3}, Lio/rong/imlib/NativeClient$6;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v1, p1, v0, v2}, Lio/rong/imlib/NativeObject;->CreateInviteDiscussion(Ljava/lang/String;[Ljava/lang/String;Lio/rong/imlib/NativeObject$CreateDiscussionCallback;)V

    .line 949
    return-void
.end method

.method public deleteMessages([I)Z
    .locals 2
    .param p1, "messageIds"    # [I

    .prologue
    .line 703
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 704
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    .line 707
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MessageIds \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v0, p1}, Lio/rong/imlib/NativeObject;->DeleteMessages([I)Z

    move-result v0

    return v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/rong/imlib/NativeClient;->disconnect(Z)V

    .line 312
    return-void
.end method

.method public disconnect(Z)V
    .locals 3
    .param p1, "isReceivePush"    # Z

    .prologue
    .line 320
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    const-string v0, "disconnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReceivePush"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1, v0}, Lio/rong/imlib/NativeObject;->Disconnect(I)V

    .line 326
    return-void

    .line 325
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public downloadMedia(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ILjava/lang/String;Lio/rong/imlib/NativeClient$IResultProgressCallback;)V
    .locals 6
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "imageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lio/rong/imlib/NativeClient$IResultProgressCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1501
    .local p5, "callback":Lio/rong/imlib/NativeClient$IResultProgressCallback;, "Lio/rong/imlib/NativeClient$IResultProgressCallback<Ljava/lang/String;>;"
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1502
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1504
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1505
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversationType\uff0cimageUrl \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1507
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    new-instance v5, Lio/rong/imlib/NativeClient$15;

    invoke-direct {v5, p0, p5}, Lio/rong/imlib/NativeClient$15;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultProgressCallback;)V

    move-object v1, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/NativeObject;->DownFileWithUrl(Ljava/lang/String;IILjava/lang/String;Lio/rong/imlib/NativeObject$ProgressCallback;)V

    .line 1528
    return-void
.end method

.method public getBlacklist(Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2190
    .local p1, "callback":Lio/rong/imlib/NativeClient$IResultCallback;, "Lio/rong/imlib/NativeClient$IResultCallback<Ljava/lang/String;>;"
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2191
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2193
    :cond_0
    if-nez p1, :cond_1

    .line 2194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2196
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$32;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/NativeClient$32;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeObject;->GetBlacklist(Lio/rong/imlib/NativeObject$SetBlacklistListener;)V

    .line 2218
    return-void
.end method

.method public getBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Lio/rong/imlib/NativeClient$BlacklistStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2154
    .local p2, "callback":Lio/rong/imlib/NativeClient$IResultCallback;, "Lio/rong/imlib/NativeClient$IResultCallback<Lio/rong/imlib/NativeClient$BlacklistStatus;>;"
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2155
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2157
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    .line 2158
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u7528\u6237 Id \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2160
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$31;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/NativeClient$31;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeObject;->GetBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/NativeObject$BizAckListener;)V

    .line 2181
    return-void
.end method

.method public getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;
    .locals 3
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 459
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v1, :cond_0

    .line 460
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ConversationType \u548c TargetId \u53c2\u6570\u5f02\u5e38"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_2
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lio/rong/imlib/NativeObject;->GetConversationEx(Ljava/lang/String;I)Lio/rong/imlib/NativeObject$Conversation;

    move-result-object v0

    .line 467
    .local v0, "conversation":Lio/rong/imlib/NativeObject$Conversation;
    if-nez v0, :cond_3

    .line 468
    const/4 v1, 0x0

    .line 470
    :goto_0
    return-object v1

    :cond_3
    invoke-direct {p0, v0}, Lio/rong/imlib/NativeClient;->renderConversationFromNative(Lio/rong/imlib/NativeObject$Conversation;)Lio/rong/imlib/model/Conversation;

    move-result-object v1

    goto :goto_0
.end method

.method public getConversationList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    const/4 v1, 0x4

    new-array v0, v1, [I

    const/4 v1, 0x0

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    aput v2, v0, v1

    .line 341
    .local v0, "conversationTypes":[I
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v1, :cond_0

    .line 342
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_0
    invoke-virtual {p0, v0}, Lio/rong/imlib/NativeClient;->getConversationList([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConversationList([I)Ljava/util/List;
    .locals 8
    .param p1, "conversationTypeValues"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    const/4 v1, 0x0

    .line 377
    .local v1, "conversations":[Lio/rong/imlib/NativeObject$Conversation;
    :try_start_0
    sget-object v7, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v7, p1}, Lio/rong/imlib/NativeObject;->GetConversationListEx([I)[Lio/rong/imlib/NativeObject$Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 381
    :goto_0
    if-nez v1, :cond_1

    .line 382
    const/4 v6, 0x0

    .line 390
    :cond_0
    return-object v6

    .line 378
    :catch_0
    move-exception v2

    .line 379
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 384
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    move-object v0, v1

    .local v0, "arr$":[Lio/rong/imlib/NativeObject$Conversation;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v4, v0, v3

    .line 387
    .local v4, "item":Lio/rong/imlib/NativeObject$Conversation;
    invoke-direct {p0, v4}, Lio/rong/imlib/NativeClient;->renderConversationFromNative(Lio/rong/imlib/NativeObject$Conversation;)Lio/rong/imlib/model/Conversation;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 3
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1556
    .local p3, "callback":Lio/rong/imlib/NativeClient$IResultCallback;, "Lio/rong/imlib/NativeClient$IResultCallback<Ljava/lang/Integer;>;"
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1557
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1559
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_2

    .line 1560
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversationType \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1562
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    new-instance v2, Lio/rong/imlib/NativeClient$16;

    invoke-direct {v2, p0, p3}, Lio/rong/imlib/NativeClient$16;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v0, p2, v1, v2}, Lio/rong/imlib/NativeObject;->GetBlockPush(Ljava/lang/String;ILio/rong/imlib/NativeObject$BizAckListener;)V

    .line 1578
    return-void
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lio/rong/imlib/NativeClient;->client:Lio/rong/imlib/NativeClient;

    iget-object v0, v0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeltaTime()J
    .locals 2

    .prologue
    .line 1858
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v0}, Lio/rong/imlib/NativeObject;->GetDeltaTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDiscussion(Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 2
    .param p1, "discussionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Lio/rong/imlib/model/Discussion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 858
    .local p2, "callback":Lio/rong/imlib/NativeClient$IResultCallback;, "Lio/rong/imlib/NativeClient$IResultCallback<Lio/rong/imlib/model/Discussion;>;"
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 859
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " discussionId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$4;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/NativeClient$4;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeObject;->GetDiscussionInfo(Ljava/lang/String;Lio/rong/imlib/NativeObject$DiscussionInfoListener;)V

    .line 879
    return-void
.end method

.method public getGroupConversationList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    aput v2, v0, v1

    .line 358
    .local v0, "conversationTypes":[I
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v1, :cond_0

    .line 359
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 361
    :cond_0
    invoke-virtual {p0, v0}, Lio/rong/imlib/NativeClient;->getConversationList([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;II)Ljava/util/List;
    .locals 13
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "oldestMessageId"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 600
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConversationTypes \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 604
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    const-string v3, ""

    move-object v1, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/NativeObject;->GetHistoryMessagesEx(Ljava/lang/String;ILjava/lang/String;II)[Lio/rong/imlib/NativeObject$Message;

    move-result-object v7

    .line 606
    .local v7, "array":[Lio/rong/imlib/NativeObject$Message;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    if-nez v7, :cond_4

    .line 617
    :cond_3
    return-object v11

    .line 611
    :cond_4
    move-object v6, v7

    .local v6, "arr$":[Lio/rong/imlib/NativeObject$Message;
    array-length v10, v6

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v10, :cond_3

    aget-object v9, v6, v8

    .line 612
    .local v9, "item":Lio/rong/imlib/NativeObject$Message;
    new-instance v12, Lio/rong/imlib/model/Message;

    invoke-direct {v12, v9}, Lio/rong/imlib/model/Message;-><init>(Lio/rong/imlib/NativeObject$Message;)V

    .line 613
    .local v12, "msg":Lio/rong/imlib/model/Message;
    invoke-virtual {v9}, Lio/rong/imlib/NativeObject$Message;->getObjectName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lio/rong/imlib/NativeObject$Message;->getContent()[B

    move-result-object v1

    invoke-static {v0, v1, v12}, Lio/rong/imlib/NativeClient;->renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {v12, v0}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 614
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 13
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "objectName"    # Ljava/lang/String;
    .param p4, "oldestMessageId"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 632
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConversationTypes, objectName \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 639
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    move-object v1, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/NativeObject;->GetHistoryMessagesEx(Ljava/lang/String;ILjava/lang/String;II)[Lio/rong/imlib/NativeObject$Message;

    move-result-object v11

    .line 640
    .local v11, "messages":[Lio/rong/imlib/NativeObject$Message;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    if-nez v11, :cond_4

    .line 643
    const/4 v10, 0x0

    .line 651
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_3
    return-object v10

    .line 645
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_4
    move-object v6, v11

    .local v6, "arr$":[Lio/rong/imlib/NativeObject$Message;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v8, v6, v7

    .line 646
    .local v8, "item":Lio/rong/imlib/NativeObject$Message;
    new-instance v12, Lio/rong/imlib/model/Message;

    invoke-direct {v12, v8}, Lio/rong/imlib/model/Message;-><init>(Lio/rong/imlib/NativeObject$Message;)V

    .line 647
    .local v12, "msg":Lio/rong/imlib/model/Message;
    invoke-virtual {v8}, Lio/rong/imlib/NativeObject$Message;->getObjectName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lio/rong/imlib/NativeObject$Message;->getContent()[B

    move-result-object v1

    invoke-static {v0, v1, v12}, Lio/rong/imlib/NativeClient;->renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {v12, v0}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 648
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 576
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 579
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConversationTypes \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 582
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lio/rong/imlib/NativeClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(I)Lio/rong/imlib/model/Message;
    .locals 5
    .param p1, "messageId"    # I

    .prologue
    .line 1196
    sget-object v3, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v3, p1}, Lio/rong/imlib/NativeObject;->GetMessageById(I)Lio/rong/imlib/NativeObject$Message;

    move-result-object v2

    .line 1197
    .local v2, "nativeMsg":Lio/rong/imlib/NativeObject$Message;
    new-instance v1, Lio/rong/imlib/model/Message;

    invoke-direct {v1, v2}, Lio/rong/imlib/model/Message;-><init>(Lio/rong/imlib/NativeObject$Message;)V

    .line 1198
    .local v1, "message":Lio/rong/imlib/model/Message;
    invoke-virtual {v2}, Lio/rong/imlib/NativeObject$Message;->getObjectName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lio/rong/imlib/NativeObject$Message;->getContent()[B

    move-result-object v4

    invoke-static {v3, v4, v1}, Lio/rong/imlib/NativeClient;->renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    .line 1199
    .local v0, "content":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {v1, v0}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 1200
    return-object v1
.end method

.method public getNotificationQuietHours(Lio/rong/imlib/NativeClient$GetNotificationQuietHoursCallback;)V
    .locals 2
    .param p1, "callback"    # Lio/rong/imlib/NativeClient$GetNotificationQuietHoursCallback;

    .prologue
    .line 2296
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2297
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2299
    :cond_0
    if-nez p1, :cond_1

    .line 2300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2303
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$35;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/NativeClient$35;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$GetNotificationQuietHoursCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeObject;->QueryPushSetting(Lio/rong/imlib/NativeObject$PushSettingListener;)V

    .line 2315
    return-void
.end method

.method public getOnReceiveMessageListener()Lio/rong/imlib/NativeClient$OnReceiveMessageListener;
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mReceiveMessageListener:Lio/rong/imlib/NativeClient$OnReceiveMessageListener;

    return-object v0
.end method

.method public getPublicServiceList(Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Lio/rong/imlib/model/PublicServiceProfileList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1061
    .local p1, "callback":Lio/rong/imlib/NativeClient$IResultCallback;, "Lio/rong/imlib/NativeClient$IResultCallback<Lio/rong/imlib/model/PublicServiceProfileList;>;"
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v6, :cond_0

    .line 1062
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1064
    :cond_0
    if-eqz p1, :cond_2

    .line 1066
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v6}, Lio/rong/imlib/NativeObject;->LoadAccountInfo()[Lio/rong/imlib/NativeObject$AccountInfo;

    move-result-object v1

    .line 1068
    .local v1, "info":[Lio/rong/imlib/NativeObject$AccountInfo;
    if-eqz v1, :cond_3

    array-length v6, v1

    if-lez v6, :cond_3

    .line 1070
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/rong/imlib/model/PublicServiceProfile;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_1

    .line 1073
    new-instance v3, Lio/rong/imlib/model/PublicServiceProfile;

    invoke-direct {v3}, Lio/rong/imlib/model/PublicServiceProfile;-><init>()V

    .line 1074
    .local v3, "item":Lio/rong/imlib/model/PublicServiceProfile;
    new-instance v6, Ljava/lang/String;

    aget-object v7, v1, v0

    invoke-virtual {v7}, Lio/rong/imlib/NativeObject$AccountInfo;->getAccountId()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v6}, Lio/rong/imlib/model/PublicServiceProfile;->setTargetId(Ljava/lang/String;)V

    .line 1075
    new-instance v6, Ljava/lang/String;

    aget-object v7, v1, v0

    invoke-virtual {v7}, Lio/rong/imlib/NativeObject$AccountInfo;->getAccountName()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v6}, Lio/rong/imlib/model/PublicServiceProfile;->setName(Ljava/lang/String;)V

    .line 1076
    aget-object v6, v1, v0

    invoke-virtual {v6}, Lio/rong/imlib/NativeObject$AccountInfo;->getAccountType()I

    move-result v6

    invoke-static {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v3, v6}, Lio/rong/imlib/model/PublicServiceProfile;->setPublicServiceType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1077
    new-instance v6, Ljava/lang/String;

    aget-object v7, v1, v0

    invoke-virtual {v7}, Lio/rong/imlib/NativeObject$AccountInfo;->getAccountUri()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Lio/rong/imlib/model/PublicServiceProfile;->setPortraitUri(Landroid/net/Uri;)V

    .line 1078
    new-instance v5, Ljava/lang/String;

    aget-object v6, v1, v0

    invoke-virtual {v6}, Lio/rong/imlib/NativeObject$AccountInfo;->getExtra()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 1079
    .local v5, "ss":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lio/rong/imlib/model/PublicServiceProfile;->setExtra(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1083
    .end local v3    # "item":Lio/rong/imlib/model/PublicServiceProfile;
    .end local v5    # "ss":Ljava/lang/String;
    :cond_1
    new-instance v2, Lio/rong/imlib/model/PublicServiceProfileList;

    invoke-direct {v2, v4}, Lio/rong/imlib/model/PublicServiceProfileList;-><init>(Ljava/util/ArrayList;)V

    .line 1084
    .local v2, "infoList":Lio/rong/imlib/model/PublicServiceProfileList;
    invoke-interface {p1, v2}, Lio/rong/imlib/NativeClient$IResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1089
    .end local v0    # "index":I
    .end local v1    # "info":[Lio/rong/imlib/NativeObject$AccountInfo;
    .end local v2    # "infoList":Lio/rong/imlib/model/PublicServiceProfileList;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/rong/imlib/model/PublicServiceProfile;>;"
    :cond_2
    :goto_1
    return-void

    .line 1086
    .restart local v1    # "info":[Lio/rong/imlib/NativeObject$AccountInfo;
    :cond_3
    const/4 v6, -0x1

    invoke-interface {p1, v6}, Lio/rong/imlib/NativeClient$IResultCallback;->onError(I)V

    goto :goto_1
.end method

.method public getPublicServiceProfile(Ljava/lang/String;ILio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 4
    .param p1, "targetId"    # Ljava/lang/String;
    .param p2, "categoryId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Lio/rong/imlib/model/PublicServiceProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1031
    .local p3, "callback":Lio/rong/imlib/NativeClient$IResultCallback;, "Lio/rong/imlib/NativeClient$IResultCallback<Lio/rong/imlib/model/PublicServiceProfile;>;"
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v2, :cond_0

    .line 1032
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1034
    :cond_0
    if-nez p1, :cond_1

    .line 1035
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1037
    :cond_1
    if-eqz p3, :cond_3

    .line 1038
    new-instance v1, Lio/rong/imlib/model/PublicServiceProfile;

    invoke-direct {v1}, Lio/rong/imlib/model/PublicServiceProfile;-><init>()V

    .line 1039
    .local v1, "serviceInfo":Lio/rong/imlib/model/PublicServiceProfile;
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v2, p1, p2}, Lio/rong/imlib/NativeObject;->GetUserInfoExSync(Ljava/lang/String;I)Lio/rong/imlib/NativeObject$UserInfo;

    move-result-object v0

    .line 1040
    .local v0, "info":Lio/rong/imlib/NativeObject$UserInfo;
    if-eqz v0, :cond_4

    .line 1041
    invoke-virtual {v1, p1}, Lio/rong/imlib/model/PublicServiceProfile;->setTargetId(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v0}, Lio/rong/imlib/NativeObject$UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/PublicServiceProfile;->setName(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {v0}, Lio/rong/imlib/NativeObject$UserInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1044
    invoke-virtual {v0}, Lio/rong/imlib/NativeObject$UserInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/PublicServiceProfile;->setPortraitUri(Landroid/net/Uri;)V

    .line 1045
    :cond_2
    invoke-virtual {v0}, Lio/rong/imlib/NativeObject$UserInfo;->getCategoryId()I

    move-result v2

    invoke-static {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/PublicServiceProfile;->setPublicServiceType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1046
    invoke-virtual {v0}, Lio/rong/imlib/NativeObject$UserInfo;->getAccountExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/PublicServiceProfile;->setExtra(Ljava/lang/String;)V

    .line 1047
    invoke-interface {p3, v1}, Lio/rong/imlib/NativeClient$IResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1052
    .end local v0    # "info":Lio/rong/imlib/NativeObject$UserInfo;
    .end local v1    # "serviceInfo":Lio/rong/imlib/model/PublicServiceProfile;
    :cond_3
    :goto_0
    return-void

    .line 1049
    .restart local v0    # "info":Lio/rong/imlib/NativeObject$UserInfo;
    .restart local v1    # "serviceInfo":Lio/rong/imlib/model/PublicServiceProfile;
    :cond_4
    const/4 v2, -0x1

    invoke-interface {p3, v2}, Lio/rong/imlib/NativeClient$IResultCallback;->onError(I)V

    goto :goto_0
.end method

.method public getRealTimeLocationCurrentState(ILjava/lang/String;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    .locals 2
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 2587
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2588
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2590
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_1

    .line 2591
    const-string v0, "getRealTimeLocationCurrentState"

    const-string v1, "RealTimeLocationManager Not setup!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    sget-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_IDLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    .line 2594
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/location/RealTimeLocationManager;->getRealTimeLocationCurrentState(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public getRealTimeLocationParticipants(ILjava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2571
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2572
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2574
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_1

    .line 2575
    const-string v0, "getRealTimeLocationParticipants"

    const-string v1, "RealTimeLocationManager Not setup!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    const/4 v0, 0x0

    .line 2578
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/location/RealTimeLocationManager;->getRealTimeLocationParticipants(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JILio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 9
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "dataTime"    # J
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "JI",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 664
    .local p6, "callback":Lio/rong/imlib/NativeClient$IResultCallback;, "Lio/rong/imlib/NativeClient$IResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    const-string v0, "getRemoteHistoryMessages"

    const-string v1, "call"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 667
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p6, :cond_2

    .line 670
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConversationTypes\uff0ccallback \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 674
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v3

    new-instance v7, Lio/rong/imlib/NativeClient$3;

    invoke-direct {v7, p0, p6}, Lio/rong/imlib/NativeClient$3;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    move-object v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lio/rong/imlib/NativeObject;->LoadHistoryMessage(Ljava/lang/String;IJILio/rong/imlib/NativeObject$HistoryMessageListener;)V

    .line 694
    return-void
.end method

.method public getSendTimeByMessageId(I)J
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 2660
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2661
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2663
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v0, p1}, Lio/rong/imlib/NativeObject;->GetSendTimeByMessageId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 807
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 808
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 811
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversationType \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/NativeObject;->GetTextMessageDraft(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalUnreadCount()I
    .locals 2

    .prologue
    .line 517
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 518
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v0}, Lio/rong/imlib/NativeObject;->GetTotalUnreadCount()I

    move-result v0

    return v0
.end method

.method public getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 531
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    .line 535
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConversationType \u6216 TargetId \u53c2\u6570\u5f02\u5e38"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lio/rong/imlib/NativeObject;->GetUnreadCount(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public varargs getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;)I
    .locals 8
    .param p1, "conversationTypes"    # [Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 548
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v6, :cond_0

    .line 549
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 551
    :cond_0
    if-eqz p1, :cond_1

    array-length v6, p1

    if-nez v6, :cond_2

    .line 552
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "ConversationTypes \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 555
    :cond_2
    array-length v6, p1

    new-array v2, v6, [I

    .line 557
    .local v2, "conversationTypeValues":[I
    const/4 v3, 0x0

    .line 558
    .local v3, "i":I
    move-object v0, p1

    .local v0, "arr$":[Lio/rong/imlib/model/Conversation$ConversationType;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 559
    .local v1, "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v6

    aput v6, v2, v3

    .line 560
    add-int/lit8 v3, v3, 0x1

    .line 558
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 563
    .end local v1    # "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_3
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v6, v2}, Lio/rong/imlib/NativeObject;->GetCateUnreadCount([I)I

    move-result v6

    return v6
.end method

.method public insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;
    .locals 16
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "senderUserId"    # Ljava/lang/String;
    .param p4, "content"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 1370
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v2, :cond_0

    .line 1371
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1373
    :cond_0
    if-eqz p1, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p4, :cond_2

    .line 1374
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "conversationType \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1376
    :cond_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/rong/imlib/MessageTag;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v15

    check-cast v15, Lio/rong/imlib/MessageTag;

    .line 1377
    .local v15, "msgTag":Lio/rong/imlib/MessageTag;
    if-nez v15, :cond_3

    .line 1378
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "\u81ea\u5b9a\u4e49\u6d88\u606f\u6ca1\u6709\u52a0\u6ce8\u89e3\u4fe1\u606f\u3002"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1381
    :cond_3
    move-object/from16 v6, p3

    .line 1382
    .local v6, "sender":Ljava/lang/String;
    new-instance v14, Lio/rong/imlib/model/Message;

    invoke-direct {v14}, Lio/rong/imlib/model/Message;-><init>()V

    .line 1383
    .local v14, "message":Lio/rong/imlib/model/Message;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lio/rong/imlib/model/Message;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1384
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lio/rong/imlib/model/Message;->setTargetId(Ljava/lang/String;)V

    .line 1385
    if-nez v6, :cond_4

    .line 1386
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    .line 1389
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 1390
    sget-object v2, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual {v14, v2}, Lio/rong/imlib/model/Message;->setMessageDirection(Lio/rong/imlib/model/Message$MessageDirection;)V

    .line 1391
    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->SENT:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v14, v2}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 1396
    :goto_0
    invoke-virtual {v14, v6}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 1397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lio/rong/imlib/model/Message;->setReceivedTime(J)V

    .line 1398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lio/rong/imlib/model/Message;->setSentTime(J)V

    .line 1399
    invoke-interface {v15}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lio/rong/imlib/model/Message;->setObjectName(Ljava/lang/String;)V

    .line 1400
    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 1401
    const/4 v2, 0x1

    new-array v7, v2, [B

    .line 1402
    .local v7, "data":[B
    invoke-virtual {v14}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v2

    if-gtz v2, :cond_5

    .line 1403
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v14}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v4

    invoke-interface {v15}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const-string v9, ""

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lio/rong/imlib/NativeObject;->SaveMessage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B[B[B)I

    move-result v13

    .line 1404
    .local v13, "id":I
    invoke-virtual {v14, v13}, Lio/rong/imlib/model/Message;->setMessageId(I)V

    .line 1407
    .end local v13    # "id":I
    :cond_5
    sget-object v2, Lio/rong/imlib/NativeClient;->messageHandlerMap:Ljava/util/HashMap;

    invoke-interface {v15}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Constructor;

    .line 1409
    .local v10, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent$MessageHandler;>;"
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lio/rong/imlib/NativeClient;->sContext:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/rong/imlib/model/MessageContent$MessageHandler;

    .line 1410
    .local v12, "handler":Lio/rong/imlib/model/MessageContent$MessageHandler;
    invoke-virtual {v14}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    invoke-virtual {v12, v14, v2}, Lio/rong/imlib/model/MessageContent$MessageHandler;->encodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)Z

    .line 1411
    invoke-virtual {v14}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/model/MessageContent;->encode()[B

    move-result-object v7

    .line 1412
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v14}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v3

    invoke-virtual {v2, v3, v7}, Lio/rong/imlib/NativeObject;->SetMessageContent(I[B)Z

    .line 1414
    const-string v2, "insertMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserted, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1422
    return-object v14

    .line 1393
    .end local v7    # "data":[B
    .end local v10    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent$MessageHandler;>;"
    .end local v12    # "handler":Lio/rong/imlib/model/MessageContent$MessageHandler;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    :goto_1
    invoke-virtual {v14, v2}, Lio/rong/imlib/model/Message;->setMessageDirection(Lio/rong/imlib/model/Message$MessageDirection;)V

    .line 1394
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->SENT:Lio/rong/imlib/model/Message$SentStatus;

    :goto_2
    invoke-virtual {v14, v2}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    goto/16 :goto_0

    .line 1393
    :cond_7
    sget-object v2, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    goto :goto_1

    .line 1394
    :cond_8
    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->RECEIVED:Lio/rong/imlib/model/Message$SentStatus;

    goto :goto_2

    .line 1415
    .restart local v7    # "data":[B
    .restart local v10    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent$MessageHandler;>;"
    :catch_0
    move-exception v11

    .line 1416
    .local v11, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1417
    .end local v11    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v11

    .line 1418
    .local v11, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1419
    .end local v11    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v11

    .line 1420
    .local v11, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public joinChatRoom(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "defMessageCount"    # I
    .param p3, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;

    .prologue
    .line 1903
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1904
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1906
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1907
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u804a\u5929\u5ba4 Id \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1909
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    const/4 v4, 0x0

    new-instance v5, Lio/rong/imlib/NativeClient$25;

    invoke-direct {v5, p0, p3}, Lio/rong/imlib/NativeClient$25;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/NativeObject;->JoinChatRoom(Ljava/lang/String;IIZLio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 1921
    return-void
.end method

.method public joinExistChatRoom(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "defMessageCount"    # I
    .param p3, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;

    .prologue
    .line 1960
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1961
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1963
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1964
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u804a\u5929\u5ba4 Id \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1966
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    new-instance v2, Lio/rong/imlib/NativeClient$27;

    invoke-direct {v2, p0, p3}, Lio/rong/imlib/NativeClient$27;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Lio/rong/imlib/NativeObject;->JoinExistingChatroom(Ljava/lang/String;IILio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 1978
    return-void
.end method

.method public joinGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;

    .prologue
    .line 1692
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1693
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1695
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 1696
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "groupId \u6216 groupName\u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1698
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$20;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/NativeClient$20;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeObject;->JoinGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 1711
    return-void
.end method

.method public joinRealTimeLocation(ILjava/lang/String;)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 2541
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2542
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2544
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_1

    .line 2545
    const-string v0, "joinRealTimeLocation"

    const-string v1, "RealTimeLocationManager Not setup!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    const/4 v0, -0x1

    .line 2548
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/location/RealTimeLocationManager;->joinRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public queryChatRoomInfo(Ljava/lang/String;IILio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Lio/rong/imlib/model/ChatRoomInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1862
    .local p4, "callback":Lio/rong/imlib/NativeClient$IResultCallback;, "Lio/rong/imlib/NativeClient$IResultCallback<Lio/rong/imlib/model/ChatRoomInfo;>;"
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1863
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1865
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1866
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u804a\u5929\u5ba4 Id \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1868
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$24;

    invoke-direct {v1, p0, p1, p4}, Lio/rong/imlib/NativeClient$24;-><init>(Lio/rong/imlib/NativeClient;Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/rong/imlib/NativeObject;->QueryChatroomInfo(Ljava/lang/String;IILio/rong/imlib/NativeObject$ChatroomInfoListener;)Z

    .line 1892
    return-void
.end method

.method public quitChatRoom(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;

    .prologue
    .line 1988
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1989
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1991
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1992
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u804a\u5929\u5ba4 Id \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1994
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    new-instance v2, Lio/rong/imlib/NativeClient$28;

    invoke-direct {v2, p0, p2}, Lio/rong/imlib/NativeClient$28;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1, v2}, Lio/rong/imlib/NativeObject;->QuitChatRoom(Ljava/lang/String;ILio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 2007
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p0, v0, p1}, Lio/rong/imlib/NativeClient;->clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    .line 2008
    return-void
.end method

.method public quitDiscussion(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .param p1, "discussionId"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;

    .prologue
    .line 1167
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1168
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1170
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "discussionId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1173
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$11;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/NativeClient$11;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeObject;->QuitDiscussion(Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 1187
    return-void
.end method

.method public quitGroup(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 3
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;

    .prologue
    .line 1720
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1721
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1723
    :cond_0
    if-nez p1, :cond_1

    .line 1724
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "groupId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1726
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    const-string v1, ""

    new-instance v2, Lio/rong/imlib/NativeClient$21;

    invoke-direct {v2, p0, p2}, Lio/rong/imlib/NativeClient$21;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1, v2}, Lio/rong/imlib/NativeObject;->QuitGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 1739
    return-void
.end method

.method public quitRealTimeLocation(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 2555
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2556
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2558
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_1

    .line 2559
    const-string v0, "quitRealTimeLocation"

    const-string v1, "RealTimeLocationManager Not setup!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    :goto_0
    return-void

    .line 2562
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/location/RealTimeLocationManager;->quitRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reJoinChatRoom(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "defMessageCount"    # I
    .param p3, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;

    .prologue
    .line 1932
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1933
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1935
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1936
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u804a\u5929\u5ba4 Id \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1938
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    const/4 v4, 0x1

    new-instance v5, Lio/rong/imlib/NativeClient$26;

    invoke-direct {v5, p0, p3}, Lio/rong/imlib/NativeClient$26;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/NativeObject;->JoinChatRoom(Ljava/lang/String;IIZLio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 1950
    return-void
.end method

.method public reconnect(Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "callback":Lio/rong/imlib/NativeClient$IResultCallback;, "Lio/rong/imlib/NativeClient$IResultCallback<Ljava/lang/String;>;"
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    iget-object v1, p0, Lio/rong/imlib/NativeClient;->token:Ljava/lang/String;

    new-instance v2, Lio/rong/imlib/NativeClient$2;

    invoke-direct {v2, p0, p1}, Lio/rong/imlib/NativeClient$2;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/NativeObject;->Connect(Ljava/lang/String;Lio/rong/imlib/NativeObject$ConnectAckCallback;)V

    .line 303
    return-void
.end method

.method public removeConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 483
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConversationType \u548c TargetId \u53c2\u6570\u5f02\u5e38"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 490
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/NativeObject;->RemoveConversation(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeFromBlacklist(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;

    .prologue
    .line 2125
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2126
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2128
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    .line 2129
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u7528\u6237 Id \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2131
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$30;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/NativeClient$30;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeObject;->RemoveFromBlacklist(Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 2144
    return-void
.end method

.method public removeListener(ILjava/lang/String;Lio/rong/imlib/NativeClient$RealTimeLocationListener;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "listener"    # Lio/rong/imlib/NativeClient$RealTimeLocationListener;

    .prologue
    .line 2619
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2620
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2622
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_1

    .line 2623
    const-string/jumbo v0, "removeListener"

    const-string v1, "RealTimeLocationManager Not setup!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    :goto_0
    return-void

    .line 2626
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lio/rong/imlib/location/RealTimeLocationManager;->removeListener(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/NativeClient$RealTimeLocationListener;)V

    goto :goto_0
.end method

.method public removeMemberFromDiscussion(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .param p1, "discussionId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;

    .prologue
    .line 1138
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1141
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1142
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "discussionId \u6216 userId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1144
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$10;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/NativeClient$10;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeObject;->RemoveMemberFromDiscussion(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 1157
    return-void
.end method

.method public removeNotificationQuietHours(Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .param p1, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;

    .prologue
    .line 2265
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2266
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2268
    :cond_0
    if-nez p1, :cond_1

    .line 2269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2271
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$34;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/NativeClient$34;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeObject;->RemovePushSetting(Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 2285
    return-void
.end method

.method public saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 825
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 826
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 829
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversationType \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/rong/imlib/NativeObject;->SetTextMessageDraft(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public searchPublicService(Ljava/lang/String;IILio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 2
    .param p1, "keyWords"    # Ljava/lang/String;
    .param p2, "businessType"    # I
    .param p3, "searchType"    # I
    .param p4, "callback"    # Lio/rong/imlib/NativeClient$IResultCallback;

    .prologue
    .line 960
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 961
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    :cond_0
    if-nez p1, :cond_1

    .line 964
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyWords \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 966
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$7;

    invoke-direct {v1, p0, p4}, Lio/rong/imlib/NativeClient$7;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/rong/imlib/NativeObject;->SearchAccount(Ljava/lang/String;IILio/rong/imlib/NativeObject$AccountInfoListener;)V

    .line 993
    return-void
.end method

.method public sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultSendMessageCallback;)Lio/rong/imlib/model/Message;
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "content"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "pushContent"    # Ljava/lang/String;
    .param p5, "pushData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/MessageContent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/NativeClient$IResultSendMessageCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/rong/imlib/model/Message;"
        }
    .end annotation

    .prologue
    .line 1213
    .local p6, "callback":Lio/rong/imlib/NativeClient$IResultSendMessageCallback;, "Lio/rong/imlib/NativeClient$IResultSendMessageCallback<Ljava/lang/Integer;>;"
    invoke-static {p2, p1, p3}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 1214
    .local v0, "message":Lio/rong/imlib/model/Message;
    invoke-virtual {p0, v0, p4, p5, p6}, Lio/rong/imlib/NativeClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultSendMessageCallback;)Lio/rong/imlib/model/Message;

    move-result-object v1

    return-object v1
.end method

.method public sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultSendMessageCallback;)Lio/rong/imlib/model/Message;
    .locals 19
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "pushContent"    # Ljava/lang/String;
    .param p3, "pushData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Message;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/NativeClient$IResultSendMessageCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/rong/imlib/model/Message;"
        }
    .end annotation

    .prologue
    .line 1218
    .local p4, "callback":Lio/rong/imlib/NativeClient$IResultSendMessageCallback;, "Lio/rong/imlib/NativeClient$IResultSendMessageCallback<Ljava/lang/Integer;>;"
    sget-object v4, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v4, :cond_0

    .line 1219
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1221
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1222
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "message, ConversationType \u6216 TargetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1225
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lio/rong/imlib/MessageTag;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    check-cast v18, Lio/rong/imlib/MessageTag;

    .line 1226
    .local v18, "msgTag":Lio/rong/imlib/MessageTag;
    if-nez v18, :cond_3

    .line 1227
    const-string v4, "NativeClient"

    const-string v5, "MessageTag is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "MessageTag is null, illegal message!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1230
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1231
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 1233
    :cond_4
    sget-object v4, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lio/rong/imlib/model/Message;->setMessageDirection(Lio/rong/imlib/model/Message$MessageDirection;)V

    .line 1234
    sget-object v4, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 1235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lio/rong/imlib/model/Message;->setSentTime(J)V

    .line 1236
    invoke-interface/range {v18 .. v18}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lio/rong/imlib/model/Message;->setObjectName(Ljava/lang/String;)V

    .line 1238
    const/4 v4, 0x1

    new-array v9, v4, [B

    .line 1239
    .local v9, "data":[B
    invoke-interface/range {v18 .. v18}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 1240
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v4

    if-gtz v4, :cond_5

    .line 1241
    sget-object v4, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v6

    invoke-interface/range {v18 .. v18}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    :goto_1
    invoke-virtual/range {v4 .. v11}, Lio/rong/imlib/NativeObject;->SaveMessage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B[B[B)I

    move-result v17

    .line 1243
    .local v17, "id":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setMessageId(I)V

    .line 1247
    .end local v17    # "id":I
    :cond_5
    sget-object v4, Lio/rong/imlib/NativeClient;->messageHandlerMap:Ljava/util/HashMap;

    invoke-interface/range {v18 .. v18}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/reflect/Constructor;

    .line 1249
    .local v14, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent$MessageHandler;>;"
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lio/rong/imlib/NativeClient;->sContext:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v14, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lio/rong/imlib/model/MessageContent$MessageHandler;

    .line 1250
    .local v16, "handler":Lio/rong/imlib/model/MessageContent$MessageHandler;
    if-nez v16, :cond_8

    .line 1251
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Not found message Handler"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1275
    .end local v16    # "handler":Lio/rong/imlib/model/MessageContent$MessageHandler;
    :catch_0
    move-exception v15

    .line 1276
    .local v15, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1241
    .end local v14    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent$MessageHandler;>;"
    .end local v15    # "e":Ljava/lang/InstantiationException;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    goto :goto_0

    :cond_7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    goto :goto_1

    .line 1253
    .restart local v14    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent$MessageHandler;>;"
    .restart local v16    # "handler":Lio/rong/imlib/model/MessageContent$MessageHandler;
    :cond_8
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lio/rong/imlib/model/MessageContent$MessageHandler;->encodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)Z

    .line 1254
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/MessageContent;->encode()[B

    move-result-object v9

    .line 1255
    sget-object v4, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v5

    invoke-virtual {v4, v5, v9}, Lio/rong/imlib/NativeObject;->SetMessageContent(I[B)Z

    .line 1256
    sget-object v4, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v6

    const/4 v7, 0x3

    invoke-interface/range {v18 .. v18}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x0

    :goto_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v12

    new-instance v13, Lio/rong/imlib/NativeClient$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v13, v0, v1, v2}, Lio/rong/imlib/NativeClient$12;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultSendMessageCallback;Lio/rong/imlib/model/Message;)V

    invoke-virtual/range {v4 .. v13}, Lio/rong/imlib/NativeObject;->SendMessage(Ljava/lang/String;IILjava/lang/String;[B[B[BILio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 1274
    const-string/jumbo v4, "sendMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SENDED, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    return-object p1

    .line 1256
    :cond_9
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    goto :goto_2

    :cond_a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v11

    goto :goto_3

    .line 1277
    .end local v16    # "handler":Lio/rong/imlib/model/MessageContent$MessageHandler;
    :catch_1
    move-exception v15

    .line 1278
    .local v15, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1279
    .end local v15    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v15

    .line 1280
    .local v15, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public sendStatusMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;ILio/rong/imlib/NativeClient$IResultCallback;)Lio/rong/imlib/model/Message;
    .locals 20
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "content"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/MessageContent;",
            "I",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/rong/imlib/model/Message;"
        }
    .end annotation

    .prologue
    .line 1290
    .local p5, "callback":Lio/rong/imlib/NativeClient$IResultCallback;, "Lio/rong/imlib/NativeClient$IResultCallback<Ljava/lang/Integer;>;"
    sget-object v4, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v4, :cond_0

    .line 1291
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1293
    :cond_0
    if-nez p2, :cond_1

    .line 1294
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1296
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v18

    .line 1298
    .local v18, "message":Lio/rong/imlib/model/Message;
    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lio/rong/imlib/MessageTag;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v19

    check-cast v19, Lio/rong/imlib/MessageTag;

    .line 1300
    .local v19, "msgTag":Lio/rong/imlib/MessageTag;
    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1301
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 1304
    :cond_2
    sget-object v4, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lio/rong/imlib/model/Message;->setMessageDirection(Lio/rong/imlib/model/Message$MessageDirection;)V

    .line 1305
    sget-object v4, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 1306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lio/rong/imlib/model/Message;->setSentTime(J)V

    .line 1307
    invoke-interface/range {v19 .. v19}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lio/rong/imlib/model/Message;->setObjectName(Ljava/lang/String;)V

    .line 1309
    const/4 v4, 0x1

    new-array v9, v4, [B

    .line 1311
    .local v9, "data":[B
    invoke-interface/range {v19 .. v19}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1313
    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v4

    if-gtz v4, :cond_3

    .line 1315
    sget-object v4, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v6

    invoke-interface/range {v19 .. v19}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lio/rong/imlib/NativeObject;->SaveMessage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B[B[B)I

    move-result v17

    .line 1317
    .local v17, "id":I
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setMessageId(I)V

    .line 1321
    .end local v17    # "id":I
    :cond_3
    sget-object v4, Lio/rong/imlib/NativeClient;->messageHandlerMap:Ljava/util/HashMap;

    invoke-interface/range {v19 .. v19}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/reflect/Constructor;

    .line 1324
    .local v14, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent$MessageHandler;>;"
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lio/rong/imlib/NativeClient;->sContext:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v14, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lio/rong/imlib/model/MessageContent$MessageHandler;

    .line 1326
    .local v16, "handler":Lio/rong/imlib/model/MessageContent$MessageHandler;
    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lio/rong/imlib/model/MessageContent$MessageHandler;->encodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)Z

    .line 1327
    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/MessageContent;->encode()[B

    move-result-object v9

    .line 1329
    sget-object v4, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v5

    invoke-virtual {v4, v5, v9}, Lio/rong/imlib/NativeObject;->SetMessageContent(I[B)Z

    .line 1331
    sget-object v4, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v6

    invoke-interface/range {v19 .. v19}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v12

    new-instance v13, Lio/rong/imlib/NativeClient$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-direct {v13, v0, v1, v2}, Lio/rong/imlib/NativeClient$13;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;Lio/rong/imlib/model/Message;)V

    move/from16 v7, p4

    invoke-virtual/range {v4 .. v13}, Lio/rong/imlib/NativeObject;->SendMessage(Ljava/lang/String;IILjava/lang/String;[B[B[BILio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 1347
    const-string/jumbo v4, "sendMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SENDED, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1357
    return-object v18

    .line 1349
    .end local v16    # "handler":Lio/rong/imlib/model/MessageContent$MessageHandler;
    :catch_0
    move-exception v15

    .line 1350
    .local v15, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1351
    .end local v15    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v15

    .line 1352
    .local v15, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1353
    .end local v15    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v15

    .line 1354
    .local v15, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public setConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 4
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "notificationStatus"    # Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1590
    .local p4, "callback":Lio/rong/imlib/NativeClient$IResultCallback;, "Lio/rong/imlib/NativeClient$IResultCallback<Ljava/lang/Integer;>;"
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1591
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1593
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_2

    .line 1594
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversationType, notificationStatus \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1596
    :cond_2
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->DO_NOT_DISTURB:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    if-ne p3, v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    new-instance v3, Lio/rong/imlib/NativeClient$17;

    invoke-direct {v3, p0, p4}, Lio/rong/imlib/NativeClient$17;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v1, p2, v2, v0, v3}, Lio/rong/imlib/NativeObject;->SetBlockPush(Ljava/lang/String;IZLio/rong/imlib/NativeObject$BizAckListener;)V

    .line 1611
    return-void

    .line 1596
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "isTop"    # Z

    .prologue
    .line 502
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConversationType \u6216 TargetId \u53c2\u6570\u5f02\u5e38"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/rong/imlib/NativeObject;->SetIsTop(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setDiscussionInviteStatus(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .param p1, "targetId"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;

    .prologue
    .line 1623
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1624
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1626
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1627
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1629
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$18;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/NativeClient$18;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeObject;->SetInviteStatus(Ljava/lang/String;ILio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 1644
    return-void
.end method

.method public setDiscussionName(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .param p1, "discussionId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;

    .prologue
    .line 889
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 890
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 892
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " discussionId \u6216 name \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 895
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$5;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/NativeClient$5;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeObject;->RenameDiscussion(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 908
    return-void
.end method

.method public setMessageExtra(ILjava/lang/String;)Z
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 754
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_0
    if-nez p1, :cond_1

    .line 758
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "messageId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/NativeObject;->SetMessageExtra(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;)Z
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "receivedStatus"    # Lio/rong/imlib/model/Message$ReceivedStatus;

    .prologue
    .line 771
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 772
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_2

    .line 775
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "receivedStatus \u6216 messageId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p2}, Lio/rong/imlib/model/Message$ReceivedStatus;->getFlag()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeObject;->SetReadStatus(II)Z

    move-result v0

    return v0
.end method

.method public setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;)Z
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "sentStatus"    # Lio/rong/imlib/model/Message$SentStatus;

    .prologue
    .line 789
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 790
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_2

    .line 793
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sentStatus \u6216 messageId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p2}, Lio/rong/imlib/model/Message$SentStatus;->getValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeObject;->SetSendStatus(II)Z

    move-result v0

    return v0
.end method

.method public setNotificationQuietHours(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 4
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "spanMinutes"    # I
    .param p3, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;

    .prologue
    .line 2229
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v2, :cond_0

    .line 2230
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2233
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-lez p2, :cond_1

    const/16 v2, 0x5a0

    if-ge p2, v2, :cond_1

    if-nez p3, :cond_2

    .line 2234
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "startTime, spanMinutes \u6216 spanMinutes \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2236
    :cond_2
    const-string v2, "^(([0-1][0-9])|2[0-3]):[0-5][0-9]:([0-5][0-9])$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2237
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2239
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2240
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "startTime \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2244
    :cond_3
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v3, Lio/rong/imlib/NativeClient$33;

    invoke-direct {v3, p0, p3}, Lio/rong/imlib/NativeClient$33;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v2, p1, p2, v3}, Lio/rong/imlib/NativeObject;->AddPushSetting(Ljava/lang/String;ILio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 2256
    return-void
.end method

.method public setOnReceiveMessageListener(Lio/rong/imlib/NativeClient$OnReceiveMessageListener;)V
    .locals 2
    .param p1, "listener"    # Lio/rong/imlib/NativeClient$OnReceiveMessageListener;

    .prologue
    .line 1749
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1750
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1752
    :cond_0
    iput-object p1, p0, Lio/rong/imlib/NativeClient;->mReceiveMessageListener:Lio/rong/imlib/NativeClient$OnReceiveMessageListener;

    .line 1754
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$22;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/NativeClient$22;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OnReceiveMessageListener;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeObject;->SetMessageListener(Lio/rong/imlib/NativeObject$ReceiveMessageListener;)V

    .line 1779
    return-void
.end method

.method public setOnReceiveMessageListenerEx(Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;)V
    .locals 0
    .param p1, "listenerEx"    # Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;

    .prologue
    .line 1782
    iput-object p1, p0, Lio/rong/imlib/NativeClient;->mReceiveMessageListenerEx:Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;

    .line 1783
    return-void
.end method

.method public setUserData(Lio/rong/imlib/model/UserData;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 9
    .param p1, "userData"    # Lio/rong/imlib/model/UserData;
    .param p2, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;

    .prologue
    .line 2320
    sget-object v7, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v7, :cond_0

    .line 2321
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2323
    :cond_0
    if-nez p1, :cond_1

    .line 2324
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "userData \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2326
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2329
    .local v4, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getPersonalInfo()Lio/rong/imlib/model/UserData$PersonalInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 2330
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2332
    .local v5, "personalInfo":Lorg/json/JSONObject;
    const-string v7, "realName"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getPersonalInfo()Lio/rong/imlib/model/UserData$PersonalInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$PersonalInfo;->getRealName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2333
    const-string/jumbo v7, "sex"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getPersonalInfo()Lio/rong/imlib/model/UserData$PersonalInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$PersonalInfo;->getSex()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2334
    const-string v7, "age"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getPersonalInfo()Lio/rong/imlib/model/UserData$PersonalInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$PersonalInfo;->getAge()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2335
    const-string v7, "birthday"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getPersonalInfo()Lio/rong/imlib/model/UserData$PersonalInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$PersonalInfo;->getBirthday()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2336
    const-string v7, "job"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getPersonalInfo()Lio/rong/imlib/model/UserData$PersonalInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$PersonalInfo;->getJob()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2337
    const-string v7, "portraitUri"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getPersonalInfo()Lio/rong/imlib/model/UserData$PersonalInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$PersonalInfo;->getPortraitUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2338
    const-string v7, "comment"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getPersonalInfo()Lio/rong/imlib/model/UserData$PersonalInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$PersonalInfo;->getComment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2341
    const-string v7, "personalInfo"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2344
    .end local v5    # "personalInfo":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getAccountInfo()Lio/rong/imlib/model/UserData$AccountInfo;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2345
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2346
    .local v0, "accountInfo":Lorg/json/JSONObject;
    const-string v7, "appUserId"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getAccountInfo()Lio/rong/imlib/model/UserData$AccountInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$AccountInfo;->getAppUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2347
    const-string/jumbo v7, "userName"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getAccountInfo()Lio/rong/imlib/model/UserData$AccountInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$AccountInfo;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2348
    const-string v7, "nickName"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getAccountInfo()Lio/rong/imlib/model/UserData$AccountInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$AccountInfo;->getNickName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2350
    const-string v7, "accountInfo"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2353
    .end local v0    # "accountInfo":Lorg/json/JSONObject;
    :cond_3
    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getContactInfo()Lio/rong/imlib/model/UserData$ContactInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 2354
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2356
    .local v2, "contactInfo":Lorg/json/JSONObject;
    const-string/jumbo v7, "tel"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getContactInfo()Lio/rong/imlib/model/UserData$ContactInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ContactInfo;->getTel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2357
    const-string v7, "email"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getContactInfo()Lio/rong/imlib/model/UserData$ContactInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ContactInfo;->getEmail()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2358
    const-string v7, "address"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getContactInfo()Lio/rong/imlib/model/UserData$ContactInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ContactInfo;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2359
    const-string v7, "qq"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getContactInfo()Lio/rong/imlib/model/UserData$ContactInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ContactInfo;->getQQ()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2360
    const-string/jumbo v7, "weibo"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getContactInfo()Lio/rong/imlib/model/UserData$ContactInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ContactInfo;->getWeibo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2361
    const-string/jumbo v7, "weixin"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getContactInfo()Lio/rong/imlib/model/UserData$ContactInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ContactInfo;->getWeixin()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2363
    const-string v7, "contactInfo"

    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2366
    .end local v2    # "contactInfo":Lorg/json/JSONObject;
    :cond_4
    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getClientInfo()Lio/rong/imlib/model/UserData$ClientInfo;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 2367
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2369
    .local v1, "clientInfo":Lorg/json/JSONObject;
    const-string v7, "network"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getClientInfo()Lio/rong/imlib/model/UserData$ClientInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ClientInfo;->getNetwork()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2370
    const-string v7, "carrier"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getClientInfo()Lio/rong/imlib/model/UserData$ClientInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ClientInfo;->getCarrier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2371
    const-string/jumbo v7, "systemVersion"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getClientInfo()Lio/rong/imlib/model/UserData$ClientInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ClientInfo;->getSystemVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2372
    const-string v7, "os"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getClientInfo()Lio/rong/imlib/model/UserData$ClientInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ClientInfo;->getOs()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2373
    const-string v7, "device"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getClientInfo()Lio/rong/imlib/model/UserData$ClientInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ClientInfo;->getDevice()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2374
    const-string v7, "mobilePhoneManufacturers"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getClientInfo()Lio/rong/imlib/model/UserData$ClientInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ClientInfo;->getMobilePhoneManufacturers()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2376
    const-string v7, "clientInfo"

    invoke-virtual {v4, v7, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2379
    .end local v1    # "clientInfo":Lorg/json/JSONObject;
    :cond_5
    const-string v7, "appVersion"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getAppVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2380
    const-string v7, "extra"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getExtra()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2382
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2383
    .local v6, "result":Ljava/lang/String;
    const-string v7, "UserData"

    invoke-static {p0, v7, v6}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    sget-object v7, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v8, Lio/rong/imlib/NativeClient$36;

    invoke-direct {v8, p0, p2}, Lio/rong/imlib/NativeClient$36;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v7, v6, v8}, Lio/rong/imlib/NativeObject;->SetUserData(Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2402
    .end local v6    # "result":Ljava/lang/String;
    :goto_0
    return-void

    .line 2398
    :catch_0
    move-exception v3

    .line 2399
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setupRealTimeLocation(Landroid/content/Context;ILjava/lang/String;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "targetId"    # Ljava/lang/String;

    .prologue
    .line 2512
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2513
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2515
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_1

    .line 2516
    const-string/jumbo v0, "setupRealTimeLocation"

    const-string v1, "RealTimeLocationManager Not setup!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    const/4 v0, -0x1

    .line 2520
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-static {p2}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lio/rong/imlib/location/RealTimeLocationManager;->setupRealTimeLocation(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public startRealTimeLocation(ILjava/lang/String;)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 2527
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2528
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2530
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_1

    .line 2531
    const-string/jumbo v0, "startRealTimeLocation"

    const-string v1, "RealTimeLocationManager Not setup!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    const/4 v0, -0x1

    .line 2534
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/location/RealTimeLocationManager;->startRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public subscribePublicService(Ljava/lang/String;IZLio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .param p1, "targetId"    # Ljava/lang/String;
    .param p2, "categoryId"    # I
    .param p3, "subscribe"    # Z
    .param p4, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;

    .prologue
    .line 1004
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1005
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1007
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$8;

    invoke-direct {v1, p0, p4}, Lio/rong/imlib/NativeClient$8;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/rong/imlib/NativeObject;->SubscribeAccount(Ljava/lang/String;IZLio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 1020
    return-void
.end method

.method public syncGroup(Ljava/util/List;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 8
    .param p2, "callback"    # Lio/rong/imlib/NativeClient$OperationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Group;",
            ">;",
            "Lio/rong/imlib/NativeClient$OperationCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1654
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Group;>;"
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v6, :cond_0

    .line 1655
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1657
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 1658
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, " groups \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1660
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 1661
    .local v3, "ids":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 1662
    .local v5, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1664
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imlib/model/Group;

    .line 1665
    .local v4, "item":Lio/rong/imlib/model/Group;
    invoke-virtual {v4}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v0

    .line 1666
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v4}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    move v0, v1

    .line 1667
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 1669
    .end local v4    # "item":Lio/rong/imlib/model/Group;
    :cond_3
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v7, Lio/rong/imlib/NativeClient$19;

    invoke-direct {v7, p0, p2}, Lio/rong/imlib/NativeClient$19;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v6, v3, v5, v7}, Lio/rong/imlib/NativeObject;->SyncGroups([Ljava/lang/String;[Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 1682
    return-void
.end method

.method public updateConversationInfo(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "portrait"    # Ljava/lang/String;

    .prologue
    .line 2667
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2668
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2669
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    invoke-virtual {v0, p2, v1, p3, p4}, Lio/rong/imlib/NativeObject;->UpdateConversationInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateMessageReceiptStatus(Ljava/lang/String;IJ)Z
    .locals 3
    .param p1, "targetId"    # Ljava/lang/String;
    .param p2, "categoryId"    # I
    .param p3, "timestamp"    # J

    .prologue
    .line 2653
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2654
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2656
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/rong/imlib/NativeObject;->UpdateMessageReceiptStatus(Ljava/lang/String;IJ)Z

    move-result v0

    return v0
.end method

.method public updateRealTimeLocationStatus(ILjava/lang/String;DD)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D

    .prologue
    .line 2630
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2631
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2633
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_1

    .line 2634
    const-string/jumbo v0, "removeListener"

    const-string v1, "RealTimeLocationManager Not setup!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    :goto_0
    return-void

    .line 2637
    :cond_1
    sget-object v1, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lio/rong/imlib/location/RealTimeLocationManager;->updateLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;DD)V

    goto :goto_0
.end method

.method public uploadMedia(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/io/InputStream;Lio/rong/imlib/NativeClient$IResultProgressCallback;)V
    .locals 9
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Lio/rong/imlib/NativeClient$IResultProgressCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1439
    .local p4, "callback":Lio/rong/imlib/NativeClient$IResultProgressCallback;, "Lio/rong/imlib/NativeClient$IResultProgressCallback<Ljava/lang/String;>;"
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1440
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1442
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 1443
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversationType \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1445
    :cond_2
    const/4 v4, 0x0

    .line 1448
    .local v4, "bytes":[B
    const/4 v7, 0x0

    .line 1449
    .local v7, "count":I
    :goto_0
    if-nez v7, :cond_3

    .line 1450
    :try_start_0
    invoke-virtual {p3}, Ljava/io/InputStream;->available()I

    move-result v7

    goto :goto_0

    .line 1453
    :cond_3
    new-array v4, v7, [B

    .line 1454
    invoke-virtual {p3, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1460
    :try_start_1
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1466
    :goto_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    const/4 v3, 0x1

    array-length v5, v4

    new-instance v6, Lio/rong/imlib/NativeClient$14;

    invoke-direct {v6, p0, p4}, Lio/rong/imlib/NativeClient$14;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultProgressCallback;)V

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lio/rong/imlib/NativeObject;->SendFileWithUrl(Ljava/lang/String;II[BILio/rong/imlib/NativeObject$ProgressCallback;)V

    .line 1486
    return-void

    .line 1456
    :catch_0
    move-exception v8

    .line 1457
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1459
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1460
    :try_start_3
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1463
    :goto_2
    throw v0

    .line 1461
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2
.end method
