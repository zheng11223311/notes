.class public Lcom/alibaba/sdk/android/message/MessageUtils;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/sdk/android/message/Message;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static final c:Lcom/alibaba/sdk/android/message/Message;

.field private static final d:Lcom/alibaba/sdk/android/message/Message;

.field private static e:Lcom/alibaba/sdk/android/message/Message;

.field private static f:Lcom/alibaba/sdk/android/message/Message;

.field private static final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->g:Ljava/lang/Object;

    new-instance v0, Lcom/alibaba/sdk/android/message/Message;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/message/Message;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->c:Lcom/alibaba/sdk/android/message/Message;

    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/sdk/android/message/Message;->code:I

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->c:Lcom/alibaba/sdk/android/message/Message;

    const-string v1, "\u672a\u5728\u6d88\u606f\u6587\u4ef6\u4e2d\u627e\u5230 id \u4e3a {0} \u7684\u6d88\u606f"

    iput-object v1, v0, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->c:Lcom/alibaba/sdk/android/message/Message;

    const-string v1, "\u8bf7\u68c0\u67e5\u6240\u4f9d\u8d56\u7684 SDK \u9879\u76ee\uff0c\u6216\u82e5\u662f\u624b\u52a8\u62f7\u8d1d SDK \u81f3\u5f53\u524d\u5f00\u53d1\u5e94\u7528\u6240\u5728\u9879\u76ee\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6f0f\u62f7\u6587\u4ef6 res/values \u4e0b\u6587\u4ef6"

    iput-object v1, v0, Lcom/alibaba/sdk/android/message/Message;->action:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->c:Lcom/alibaba/sdk/android/message/Message;

    const-string v1, "E"

    iput-object v1, v0, Lcom/alibaba/sdk/android/message/Message;->type:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/sdk/android/message/Message;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/message/Message;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->d:Lcom/alibaba/sdk/android/message/Message;

    const/4 v1, 0x2

    iput v1, v0, Lcom/alibaba/sdk/android/message/Message;->code:I

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->d:Lcom/alibaba/sdk/android/message/Message;

    const-string v1, "\u68c0\u7d22\u6d88\u606f\u65f6\u53d1\u751f\u5982\u4e0b\u9519\u8bef {0}"

    iput-object v1, v0, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->d:Lcom/alibaba/sdk/android/message/Message;

    const-string v1, "\u8bf7\u68c0\u67e5\u6240\u4f9d\u8d56\u7684 SDK \u9879\u76ee\uff0c\u6216\u82e5\u662f\u624b\u52a8\u62f7\u8d1d SDK \u81f3\u5f53\u524d\u5f00\u53d1\u5e94\u7528\u6240\u5728\u9879\u76ee\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6f0f\u62f7\u6587\u4ef6 res/values \u4e0b\u6587\u4ef6"

    iput-object v1, v0, Lcom/alibaba/sdk/android/message/Message;->action:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->d:Lcom/alibaba/sdk/android/message/Message;

    const-string v1, "E"

    iput-object v1, v0, Lcom/alibaba/sdk/android/message/Message;->type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Lcom/alibaba/sdk/android/message/Message;
    .locals 5

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->e:Lcom/alibaba/sdk/android/message/Message;

    if-nez v0, :cond_1

    sget-object v1, Lcom/alibaba/sdk/android/message/MessageUtils;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->e:Lcom/alibaba/sdk/android/message/Message;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alibaba/sdk/android/message/MessageUtils;->b(I)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->e:Lcom/alibaba/sdk/android/message/Message;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->c:Lcom/alibaba/sdk/android/message/Message;

    sput-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->e:Lcom/alibaba/sdk/android/message/Message;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->e:Lcom/alibaba/sdk/android/message/Message;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/message/Message;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/message/Message;

    iget-object v1, v0, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->e:Lcom/alibaba/sdk/android/message/Message;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Lcom/alibaba/sdk/android/message/Message;
    .locals 4

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->f:Lcom/alibaba/sdk/android/message/Message;

    if-nez v0, :cond_1

    sget-object v1, Lcom/alibaba/sdk/android/message/MessageUtils;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->f:Lcom/alibaba/sdk/android/message/Message;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/alibaba/sdk/android/message/MessageUtils;->b(I)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->f:Lcom/alibaba/sdk/android/message/Message;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->d:Lcom/alibaba/sdk/android/message/Message;

    sput-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->f:Lcom/alibaba/sdk/android/message/Message;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->f:Lcom/alibaba/sdk/android/message/Message;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/message/Message;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/message/Message;

    iget-object v1, v0, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->f:Lcom/alibaba/sdk/android/message/Message;

    goto :goto_0
.end method

.method private static b(I)Lcom/alibaba/sdk/android/message/Message;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/b/a;->a:Landroid/content/Context;

    const-string v2, "string"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "alisdk_message_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/sdk/android/util/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/alibaba/sdk/android/message/Message;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/message/Message;-><init>()V

    iput p0, v1, Lcom/alibaba/sdk/android/message/Message;->code:I

    sget-object v3, Lcom/alibaba/sdk/android/b/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/sdk/android/b/a;->a:Landroid/content/Context;

    const-string v3, "string"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "alisdk_message_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_action"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/sdk/android/util/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/alibaba/sdk/android/b/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/sdk/android/message/Message;->action:Ljava/lang/String;

    :goto_1
    sget-object v2, Lcom/alibaba/sdk/android/b/a;->a:Landroid/content/Context;

    const-string v3, "string"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "alisdk_message_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/sdk/android/util/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v3, Lcom/alibaba/sdk/android/b/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/sdk/android/message/Message;->type:Ljava/lang/String;

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v2, ""

    iput-object v2, v1, Lcom/alibaba/sdk/android/message/Message;->action:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "kernel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fail to get message of the code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", the error message is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    const-string v2, "I"

    iput-object v2, v1, Lcom/alibaba/sdk/android/message/Message;->type:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static varargs createMessage(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/message/Message;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/message/Message;

    if-nez v0, :cond_3

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Lcom/alibaba/sdk/android/message/MessageUtils;->b(I)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    if-nez v1, :cond_1

    :try_start_3
    invoke-static {p0}, Lcom/alibaba/sdk/android/message/MessageUtils;->a(I)Lcom/alibaba/sdk/android/message/Message;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    :try_start_4
    sget-object v1, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/message/MessageUtils;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    goto :goto_1

    :cond_1
    :try_start_5
    array-length v0, p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v0, :cond_2

    :try_start_6
    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_2
    :try_start_7
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/message/Message;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/message/Message;

    iget-object v1, v1, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    sget-object v1, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public static varargs getMessageContent(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/message/Message;

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    sget-object v0, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Lcom/alibaba/sdk/android/message/MessageUtils;->b(I)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/alibaba/sdk/android/message/MessageUtils;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    if-nez v0, :cond_2

    :try_start_3
    invoke-static {p0}, Lcom/alibaba/sdk/android/message/MessageUtils;->a(I)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v1, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/message/MessageUtils;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_5
    iget-object v0, v0, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    :try_start_6
    sget-object v1, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/alibaba/sdk/android/message/MessageUtils;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
.end method
