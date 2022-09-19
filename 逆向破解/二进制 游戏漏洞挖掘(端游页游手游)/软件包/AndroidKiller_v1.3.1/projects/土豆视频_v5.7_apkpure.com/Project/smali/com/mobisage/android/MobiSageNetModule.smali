.class public Lcom/mobisage/android/MobiSageNetModule;
.super Ljava/lang/Object;
.source "MobiSageNetModule.java"


# static fields
.field private static final Default_Pool_Size:I = 0xc

.field private static final Max_Pool_Size:I = 0x10

.field private static ourInstance:Lcom/mobisage/android/MobiSageNetModule;


# instance fields
.field private final messageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/mobisage/android/MobiSageMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final resClusterMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mobisage/android/MobiSageResCluster;",
            ">;"
        }
    .end annotation
.end field

.field private final runnableMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/util/UUID;",
            "Lcom/mobisage/android/MobiSageRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/mobisage/android/MobiSageNetModule;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageNetModule;-><init>()V

    sput-object v0, Lcom/mobisage/android/MobiSageNetModule;->ourInstance:Lcom/mobisage/android/MobiSageNetModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageNetModule;->runnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageNetModule;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    iget-object v0, p0, Lcom/mobisage/android/MobiSageNetModule;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/mobisage/android/MobiSageNetModule;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/mobisage/android/MobiSageNetModule;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/mobisage/android/MobiSageNetModule;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageNetModule;->resClusterMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    return-void
.end method

.method private cancelMobiSageResMessage(Lcom/mobisage/android/MobiSageResMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageResMessage;

    .prologue
    .line 121
    iget-object v3, p0, Lcom/mobisage/android/MobiSageNetModule;->resClusterMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/mobisage/android/MobiSageResMessage;->sourceURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/mobisage/android/MobiSageNetModule;->resClusterMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/mobisage/android/MobiSageResMessage;->sourceURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageResCluster;

    .line 125
    .local v0, "cluster":Lcom/mobisage/android/MobiSageResCluster;
    iget-object v3, v0, Lcom/mobisage/android/MobiSageResCluster;->messageList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 126
    iget-object v3, v0, Lcom/mobisage/android/MobiSageResCluster;->messageList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/mobisage/android/MobiSageNetModule;->resClusterMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v3, p0, Lcom/mobisage/android/MobiSageNetModule;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, p1, Lcom/mobisage/android/MobiSageResMessage;->messageType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 132
    .local v2, "targetQueue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/mobisage/android/MobiSageMessage;>;"
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_2
    iget-object v3, p0, Lcom/mobisage/android/MobiSageNetModule;->runnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Lcom/mobisage/android/MobiSageResCluster;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobisage/android/MobiSageRunnable;

    .line 136
    .local v1, "runnable":Lcom/mobisage/android/MobiSageRunnable;
    invoke-virtual {v1}, Lcom/mobisage/android/MobiSageRunnable;->destoryRunnable()V

    .line 137
    iget-object v3, p0, Lcom/mobisage/android/MobiSageNetModule;->runnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Lcom/mobisage/android/MobiSageResCluster;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getInstance()Lcom/mobisage/android/MobiSageNetModule;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/mobisage/android/MobiSageNetModule;->ourInstance:Lcom/mobisage/android/MobiSageNetModule;

    return-object v0
.end method

.method private pushMobiSageResMessage(Lcom/mobisage/android/MobiSageResMessage;)V
    .locals 6
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageResMessage;

    .prologue
    .line 73
    new-instance v1, Ljava/io/File;

    iget-object v3, p1, Lcom/mobisage/android/MobiSageResMessage;->targetURL:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, "resFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    iget-object v3, p1, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    const-string v4, "StatusCode"

    const/16 v5, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    .line 77
    iget-object v3, p1, Lcom/mobisage/android/MobiSageResMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    if-eqz v3, :cond_0

    .line 78
    iget-object v3, p1, Lcom/mobisage/android/MobiSageResMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    invoke-interface {v3, p1}, Lcom/mobisage/android/IMobiSageMessageCallback;->onMobiSageMessageFinish(Lcom/mobisage/android/MobiSageMessage;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/mobisage/android/MobiSageNetModule;->resClusterMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/mobisage/android/MobiSageResMessage;->sourceURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    iget-object v3, p0, Lcom/mobisage/android/MobiSageNetModule;->resClusterMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/mobisage/android/MobiSageResMessage;->sourceURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageResCluster;

    .line 84
    .local v0, "cluster":Lcom/mobisage/android/MobiSageResCluster;
    iget-object v3, v0, Lcom/mobisage/android/MobiSageResCluster;->messageList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v0    # "cluster":Lcom/mobisage/android/MobiSageResCluster;
    :cond_2
    new-instance v0, Lcom/mobisage/android/MobiSageResCluster;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageResCluster;-><init>()V

    .line 87
    .restart local v0    # "cluster":Lcom/mobisage/android/MobiSageResCluster;
    iget-object v3, p1, Lcom/mobisage/android/MobiSageResMessage;->sourceURL:Ljava/lang/String;

    iput-object v3, v0, Lcom/mobisage/android/MobiSageResCluster;->sourceURL:Ljava/lang/String;

    .line 88
    iget-object v3, p1, Lcom/mobisage/android/MobiSageResMessage;->tempURL:Ljava/lang/String;

    iput-object v3, v0, Lcom/mobisage/android/MobiSageResCluster;->tempURL:Ljava/lang/String;

    .line 89
    iget-object v3, p1, Lcom/mobisage/android/MobiSageResMessage;->targetURL:Ljava/lang/String;

    iput-object v3, v0, Lcom/mobisage/android/MobiSageResCluster;->targetURL:Ljava/lang/String;

    .line 90
    iget-object v3, v0, Lcom/mobisage/android/MobiSageResCluster;->messageList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v3, p0, Lcom/mobisage/android/MobiSageNetModule;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, p1, Lcom/mobisage/android/MobiSageResMessage;->messageType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 94
    .local v2, "targetQueue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/mobisage/android/MobiSageMessage;>;"
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v3, p0, Lcom/mobisage/android/MobiSageNetModule;->resClusterMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/mobisage/android/MobiSageResMessage;->sourceURL:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private scheduleHTTPReqMessage()Z
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    iget-object v6, p0, Lcom/mobisage/android/MobiSageNetModule;->runnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    if-lt v6, v8, :cond_0

    .line 174
    :goto_0
    return v4

    .line 158
    :cond_0
    iget-object v6, p0, Lcom/mobisage/android/MobiSageNetModule;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 160
    .local v2, "targetQueue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/mobisage/android/MobiSageMessage;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v6

    if-eqz v6, :cond_2

    .line 161
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageMessage;

    .line 162
    .local v0, "msg":Lcom/mobisage/android/MobiSageMessage;
    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageMessage;->createMessageRunnable()Ljava/lang/Runnable;

    move-result-object v1

    check-cast v1, Lcom/mobisage/android/MobiSageRunnable;

    .line 166
    .local v1, "runnable":Lcom/mobisage/android/MobiSageRunnable;
    iget-object v6, p0, Lcom/mobisage/android/MobiSageNetModule;->runnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, v0, Lcom/mobisage/android/MobiSageMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v6, v7, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 169
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 170
    iget-object v6, p0, Lcom/mobisage/android/MobiSageNetModule;->runnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    if-lt v6, v8, :cond_1

    goto :goto_0

    .end local v0    # "msg":Lcom/mobisage/android/MobiSageMessage;
    .end local v1    # "runnable":Lcom/mobisage/android/MobiSageRunnable;
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_2
    move v4, v5

    .line 174
    goto :goto_0
.end method

.method private scheduleHTTPResMessage()Z
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/4 v4, 0x0

    .line 178
    iget-object v5, p0, Lcom/mobisage/android/MobiSageNetModule;->runnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    if-lt v5, v7, :cond_0

    .line 196
    :goto_0
    return v4

    .line 181
    :cond_0
    iget-object v5, p0, Lcom/mobisage/android/MobiSageNetModule;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 183
    .local v2, "targetQueue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/mobisage/android/MobiSageMessage;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageMessage;

    .line 185
    .local v0, "msg":Lcom/mobisage/android/MobiSageMessage;
    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageMessage;->createMessageRunnable()Ljava/lang/Runnable;

    move-result-object v1

    check-cast v1, Lcom/mobisage/android/MobiSageRunnable;

    .line 189
    .local v1, "runnable":Lcom/mobisage/android/MobiSageRunnable;
    iget-object v5, p0, Lcom/mobisage/android/MobiSageNetModule;->runnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v0, Lcom/mobisage/android/MobiSageMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v5, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 192
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 193
    iget-object v5, p0, Lcom/mobisage/android/MobiSageNetModule;->runnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    if-lt v5, v7, :cond_1

    goto :goto_0

    .line 196
    .end local v0    # "msg":Lcom/mobisage/android/MobiSageMessage;
    .end local v1    # "runnable":Lcom/mobisage/android/MobiSageRunnable;
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private scheduleSuspendMessage()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method private scheduleTrackMessage()Z
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/4 v4, 0x0

    .line 200
    iget-object v5, p0, Lcom/mobisage/android/MobiSageNetModule;->runnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    if-lt v5, v7, :cond_0

    .line 218
    :goto_0
    return v4

    .line 203
    :cond_0
    iget-object v5, p0, Lcom/mobisage/android/MobiSageNetModule;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 205
    .local v2, "targetQueue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/mobisage/android/MobiSageMessage;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 206
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageMessage;

    .line 207
    .local v0, "msg":Lcom/mobisage/android/MobiSageMessage;
    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageMessage;->createMessageRunnable()Ljava/lang/Runnable;

    move-result-object v1

    check-cast v1, Lcom/mobisage/android/MobiSageRunnable;

    .line 211
    .local v1, "runnable":Lcom/mobisage/android/MobiSageRunnable;
    iget-object v5, p0, Lcom/mobisage/android/MobiSageNetModule;->runnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v0, Lcom/mobisage/android/MobiSageMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v5, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 214
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 215
    iget-object v5, p0, Lcom/mobisage/android/MobiSageNetModule;->runnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    if-lt v5, v7, :cond_1

    goto :goto_0

    .line 218
    .end local v0    # "msg":Lcom/mobisage/android/MobiSageMessage;
    .end local v1    # "runnable":Lcom/mobisage/android/MobiSageRunnable;
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancelMobiSageMessage(Lcom/mobisage/android/MobiSageMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageMessage;

    .prologue
    .line 100
    iget-object v2, p0, Lcom/mobisage/android/MobiSageNetModule;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Lcom/mobisage/android/MobiSageMessage;->messageType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    .end local p1    # "msg":Lcom/mobisage/android/MobiSageMessage;
    :goto_0
    return-void

    .line 103
    .restart local p1    # "msg":Lcom/mobisage/android/MobiSageMessage;
    :cond_0
    iget v2, p1, Lcom/mobisage/android/MobiSageMessage;->messageType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 104
    check-cast p1, Lcom/mobisage/android/MobiSageResMessage;

    .end local p1    # "msg":Lcom/mobisage/android/MobiSageMessage;
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageNetModule;->cancelMobiSageResMessage(Lcom/mobisage/android/MobiSageResMessage;)V

    .line 117
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageNetModule;->scheduleMessageMap()V

    goto :goto_0

    .line 106
    .restart local p1    # "msg":Lcom/mobisage/android/MobiSageMessage;
    :cond_2
    iget-object v2, p0, Lcom/mobisage/android/MobiSageNetModule;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Lcom/mobisage/android/MobiSageMessage;->messageType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 109
    .local v1, "targetQueue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/mobisage/android/MobiSageMessage;>;"
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :cond_3
    iget-object v2, p0, Lcom/mobisage/android/MobiSageNetModule;->runnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/mobisage/android/MobiSageMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/mobisage/android/MobiSageNetModule;->runnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/mobisage/android/MobiSageMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageRunnable;

    .line 113
    .local v0, "runnable":Lcom/mobisage/android/MobiSageRunnable;
    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageRunnable;->destoryRunnable()V

    .line 114
    iget-object v2, p0, Lcom/mobisage/android/MobiSageNetModule;->runnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/mobisage/android/MobiSageMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 40
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 41
    iget-object v0, p0, Lcom/mobisage/android/MobiSageNetModule;->resClusterMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 42
    iget-object v0, p0, Lcom/mobisage/android/MobiSageNetModule;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 43
    iget-object v0, p0, Lcom/mobisage/android/MobiSageNetModule;->runnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 44
    return-void
.end method

.method onMobisageRunnableFinish(Lcom/mobisage/android/MobiSageMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageMessage;

    .prologue
    .line 226
    iget v1, p1, Lcom/mobisage/android/MobiSageMessage;->messageType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    move-object v0, p1

    .line 227
    check-cast v0, Lcom/mobisage/android/MobiSageResMessage;

    .line 228
    .local v0, "message":Lcom/mobisage/android/MobiSageResMessage;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageNetModule;->resClusterMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/mobisage/android/MobiSageResMessage;->sourceURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/mobisage/android/MobiSageNetModule;->resClusterMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/mobisage/android/MobiSageResMessage;->sourceURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .end local v0    # "message":Lcom/mobisage/android/MobiSageResMessage;
    :cond_0
    iget-object v1, p0, Lcom/mobisage/android/MobiSageNetModule;->runnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/mobisage/android/MobiSageMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageNetModule;->scheduleMessageMap()V

    .line 233
    return-void
.end method

.method public pushMobiSageMessage(Lcom/mobisage/android/MobiSageMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageMessage;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/mobisage/android/MobiSageNetModule;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lcom/mobisage/android/MobiSageMessage;->messageType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    .end local p1    # "msg":Lcom/mobisage/android/MobiSageMessage;
    :goto_0
    return-void

    .line 62
    .restart local p1    # "msg":Lcom/mobisage/android/MobiSageMessage;
    :cond_0
    iget v1, p1, Lcom/mobisage/android/MobiSageMessage;->messageType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 63
    check-cast p1, Lcom/mobisage/android/MobiSageResMessage;

    .end local p1    # "msg":Lcom/mobisage/android/MobiSageMessage;
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageNetModule;->pushMobiSageResMessage(Lcom/mobisage/android/MobiSageResMessage;)V

    .line 69
    :goto_1
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageNetModule;->scheduleMessageMap()V

    goto :goto_0

    .line 65
    .restart local p1    # "msg":Lcom/mobisage/android/MobiSageMessage;
    :cond_1
    iget-object v1, p0, Lcom/mobisage/android/MobiSageNetModule;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lcom/mobisage/android/MobiSageMessage;->messageType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 67
    .local v0, "targetQueue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/mobisage/android/MobiSageMessage;>;"
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public pushMobiSageMessageArray(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/mobisage/android/MobiSageMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "messageList":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Lcom/mobisage/android/MobiSageMessage;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageMessage;

    .line 54
    .local v0, "msg":Lcom/mobisage/android/MobiSageMessage;
    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageNetModule;->pushMobiSageMessage(Lcom/mobisage/android/MobiSageMessage;)V

    goto :goto_0

    .line 56
    .end local v0    # "msg":Lcom/mobisage/android/MobiSageMessage;
    :cond_0
    return-void
.end method

.method public scheduleMessageMap()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageNetModule;->scheduleHTTPReqMessage()Z

    move-result v0

    .line 143
    .local v0, "flag":Z
    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageNetModule;->scheduleHTTPResMessage()Z

    move-result v0

    .line 146
    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageNetModule;->scheduleTrackMessage()Z

    move-result v0

    .line 149
    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageNetModule;->scheduleSuspendMessage()Z

    move-result v0

    .line 152
    goto :goto_0
.end method
