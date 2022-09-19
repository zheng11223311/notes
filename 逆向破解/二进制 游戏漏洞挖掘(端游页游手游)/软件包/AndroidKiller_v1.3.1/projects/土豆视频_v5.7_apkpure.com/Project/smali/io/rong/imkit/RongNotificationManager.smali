.class public Lio/rong/imkit/RongNotificationManager;
.super Ljava/lang/Object;
.source "RongNotificationManager.java"


# static fields
.field private static sS:Lio/rong/imkit/RongNotificationManager;


# instance fields
.field mContext:Lio/rong/imkit/RongContext;

.field messageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lio/rong/imkit/RongNotificationManager;

    invoke-direct {v0}, Lio/rong/imkit/RongNotificationManager;-><init>()V

    sput-object v0, Lio/rong/imkit/RongNotificationManager;->sS:Lio/rong/imkit/RongNotificationManager;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    return-void
.end method

.method public static getInstance()Lio/rong/imkit/RongNotificationManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lio/rong/imkit/RongNotificationManager;->sS:Lio/rong/imkit/RongNotificationManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lio/rong/imkit/RongNotificationManager;

    invoke-direct {v0}, Lio/rong/imkit/RongNotificationManager;-><init>()V

    sput-object v0, Lio/rong/imkit/RongNotificationManager;->sS:Lio/rong/imkit/RongNotificationManager;

    .line 43
    :cond_0
    sget-object v0, Lio/rong/imkit/RongNotificationManager;->sS:Lio/rong/imkit/RongNotificationManager;

    return-object v0
.end method


# virtual methods
.method public init(Lio/rong/imkit/RongContext;)V
    .locals 1
    .param p1, "context"    # Lio/rong/imkit/RongContext;

    .prologue
    .line 33
    iput-object p1, p0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    .line 34
    invoke-virtual {p1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 37
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$NotificationDiscussionInfoEvent;)V
    .locals 8
    .param p1, "event"    # Lio/rong/imkit/model/Event$NotificationDiscussionInfoEvent;

    .prologue
    .line 329
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$NotificationDiscussionInfoEvent;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-static {v5, v6}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 331
    iget-object v5, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/model/Message;

    .line 332
    .local v2, "message":Lio/rong/imlib/model/Message;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v5

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v0

    .line 335
    .local v0, "content":Landroid/text/Spannable;
    iget-object v5, p0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v6}, Lio/rong/imkit/RongContext;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 337
    .local v4, "title":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hello :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$NotificationDiscussionInfoEvent;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4}, Lio/rong/notification/PushNotificationMessage;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/notification/PushNotificationMessage;

    move-result-object v3

    .line 339
    .local v3, "pushMsg":Lio/rong/notification/PushNotificationMessage;
    invoke-static {}, Lio/rong/notification/PushNotificationManager;->getInstance()Lio/rong/notification/PushNotificationManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lio/rong/notification/PushNotificationManager;->onReceiveMessage(Lio/rong/notification/PushNotificationMessage;Z)V

    .line 340
    iget-object v5, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .end local v0    # "content":Landroid/text/Spannable;
    .end local v2    # "message":Lio/rong/imlib/model/Message;
    .end local v3    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    .end local v4    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$NotificationGroupInfoEvent;)V
    .locals 8
    .param p1, "event"    # Lio/rong/imkit/model/Event$NotificationGroupInfoEvent;

    .prologue
    .line 308
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$NotificationGroupInfoEvent;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-static {v5, v6}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 311
    iget-object v5, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/model/Message;

    .line 313
    .local v2, "message":Lio/rong/imlib/model/Message;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v5

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v0

    .line 316
    .local v0, "content":Landroid/text/Spannable;
    iget-object v5, p0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v6}, Lio/rong/imkit/RongContext;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 318
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$NotificationGroupInfoEvent;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4}, Lio/rong/notification/PushNotificationMessage;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/notification/PushNotificationMessage;

    move-result-object v3

    .line 320
    .local v3, "pushMsg":Lio/rong/notification/PushNotificationMessage;
    invoke-static {}, Lio/rong/notification/PushNotificationManager;->getInstance()Lio/rong/notification/PushNotificationManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lio/rong/notification/PushNotificationManager;->onReceiveMessage(Lio/rong/notification/PushNotificationMessage;Z)V

    .line 321
    iget-object v5, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .end local v0    # "content":Landroid/text/Spannable;
    .end local v2    # "message":Lio/rong/imlib/model/Message;
    .end local v3    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    .end local v4    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$NotificationPublicServiceInfoEvent;)V
    .locals 8
    .param p1, "event"    # Lio/rong/imkit/model/Event$NotificationPublicServiceInfoEvent;

    .prologue
    .line 348
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$NotificationPublicServiceInfoEvent;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 351
    iget-object v5, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/model/Message;

    .line 353
    .local v2, "message":Lio/rong/imlib/model/Message;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v5

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v0

    .line 356
    .local v0, "content":Landroid/text/Spannable;
    iget-object v5, p0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v6}, Lio/rong/imkit/RongContext;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 358
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4}, Lio/rong/notification/PushNotificationMessage;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/notification/PushNotificationMessage;

    move-result-object v3

    .line 360
    .local v3, "pushMsg":Lio/rong/notification/PushNotificationMessage;
    invoke-static {}, Lio/rong/notification/PushNotificationManager;->getInstance()Lio/rong/notification/PushNotificationManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lio/rong/notification/PushNotificationManager;->onReceiveMessage(Lio/rong/notification/PushNotificationMessage;Z)V

    .line 361
    iget-object v5, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .end local v0    # "content":Landroid/text/Spannable;
    .end local v2    # "message":Lio/rong/imlib/model/Message;
    .end local v3    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    .end local v4    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$NotificationUserInfoEvent;)V
    .locals 13
    .param p1, "event"    # Lio/rong/imkit/model/Event$NotificationUserInfoEvent;

    .prologue
    const/4 v12, 0x0

    .line 281
    const/4 v10, 0x4

    new-array v9, v10, [Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v10, v9, v12

    const/4 v10, 0x1

    sget-object v11, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    sget-object v11, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    sget-object v11, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v11, v9, v10

    .line 284
    .local v9, "types":[Lio/rong/imlib/model/Conversation$ConversationType;
    move-object v0, v9

    .local v0, "arr$":[Lio/rong/imlib/model/Conversation$ConversationType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v8, v0, v2

    .line 286
    .local v8, "type":Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$NotificationUserInfoEvent;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "key":Ljava/lang/String;
    iget-object v10, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 289
    iget-object v10, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Message;

    .line 291
    .local v5, "message":Lio/rong/imlib/model/Message;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v10

    invoke-virtual {v5}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v10

    invoke-virtual {v5}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v1

    .line 294
    .local v1, "content":Landroid/text/Spannable;
    iget-object v10, p0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v10}, Lio/rong/imkit/RongContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, p0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v11}, Lio/rong/imkit/RongContext;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 296
    .local v7, "title":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$NotificationUserInfoEvent;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v8, v11, v7}, Lio/rong/notification/PushNotificationMessage;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/notification/PushNotificationMessage;

    move-result-object v6

    .line 298
    .local v6, "pushMsg":Lio/rong/notification/PushNotificationMessage;
    invoke-static {}, Lio/rong/notification/PushNotificationManager;->getInstance()Lio/rong/notification/PushNotificationManager;

    move-result-object v10

    invoke-virtual {v10, v6, v12}, Lio/rong/notification/PushNotificationManager;->onReceiveMessage(Lio/rong/notification/PushNotificationMessage;Z)V

    .line 299
    iget-object v10, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .end local v1    # "content":Landroid/text/Spannable;
    .end local v5    # "message":Lio/rong/imlib/model/Message;
    .end local v6    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    .end local v7    # "title":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v3    # "key":Ljava/lang/String;
    .end local v8    # "type":Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_1
    return-void
.end method

.method public onEventMainThread(Lio/rong/imlib/model/Discussion;)V
    .locals 10
    .param p1, "discussion"    # Lio/rong/imlib/model/Discussion;

    .prologue
    .line 232
    const/4 v4, 0x0

    .line 233
    .local v4, "targetName":Ljava/lang/String;
    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-static {v6, v7}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "key":Ljava/lang/String;
    iget-object v6, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 235
    iget-object v6, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/model/Message;

    .line 236
    .local v2, "message":Lio/rong/imlib/model/Message;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v6

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v0

    .line 239
    .local v0, "content":Landroid/text/Spannable;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v5

    .line 241
    .local v5, "userInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v5, :cond_1

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 247
    :goto_0
    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lio/rong/notification/PushNotificationMessage;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/notification/PushNotificationMessage;

    move-result-object v3

    .line 252
    .local v3, "pushMsg":Lio/rong/notification/PushNotificationMessage;
    :goto_1
    invoke-static {}, Lio/rong/notification/PushNotificationManager;->getInstance()Lio/rong/notification/PushNotificationManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Lio/rong/notification/PushNotificationManager;->onReceiveMessage(Lio/rong/notification/PushNotificationMessage;Z)V

    .line 253
    iget-object v6, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .end local v0    # "content":Landroid/text/Spannable;
    .end local v2    # "message":Lio/rong/imlib/model/Message;
    .end local v3    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    .end local v5    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_0
    return-void

    .line 244
    .restart local v0    # "content":Landroid/text/Spannable;
    .restart local v2    # "message":Lio/rong/imlib/model/Message;
    .restart local v5    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 250
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lio/rong/notification/PushNotificationMessage;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/notification/PushNotificationMessage;

    move-result-object v3

    .restart local v3    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    goto :goto_1
.end method

.method public onEventMainThread(Lio/rong/imlib/model/Group;)V
    .locals 10
    .param p1, "groupInfo"    # Lio/rong/imlib/model/Group;

    .prologue
    .line 199
    const/4 v4, 0x0

    .line 200
    .local v4, "targetName":Ljava/lang/String;
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-static {v6, v7}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "key":Ljava/lang/String;
    iget-object v6, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 203
    iget-object v6, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/model/Message;

    .line 205
    .local v2, "message":Lio/rong/imlib/model/Message;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v6

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v0

    .line 208
    .local v0, "content":Landroid/text/Spannable;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v5

    .line 210
    .local v5, "userInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v5, :cond_1

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 216
    :goto_0
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lio/rong/notification/PushNotificationMessage;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/notification/PushNotificationMessage;

    move-result-object v3

    .line 222
    .local v3, "pushMsg":Lio/rong/notification/PushNotificationMessage;
    :goto_1
    invoke-static {}, Lio/rong/notification/PushNotificationManager;->getInstance()Lio/rong/notification/PushNotificationManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Lio/rong/notification/PushNotificationManager;->onReceiveMessage(Lio/rong/notification/PushNotificationMessage;Z)V

    .line 223
    iget-object v6, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .end local v0    # "content":Landroid/text/Spannable;
    .end local v2    # "message":Lio/rong/imlib/model/Message;
    .end local v3    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    .end local v5    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_0
    return-void

    .line 213
    .restart local v0    # "content":Landroid/text/Spannable;
    .restart local v2    # "message":Lio/rong/imlib/model/Message;
    .restart local v5    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 219
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lio/rong/notification/PushNotificationMessage;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/notification/PushNotificationMessage;

    move-result-object v3

    .restart local v3    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    goto :goto_1
.end method

.method public onEventMainThread(Lio/rong/imlib/model/PublicServiceProfile;)V
    .locals 8
    .param p1, "info"    # Lio/rong/imlib/model/PublicServiceProfile;

    .prologue
    .line 261
    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    iget-object v4, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/model/Message;

    .line 265
    .local v2, "message":Lio/rong/imlib/model/Message;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v4

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v0

    .line 267
    .local v0, "content":Landroid/text/Spannable;
    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 268
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lio/rong/notification/PushNotificationMessage;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/notification/PushNotificationMessage;

    move-result-object v3

    .line 272
    .local v3, "pushMsg":Lio/rong/notification/PushNotificationMessage;
    :goto_0
    invoke-static {}, Lio/rong/notification/PushNotificationManager;->getInstance()Lio/rong/notification/PushNotificationManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lio/rong/notification/PushNotificationManager;->onReceiveMessage(Lio/rong/notification/PushNotificationMessage;Z)V

    .line 273
    iget-object v4, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .end local v0    # "content":Landroid/text/Spannable;
    .end local v2    # "message":Lio/rong/imlib/model/Message;
    .end local v3    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    :cond_0
    return-void

    .line 270
    .restart local v0    # "content":Landroid/text/Spannable;
    .restart local v2    # "message":Lio/rong/imlib/model/Message;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lio/rong/notification/PushNotificationMessage;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/notification/PushNotificationMessage;

    move-result-object v3

    .restart local v3    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imlib/model/UserInfo;)V
    .locals 13
    .param p1, "userInfo"    # Lio/rong/imlib/model/UserInfo;

    .prologue
    const/4 v12, 0x0

    .line 170
    const/4 v9, 0x4

    new-array v8, v9, [Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v9, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v9, v8, v12

    const/4 v9, 0x1

    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v10, v8, v9

    .line 173
    .local v8, "types":[Lio/rong/imlib/model/Conversation$ConversationType;
    move-object v0, v8

    .local v0, "arr$":[Lio/rong/imlib/model/Conversation$ConversationType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v7, v0, v2

    .line 175
    .local v7, "type":Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v9

    invoke-virtual {v9}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "key":Ljava/lang/String;
    iget-object v9, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 178
    iget-object v9, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Message;

    .line 180
    .local v5, "message":Lio/rong/imlib/model/Message;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v9

    invoke-virtual {v5}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v9

    invoke-virtual {v5}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v1

    .line 183
    .local v1, "content":Landroid/text/Spannable;
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    .line 184
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v7, v10, v11}, Lio/rong/notification/PushNotificationMessage;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/notification/PushNotificationMessage;

    move-result-object v6

    .line 189
    .local v6, "pushMsg":Lio/rong/notification/PushNotificationMessage;
    :goto_1
    invoke-static {}, Lio/rong/notification/PushNotificationManager;->getInstance()Lio/rong/notification/PushNotificationManager;

    move-result-object v9

    invoke-virtual {v9, v6, v12}, Lio/rong/notification/PushNotificationManager;->onReceiveMessage(Lio/rong/notification/PushNotificationMessage;Z)V

    .line 190
    iget-object v9, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .end local v1    # "content":Landroid/text/Spannable;
    .end local v5    # "message":Lio/rong/imlib/model/Message;
    .end local v6    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .restart local v1    # "content":Landroid/text/Spannable;
    .restart local v5    # "message":Lio/rong/imlib/model/Message;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v7, v10, v11}, Lio/rong/notification/PushNotificationMessage;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/notification/PushNotificationMessage;

    move-result-object v6

    .restart local v6    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    goto :goto_1

    .line 193
    .end local v1    # "content":Landroid/text/Spannable;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "message":Lio/rong/imlib/model/Message;
    .end local v6    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    .end local v7    # "type":Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_2
    return-void
.end method

.method public onReceiveMessageFromApp(Lio/rong/imlib/model/Message;Z)V
    .locals 17
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "isKeepSilent"    # Z

    .prologue
    .line 48
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v12

    .line 49
    .local v12, "type":Lio/rong/imlib/model/Conversation$ConversationType;
    const/4 v11, 0x0

    .line 52
    .local v11, "targetUserName":Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v8

    .line 53
    .local v8, "provider":Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
    if-nez v8, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v14

    invoke-virtual {v8, v14}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v1

    .line 58
    .local v1, "content":Landroid/text/Spannable;
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v15

    invoke-static {v14, v15}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v6

    .line 60
    .local v6, "key":Lio/rong/imkit/model/ConversationKey;
    const-string v14, "onReceiveMessageFromApp"

    const-string/jumbo v15, "start"

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    if-nez v1, :cond_2

    .line 63
    const-string v14, "onReceiveMessageFromApp"

    const-string v15, "Content is null. Return directly."

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_2
    sget-object v14, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v12, v14}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    sget-object v14, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v12, v14}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    sget-object v14, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v12, v14}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    sget-object v14, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v12, v14}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 70
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v13

    .line 71
    .local v13, "userInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_5

    .line 72
    :cond_4
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v13

    .line 74
    :cond_5
    if-eqz v13, :cond_6

    .line 75
    invoke-virtual {v13}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v11

    .line 79
    :goto_1
    if-eqz v11, :cond_7

    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v11}, Lio/rong/notification/PushNotificationMessage;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/notification/PushNotificationMessage;

    move-result-object v9

    .line 81
    .local v9, "pushMsg":Lio/rong/notification/PushNotificationMessage;
    invoke-static {}, Lio/rong/notification/PushNotificationManager;->getInstance()Lio/rong/notification/PushNotificationManager;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v9, v0}, Lio/rong/notification/PushNotificationManager;->onReceiveMessage(Lio/rong/notification/PushNotificationMessage;Z)V

    goto/16 :goto_0

    .line 77
    .end local v9    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 83
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 86
    .end local v13    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_8
    sget-object v14, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v12, v14}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 87
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/rong/imkit/RongContext;->getGroupInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/Group;

    move-result-object v3

    .line 88
    .local v3, "groupInfo":Lio/rong/imlib/model/Group;
    const/4 v10, 0x0

    .line 89
    .local v10, "targetName":Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 90
    invoke-virtual {v3}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v11

    .line 93
    :cond_9
    if-eqz v11, :cond_f

    .line 94
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v7

    .line 95
    .local v7, "messageContent":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {v7}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 96
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v15

    invoke-virtual {v15}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 113
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v11}, Lio/rong/notification/PushNotificationMessage;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/notification/PushNotificationMessage;

    move-result-object v9

    .line 114
    .restart local v9    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    invoke-static {}, Lio/rong/notification/PushNotificationManager;->getInstance()Lio/rong/notification/PushNotificationManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v9, v15}, Lio/rong/notification/PushNotificationManager;->onReceiveMessage(Lio/rong/notification/PushNotificationMessage;Z)V

    goto/16 :goto_0

    .line 99
    .end local v9    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    :cond_a
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lio/rong/imkit/RongContext;->getGroupUserInfoFromCache(Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/model/GroupUserInfo;

    move-result-object v4

    .line 100
    .local v4, "groupUserInfo":Lio/rong/imkit/model/GroupUserInfo;
    if-eqz v4, :cond_b

    .line 101
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 103
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v13

    .line 104
    .restart local v13    # "userInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v13, :cond_c

    invoke-virtual {v13}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_d

    .line 105
    :cond_c
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v13

    .line 107
    :cond_d
    if-eqz v13, :cond_e

    .line 108
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 110
    :cond_e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 116
    .end local v4    # "groupUserInfo":Lio/rong/imkit/model/GroupUserInfo;
    .end local v7    # "messageContent":Lio/rong/imlib/model/MessageContent;
    .end local v13    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 119
    .end local v3    # "groupInfo":Lio/rong/imlib/model/Group;
    .end local v10    # "targetName":Ljava/lang/String;
    :cond_10
    sget-object v14, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v12, v14}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 120
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/rong/imkit/RongContext;->getDiscussionInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/Discussion;

    move-result-object v2

    .line 122
    .local v2, "discussionInfo":Lio/rong/imlib/model/Discussion;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v13

    .line 124
    .restart local v13    # "userInfo":Lio/rong/imlib/model/UserInfo;
    const/4 v10, 0x0

    .line 126
    .restart local v10    # "targetName":Ljava/lang/String;
    if-eqz v2, :cond_11

    .line 127
    invoke-virtual {v2}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v11

    .line 129
    :cond_11
    if-eqz v11, :cond_13

    .line 130
    if-eqz v13, :cond_12

    .line 131
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 136
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v11}, Lio/rong/notification/PushNotificationMessage;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/notification/PushNotificationMessage;

    move-result-object v9

    .line 137
    .restart local v9    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    invoke-static {}, Lio/rong/notification/PushNotificationManager;->getInstance()Lio/rong/notification/PushNotificationManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v9, v15}, Lio/rong/notification/PushNotificationManager;->onReceiveMessage(Lio/rong/notification/PushNotificationMessage;Z)V

    goto/16 :goto_0

    .line 133
    .end local v9    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    :cond_12
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 139
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 141
    .end local v2    # "discussionInfo":Lio/rong/imlib/model/Discussion;
    .end local v10    # "targetName":Ljava/lang/String;
    .end local v13    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_14
    invoke-virtual {v12}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v15}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_15

    invoke-virtual {v12}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lio/rong/imlib/model/Conversation$PublicServiceType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    invoke-virtual {v15}, Lio/rong/imlib/model/Conversation$PublicServiceType;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 144
    :cond_15
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v14

    invoke-virtual {v6}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/rong/imkit/RongContext;->getPublicServiceInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v5

    .line 146
    .local v5, "info":Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v5, :cond_16

    .line 147
    invoke-virtual {v5}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v11

    .line 150
    :cond_16
    if-eqz v11, :cond_17

    .line 151
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v11}, Lio/rong/notification/PushNotificationMessage;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/notification/PushNotificationMessage;

    move-result-object v9

    .line 152
    .restart local v9    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    invoke-static {}, Lio/rong/notification/PushNotificationManager;->getInstance()Lio/rong/notification/PushNotificationManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v9, v15}, Lio/rong/notification/PushNotificationManager;->onReceiveMessage(Lio/rong/notification/PushNotificationMessage;Z)V

    goto/16 :goto_0

    .line 154
    .end local v9    # "pushMsg":Lio/rong/notification/PushNotificationMessage;
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public onRemoveNotification()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 162
    invoke-static {}, Lio/rong/notification/PushNotificationManager;->getInstance()Lio/rong/notification/PushNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/notification/PushNotificationManager;->onRemoveNotificationMsgFromCache()V

    .line 163
    return-void
.end method
