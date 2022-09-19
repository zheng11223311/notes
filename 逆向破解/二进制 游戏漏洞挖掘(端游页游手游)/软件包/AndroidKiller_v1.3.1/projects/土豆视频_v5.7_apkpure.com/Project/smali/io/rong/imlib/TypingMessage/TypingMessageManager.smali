.class public Lio/rong/imlib/TypingMessage/TypingMessageManager;
.super Ljava/lang/Object;
.source "TypingMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;,
        Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;
    }
.end annotation


# static fields
.field private static DISAPPEAR_INTERVAL:I

.field private static sS:Lio/rong/imlib/TypingMessage/TypingMessageManager;

.field private static sTypingMessageStatusListener:Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSendingConversation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTypingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x1770

    sput v0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->DISAPPEAR_INTERVAL:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mTypingMap:Ljava/util/HashMap;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lio/rong/imlib/TypingMessage/TypingMessageManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/TypingMessage/TypingMessageManager;

    .prologue
    .line 18
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mSendingConversation:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->DISAPPEAR_INTERVAL:I

    return v0
.end method

.method static synthetic access$200(Lio/rong/imlib/TypingMessage/TypingMessageManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/TypingMessage/TypingMessageManager;

    .prologue
    .line 18
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->sTypingMessageStatusListener:Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;

    return-object v0
.end method

.method static synthetic access$400(Lio/rong/imlib/TypingMessage/TypingMessageManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/TypingMessage/TypingMessageManager;

    .prologue
    .line 18
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mTypingMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->sS:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lio/rong/imlib/TypingMessage/TypingMessageManager;

    invoke-direct {v0}, Lio/rong/imlib/TypingMessage/TypingMessageManager;-><init>()V

    sput-object v0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->sS:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    .line 48
    :cond_0
    sget-object v0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->sS:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    return-object v0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lio/rong/imlib/TypingMessage/TypingMessageManager;

    invoke-direct {v0}, Lio/rong/imlib/TypingMessage/TypingMessageManager;-><init>()V

    sput-object v0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->sS:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    .line 53
    return-void
.end method

.method public static setTypingMessageStatusListener(Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;)V
    .locals 0
    .param p0, "listener"    # Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;

    .prologue
    .line 121
    sput-object p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->sTypingMessageStatusListener:Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;

    .line 122
    return-void
.end method


# virtual methods
.method public getTypingUserListFromConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";;;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mTypingMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1
.end method

.method public receiveTypingMessage(Lio/rong/imlib/model/Message;)V
    .locals 10
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 176
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    .line 177
    .local v2, "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "targetId":Ljava/lang/String;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, "userId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";;;"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, "key":Ljava/lang/String;
    iget-object v1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mTypingMap:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mTypingMap:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedHashMap;

    .line 185
    .local v4, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {v4, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 186
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v5, Lio/rong/imlib/TypingMessage/TypingMessageManager;->sTypingMessageStatusListener:Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v5, v2, v3, v1}, Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;->onChanged(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 190
    .end local v4    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_1
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 191
    .restart local v4    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v5, Lio/rong/imlib/TypingMessage/TypingMessageManager;->sTypingMessageStatusListener:Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v5, v2, v3, v1}, Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;->onChanged(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 193
    iget-object v1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mTypingMap:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;-><init>(Lio/rong/imlib/TypingMessage/TypingMessageManager;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/util/LinkedHashMap;Lio/rong/imlib/TypingMessage/TypingMessageManager$1;)V

    .line 195
    .local v0, "receiveRunnable":Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;
    iget-object v1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mHandler:Landroid/os/Handler;

    sget v5, Lio/rong/imlib/TypingMessage/TypingMessageManager;->DISAPPEAR_INTERVAL:I

    int-to-long v8, v5

    invoke-virtual {v1, v0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public sendTypingMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$Callback;)V
    .locals 9
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$Callback;

    .prologue
    const/4 v4, 0x0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";;;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 75
    .local v8, "key":Ljava/lang/String;
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mSendingConversation:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v3, Lio/rong/imlib/TypingMessage/IsTypingStatusMessage;

    invoke-direct {v3}, Lio/rong/imlib/TypingMessage/IsTypingStatusMessage;-><init>()V

    .line 79
    .local v3, "isTypingStatusMessage":Lio/rong/imlib/TypingMessage/IsTypingStatusMessage;
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v7, Lio/rong/imlib/TypingMessage/TypingMessageManager$1;

    invoke-direct {v7, p0, p3, v8}, Lio/rong/imlib/TypingMessage/TypingMessageManager$1;-><init>(Lio/rong/imlib/TypingMessage/TypingMessageManager;Lio/rong/imlib/RongIMClient$Callback;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 101
    .end local v3    # "isTypingStatusMessage":Lio/rong/imlib/TypingMessage/IsTypingStatusMessage;
    :goto_0
    return-void

    .line 98
    :cond_0
    const-string/jumbo v0, "sendTypingMessage"

    const-string/jumbo v1, "typing message in this conversation is sending"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p3}, Lio/rong/imlib/RongIMClient$Callback;->onSuccess()V

    goto :goto_0
.end method
