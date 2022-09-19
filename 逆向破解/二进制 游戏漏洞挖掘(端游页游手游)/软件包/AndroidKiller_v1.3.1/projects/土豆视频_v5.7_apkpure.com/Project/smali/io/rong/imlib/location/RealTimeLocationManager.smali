.class public Lio/rong/imlib/location/RealTimeLocationManager;
.super Ljava/lang/Object;
.source "RealTimeLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;,
        Lio/rong/imlib/location/RealTimeLocationManager$NetworkStatusReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sIns:Lio/rong/imlib/location/RealTimeLocationManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/location/RealTimeLocation;",
            ">;"
        }
    .end annotation
.end field

.field private mLastLeft:I

.field private mObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/NativeClient$RealTimeLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOfflineRequest:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lio/rong/imlib/location/RealTimeLocationManager$NetworkStatusReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/rong/imlib/location/RealTimeLocationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .local v2, "filter":Landroid/content/IntentFilter;
    new-instance v4, Lio/rong/imlib/location/RealTimeLocationManager$NetworkStatusReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lio/rong/imlib/location/RealTimeLocationManager$NetworkStatusReceiver;-><init>(Lio/rong/imlib/location/RealTimeLocationManager;Lio/rong/imlib/location/RealTimeLocationManager$1;)V

    iput-object v4, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mReceiver:Lio/rong/imlib/location/RealTimeLocationManager$NetworkStatusReceiver;

    .line 50
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mReceiver:Lio/rong/imlib/location/RealTimeLocationManager$NetworkStatusReceiver;

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    iput-object p1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mContext:Landroid/content/Context;

    .line 54
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    .line 55
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mOfflineRequest:Ljava/util/HashMap;

    .line 56
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mObservers:Ljava/util/HashMap;

    .line 57
    const/4 v4, 0x0

    iput v4, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mLastLeft:I

    .line 59
    new-instance v3, Lio/rong/imlib/location/RealTimeLocationManager$1;

    invoke-direct {v3, p0}, Lio/rong/imlib/location/RealTimeLocationManager$1;-><init>(Lio/rong/imlib/location/RealTimeLocationManager;)V

    .line 86
    .local v3, "listener":Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;
    invoke-static {}, Lio/rong/imlib/NativeClient;->getNativeInstance()Lio/rong/imlib/NativeClient;

    move-result-object v0

    .line 87
    .local v0, "client":Lio/rong/imlib/NativeClient;
    invoke-virtual {v0, v3}, Lio/rong/imlib/NativeClient;->setOnReceiveMessageListenerEx(Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;)V

    .line 90
    :try_start_0
    const-class v4, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;

    invoke-static {v4}, Lio/rong/imlib/NativeClient;->registerMessageType(Ljava/lang/Class;)V

    .line 91
    const-class v4, Lio/rong/imlib/location/message/RealTimeLocationJoinMessage;

    invoke-static {v4}, Lio/rong/imlib/NativeClient;->registerMessageType(Ljava/lang/Class;)V

    .line 92
    const-class v4, Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;

    invoke-static {v4}, Lio/rong/imlib/NativeClient;->registerMessageType(Ljava/lang/Class;)V

    .line 93
    const-class v4, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;

    invoke-static {v4}, Lio/rong/imlib/NativeClient;->registerMessageType(Ljava/lang/Class;)V

    .line 94
    const-class v4, Lio/rong/imlib/location/message/RealTimeLocationEndMessage;

    invoke-static {v4}, Lio/rong/imlib/NativeClient;->registerMessageType(Ljava/lang/Class;)V
    :try_end_0
    .catch Lio/rong/imlib/AnnotationNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Lio/rong/imlib/AnnotationNotFoundException;
    invoke-virtual {v1}, Lio/rong/imlib/AnnotationNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lio/rong/imlib/location/RealTimeLocationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lio/rong/imlib/location/RealTimeLocationManager;)I
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/location/RealTimeLocationManager;

    .prologue
    .line 35
    iget v0, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mLastLeft:I

    return v0
.end method

.method static synthetic access$202(Lio/rong/imlib/location/RealTimeLocationManager;I)I
    .locals 0
    .param p0, "x0"    # Lio/rong/imlib/location/RealTimeLocationManager;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mLastLeft:I

    return p1
.end method

.method static synthetic access$300(Lio/rong/imlib/location/RealTimeLocationManager;Lio/rong/imlib/model/Message;)Z
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/location/RealTimeLocationManager;
    .param p1, "x1"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lio/rong/imlib/location/RealTimeLocationManager;->cacheOfflineRequest(Lio/rong/imlib/model/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lio/rong/imlib/location/RealTimeLocationManager;Lio/rong/imlib/model/Message;)Z
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/location/RealTimeLocationManager;
    .param p1, "x1"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lio/rong/imlib/location/RealTimeLocationManager;->handleRequest(Lio/rong/imlib/model/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lio/rong/imlib/location/RealTimeLocationManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/location/RealTimeLocationManager;

    .prologue
    .line 35
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private cacheOfflineRequest(Lio/rong/imlib/model/Message;)Z
    .locals 7
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    .line 143
    .local v0, "content":Lio/rong/imlib/model/MessageContent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 146
    .local v2, "request":Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;
    instance-of v4, v0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;

    if-eqz v4, :cond_2

    .line 147
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mOfflineRequest:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "request":Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;
    check-cast v2, Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;

    .line 148
    .restart local v2    # "request":Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;
    if-nez v2, :cond_0

    .line 149
    new-instance v2, Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;

    .end local v2    # "request":Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, p0, v4, v5, v6}, Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;-><init>(Lio/rong/imlib/location/RealTimeLocationManager;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .restart local v2    # "request":Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mOfflineRequest:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    invoke-virtual {v2}, Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;->startInc()V

    .line 173
    :cond_1
    :goto_0
    return v3

    .line 154
    :cond_2
    instance-of v4, v0, Lio/rong/imlib/location/message/RealTimeLocationJoinMessage;

    if-eqz v4, :cond_4

    .line 155
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mOfflineRequest:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "request":Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;
    check-cast v2, Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;

    .line 156
    .restart local v2    # "request":Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;
    if-nez v2, :cond_3

    .line 157
    new-instance v2, Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;

    .end local v2    # "request":Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, p0, v4, v5, v6}, Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;-><init>(Lio/rong/imlib/location/RealTimeLocationManager;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .restart local v2    # "request":Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mOfflineRequest:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_3
    invoke-virtual {v2}, Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;->joinInc()V

    goto :goto_0

    .line 162
    :cond_4
    instance-of v4, v0, Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;

    if-eqz v4, :cond_6

    .line 163
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mOfflineRequest:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "request":Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;
    check-cast v2, Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;

    .line 164
    .restart local v2    # "request":Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;
    if-nez v2, :cond_5

    .line 165
    new-instance v2, Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;

    .end local v2    # "request":Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, p0, v4, v5, v6}, Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;-><init>(Lio/rong/imlib/location/RealTimeLocationManager;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .restart local v2    # "request":Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;
    iget-object v4, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mOfflineRequest:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_5
    invoke-virtual {v2}, Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;->quitInc()V

    goto :goto_0

    .line 170
    :cond_6
    instance-of v4, v0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;

    if-eqz v4, :cond_1

    .line 171
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private getRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocation;
    .locals 4
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, "rl":Lio/rong/imlib/location/RealTimeLocation;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 132
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "rl":Lio/rong/imlib/location/RealTimeLocation;
    check-cast v1, Lio/rong/imlib/location/RealTimeLocation;

    .line 133
    .restart local v1    # "rl":Lio/rong/imlib/location/RealTimeLocation;
    :cond_0
    if-nez v1, :cond_1

    .line 134
    new-instance v1, Lio/rong/imlib/location/RealTimeLocation;

    .end local v1    # "rl":Lio/rong/imlib/location/RealTimeLocation;
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2}, Lio/rong/imlib/location/RealTimeLocation;-><init>(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    .line 135
    .restart local v1    # "rl":Lio/rong/imlib/location/RealTimeLocation;
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_1
    return-object v1
.end method

.method private handleRequest(Lio/rong/imlib/model/Message;)Z
    .locals 12
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x0

    .line 177
    iget-object v8, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mOfflineRequest:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 178
    iget-object v8, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mOfflineRequest:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 179
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 180
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 181
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;

    .line 182
    .local v5, "request":Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;->shouldHandle()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 183
    invoke-virtual {v5}, Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v8

    invoke-virtual {v5}, Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;->getTargetId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lio/rong/imlib/location/RealTimeLocationManager;->getRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocation;

    move-result-object v6

    .line 184
    .local v6, "rt":Lio/rong/imlib/location/RealTimeLocation;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 185
    .local v4, "msg":Landroid/os/Message;
    iput v11, v4, Landroid/os/Message;->what:I

    .line 186
    invoke-virtual {v5}, Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;->getSender()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 187
    invoke-virtual {v6, v4}, Lio/rong/imlib/location/RealTimeLocation;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 190
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "request":Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;
    .end local v6    # "rt":Lio/rong/imlib/location/RealTimeLocation;
    :cond_1
    iget-object v8, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mOfflineRequest:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 191
    iput v7, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mLastLeft:I

    .line 234
    .end local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/rong/imlib/location/RealTimeLocationManager$OfflineRequest;>;"
    :cond_2
    :goto_1
    return v7

    .line 194
    :cond_3
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    .line 195
    .local v1, "content":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v8

    sget-object v9, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual {v8, v9}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 198
    instance-of v8, v1, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;

    if-eqz v8, :cond_4

    .line 199
    iget-object v8, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mObservers:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imlib/NativeClient$RealTimeLocationListener;

    .line 200
    .local v3, "listener":Lio/rong/imlib/NativeClient$RealTimeLocationListener;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v8

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lio/rong/imlib/location/RealTimeLocationManager;->getRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocation;

    move-result-object v6

    .line 201
    .restart local v6    # "rt":Lio/rong/imlib/location/RealTimeLocation;
    invoke-virtual {v6, v3}, Lio/rong/imlib/location/RealTimeLocation;->addListener(Lio/rong/imlib/NativeClient$RealTimeLocationListener;)V

    .line 202
    iget-object v8, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mObservers:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 204
    .restart local v4    # "msg":Landroid/os/Message;
    iput v11, v4, Landroid/os/Message;->what:I

    .line 205
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 206
    invoke-virtual {v6, v4}, Lio/rong/imlib/location/RealTimeLocation;->sendMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 208
    .end local v3    # "listener":Lio/rong/imlib/NativeClient$RealTimeLocationListener;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v6    # "rt":Lio/rong/imlib/location/RealTimeLocation;
    :cond_4
    instance-of v8, v1, Lio/rong/imlib/location/message/RealTimeLocationJoinMessage;

    if-eqz v8, :cond_5

    .line 209
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v8

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lio/rong/imlib/location/RealTimeLocationManager;->getRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocation;

    move-result-object v6

    .line 211
    .restart local v6    # "rt":Lio/rong/imlib/location/RealTimeLocation;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 212
    .restart local v4    # "msg":Landroid/os/Message;
    const/4 v8, 0x4

    iput v8, v4, Landroid/os/Message;->what:I

    .line 213
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 214
    invoke-virtual {v6, v4}, Lio/rong/imlib/location/RealTimeLocation;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 216
    .end local v4    # "msg":Landroid/os/Message;
    .end local v6    # "rt":Lio/rong/imlib/location/RealTimeLocation;
    :cond_5
    instance-of v8, v1, Lio/rong/imlib/location/message/RealTimeLocationQuitMessage;

    if-eqz v8, :cond_6

    .line 217
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v8

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lio/rong/imlib/location/RealTimeLocationManager;->getRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocation;

    move-result-object v6

    .line 219
    .restart local v6    # "rt":Lio/rong/imlib/location/RealTimeLocation;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 220
    .restart local v4    # "msg":Landroid/os/Message;
    const/4 v8, 0x5

    iput v8, v4, Landroid/os/Message;->what:I

    .line 221
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 222
    invoke-virtual {v6, v4}, Lio/rong/imlib/location/RealTimeLocation;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 224
    .end local v4    # "msg":Landroid/os/Message;
    .end local v6    # "rt":Lio/rong/imlib/location/RealTimeLocation;
    :cond_6
    instance-of v8, v1, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;

    if-eqz v8, :cond_2

    .line 225
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lio/rong/imlib/location/RealTimeLocationManager;->getRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocation;

    move-result-object v6

    .line 227
    .restart local v6    # "rt":Lio/rong/imlib/location/RealTimeLocation;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 228
    .restart local v4    # "msg":Landroid/os/Message;
    const/4 v7, 0x6

    iput v7, v4, Landroid/os/Message;->what:I

    .line 229
    iput-object p1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    invoke-virtual {v6, v4}, Lio/rong/imlib/location/RealTimeLocation;->sendMessage(Landroid/os/Message;)V

    .line 231
    const/4 v7, 0x1

    goto/16 :goto_1
.end method

.method public static init(Landroid/content/Context;)Lio/rong/imlib/location/RealTimeLocationManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    sget-object v0, Lio/rong/imlib/location/RealTimeLocationManager;->sIns:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-direct {v0, p0}, Lio/rong/imlib/location/RealTimeLocationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/rong/imlib/location/RealTimeLocationManager;->sIns:Lio/rong/imlib/location/RealTimeLocationManager;

    .line 104
    :cond_0
    sget-object v0, Lio/rong/imlib/location/RealTimeLocationManager;->sIns:Lio/rong/imlib/location/RealTimeLocationManager;

    return-object v0
.end method


# virtual methods
.method public addListener(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/NativeClient$RealTimeLocationListener;)V
    .locals 3
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "observer"    # Lio/rong/imlib/NativeClient$RealTimeLocationListener;

    .prologue
    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 408
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :goto_0
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {v1, p3}, Lio/rong/imlib/location/RealTimeLocation;->addListener(Lio/rong/imlib/NativeClient$RealTimeLocationListener;)V

    .line 415
    :cond_0
    return-void

    .line 411
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getRealTimeLocationCurrentState(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    .locals 4
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 386
    .local v0, "sl":Lio/rong/imlib/location/RealTimeLocation;
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 387
    const-string v1, "getRealTimeLocationCurrentState"

    const-string v2, "No instance!"

    invoke-static {p0, v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_IDLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    .line 397
    :goto_0
    return-object v1

    .line 391
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "sl":Lio/rong/imlib/location/RealTimeLocation;
    check-cast v0, Lio/rong/imlib/location/RealTimeLocation;

    .line 392
    .restart local v0    # "sl":Lio/rong/imlib/location/RealTimeLocation;
    if-nez v0, :cond_1

    .line 393
    const-string v1, "getRealTimeLocationCurrentState"

    const-string v2, "No instance!"

    invoke-static {p0, v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_IDLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {v0}, Lio/rong/imlib/location/RealTimeLocation;->getRealTimeLocationCurrentState()Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v1

    goto :goto_0
.end method

.method public getRealTimeLocationParticipants(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 362
    const/4 v0, 0x0

    .line 364
    .local v0, "sl":Lio/rong/imlib/location/RealTimeLocation;
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 365
    const-string v2, "getRealTimeLocationParticipants"

    const-string v3, "No instance!"

    invoke-static {p0, v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_0
    return-object v1

    .line 369
    :cond_0
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "sl":Lio/rong/imlib/location/RealTimeLocation;
    check-cast v0, Lio/rong/imlib/location/RealTimeLocation;

    .line 370
    .restart local v0    # "sl":Lio/rong/imlib/location/RealTimeLocation;
    if-nez v0, :cond_1

    .line 371
    const-string v2, "getRealTimeLocationParticipants"

    const-string v3, "No instance!"

    invoke-static {p0, v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {v0}, Lio/rong/imlib/location/RealTimeLocation;->getParticipants()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public joinRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I
    .locals 6
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 310
    const/4 v2, 0x0

    .line 312
    .local v2, "sl":Lio/rong/imlib/location/RealTimeLocation;
    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 313
    const-string v3, "joinRealTimeLocation"

    const-string v4, "No instance!"

    invoke-static {p0, v3, v4}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-object v3, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_NOT_INIT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-virtual {v3}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->getValue()I

    move-result v3

    .line 333
    :goto_0
    return v3

    .line 317
    :cond_0
    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "sl":Lio/rong/imlib/location/RealTimeLocation;
    check-cast v2, Lio/rong/imlib/location/RealTimeLocation;

    .line 318
    .restart local v2    # "sl":Lio/rong/imlib/location/RealTimeLocation;
    if-nez v2, :cond_1

    .line 319
    const-string v3, "joinRealTimeLocation"

    const-string v4, "No instance!"

    invoke-static {p0, v3, v4}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-object v3, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_NOT_INIT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-virtual {v3}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->getValue()I

    move-result v3

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {v2}, Lio/rong/imlib/location/RealTimeLocation;->gpsIsAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 324
    sget-object v3, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_GPS_DISABLED:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-virtual {v3}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->getValue()I

    move-result v3

    goto :goto_0

    .line 326
    :cond_2
    iget-object v3, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lio/rong/imlib/navigation/Navigation;->getNavigationData(Landroid/content/Context;)Lio/rong/imlib/navigation/NavigationConfig;

    move-result-object v0

    .line 327
    .local v0, "config":Lio/rong/imlib/navigation/NavigationConfig;
    invoke-virtual {p0, p1, p2}, Lio/rong/imlib/location/RealTimeLocationManager;->getRealTimeLocationParticipants(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 328
    .local v1, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lio/rong/imlib/navigation/NavigationConfig;->getMaxParticipant()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 329
    sget-object v3, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_EXCEED_MAX_PARTICIPANT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-virtual {v3}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->getValue()I

    move-result v3

    goto :goto_0

    .line 331
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/rong/imlib/location/RealTimeLocation;->sendMessage(I)V

    .line 333
    sget-object v3, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_SUCCESS:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-virtual {v3}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->getValue()I

    move-result v3

    goto :goto_0
.end method

.method public quitRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 342
    .local v0, "sl":Lio/rong/imlib/location/RealTimeLocation;
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 343
    const-string v1, "quitRealTimeLocation"

    const-string v2, "No instance!"

    invoke-static {p0, v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "sl":Lio/rong/imlib/location/RealTimeLocation;
    check-cast v0, Lio/rong/imlib/location/RealTimeLocation;

    .line 348
    .restart local v0    # "sl":Lio/rong/imlib/location/RealTimeLocation;
    if-nez v0, :cond_1

    .line 349
    const-string v1, "quitRealTimeLocation"

    const-string v2, "No instance!"

    invoke-static {p0, v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/rong/imlib/location/RealTimeLocation;->sendMessage(I)V

    goto :goto_0
.end method

.method public removeListener(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/NativeClient$RealTimeLocationListener;)V
    .locals 3
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "listener"    # Lio/rong/imlib/NativeClient$RealTimeLocationListener;

    .prologue
    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p3, :cond_0

    .line 426
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {v1, p3}, Lio/rong/imlib/location/RealTimeLocation;->deleteListener(Lio/rong/imlib/NativeClient$RealTimeLocationListener;)V

    .line 430
    :cond_0
    return-void
.end method

.method public setupRealTimeLocation(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p3, "targetId"    # Ljava/lang/String;

    .prologue
    .line 246
    const/4 v1, 0x0

    .line 248
    .local v1, "errorCode":I
    const/4 v4, 0x0

    .line 249
    .local v4, "rl":Lio/rong/imlib/location/RealTimeLocation;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "key":Ljava/lang/String;
    invoke-static {p1}, Lio/rong/imlib/navigation/Navigation;->getNavigationData(Landroid/content/Context;)Lio/rong/imlib/navigation/NavigationConfig;

    move-result-object v0

    .line 252
    .local v0, "config":Lio/rong/imlib/navigation/NavigationConfig;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/rong/imlib/navigation/NavigationConfig;->isConfigure()Z

    move-result v7

    if-nez v7, :cond_1

    .line 253
    :cond_0
    sget-object v7, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_CONVERSATION_NOT_SUPPORT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-virtual {v7}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->getValue()I

    move-result v7

    .line 275
    :goto_0
    return v7

    .line 256
    :cond_1
    invoke-virtual {v0}, Lio/rong/imlib/navigation/NavigationConfig;->getConversationTypes()[I

    move-result-object v6

    .line 257
    .local v6, "types":[I
    const/4 v5, 0x0

    .line 258
    .local v5, "support":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_2

    .line 259
    invoke-virtual {p2}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v7

    aget v8, v6, v2

    if-ne v7, v8, :cond_3

    .line 260
    const/4 v5, 0x1

    .line 264
    :cond_2
    if-nez v5, :cond_4

    .line 265
    sget-object v7, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_CONVERSATION_NOT_SUPPORT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-virtual {v7}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->getValue()I

    move-result v7

    goto :goto_0

    .line 258
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 268
    :cond_4
    iget-object v7, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 269
    iget-object v7, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "rl":Lio/rong/imlib/location/RealTimeLocation;
    check-cast v4, Lio/rong/imlib/location/RealTimeLocation;

    .line 272
    .restart local v4    # "rl":Lio/rong/imlib/location/RealTimeLocation;
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lio/rong/imlib/location/RealTimeLocation;->getRealTimeLocationCurrentState()Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v7

    sget-object v8, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_IDLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    invoke-virtual {v7, v8}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 273
    sget-object v7, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_IS_ON_GOING:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-virtual {v7}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->getValue()I

    move-result v1

    :cond_6
    move v7, v1

    .line 275
    goto :goto_0
.end method

.method public startRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I
    .locals 4
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 282
    const/4 v1, 0x0

    .line 283
    .local v1, "rl":Lio/rong/imlib/location/RealTimeLocation;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 286
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "rl":Lio/rong/imlib/location/RealTimeLocation;
    check-cast v1, Lio/rong/imlib/location/RealTimeLocation;

    .line 287
    .restart local v1    # "rl":Lio/rong/imlib/location/RealTimeLocation;
    if-nez v1, :cond_0

    .line 288
    new-instance v1, Lio/rong/imlib/location/RealTimeLocation;

    .end local v1    # "rl":Lio/rong/imlib/location/RealTimeLocation;
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2}, Lio/rong/imlib/location/RealTimeLocation;-><init>(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    .line 289
    .restart local v1    # "rl":Lio/rong/imlib/location/RealTimeLocation;
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_0
    :goto_0
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/NativeClient$RealTimeLocationListener;

    invoke-virtual {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->addListener(Lio/rong/imlib/NativeClient$RealTimeLocationListener;)V

    .line 298
    invoke-virtual {v1}, Lio/rong/imlib/location/RealTimeLocation;->gpsIsAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 299
    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_GPS_DISABLED:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-virtual {v2}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->getValue()I

    move-result v2

    .line 303
    :goto_1
    return v2

    .line 292
    :cond_1
    new-instance v1, Lio/rong/imlib/location/RealTimeLocation;

    .end local v1    # "rl":Lio/rong/imlib/location/RealTimeLocation;
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2}, Lio/rong/imlib/location/RealTimeLocation;-><init>(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    .line 293
    .restart local v1    # "rl":Lio/rong/imlib/location/RealTimeLocation;
    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 301
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->sendMessage(I)V

    .line 303
    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_SUCCESS:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    invoke-virtual {v2}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->getValue()I

    move-result v2

    goto :goto_1
.end method

.method public updateLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;DD)V
    .locals 5
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 435
    .local v0, "rl":Lio/rong/imlib/location/RealTimeLocation;
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 436
    const-string v1, "getRealTimeLocationCurrentState"

    const-string v2, "No instance!"

    invoke-static {p0, v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocationManager;->mInsMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "rl":Lio/rong/imlib/location/RealTimeLocation;
    check-cast v0, Lio/rong/imlib/location/RealTimeLocation;

    .line 441
    .restart local v0    # "rl":Lio/rong/imlib/location/RealTimeLocation;
    if-nez v0, :cond_1

    .line 442
    const-string v1, "getRealTimeLocationCurrentState"

    const-string v2, "No instance!"

    invoke-static {p0, v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 446
    :cond_1
    invoke-virtual {v0, p3, p4, p5, p6}, Lio/rong/imlib/location/RealTimeLocation;->updateLocation(DD)V

    goto :goto_0
.end method
