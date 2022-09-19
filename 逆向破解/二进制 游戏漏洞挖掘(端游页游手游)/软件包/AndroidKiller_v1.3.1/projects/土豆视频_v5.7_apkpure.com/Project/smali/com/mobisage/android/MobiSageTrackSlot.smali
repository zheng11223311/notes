.class public abstract Lcom/mobisage/android/MobiSageTrackSlot;
.super Lcom/mobisage/android/MobiSageSlot;
.source "MobiSageTrackSlot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageTrackSlot$1;,
        Lcom/mobisage/android/MobiSageTrackSlot$TrackMessageCallback;
    }
.end annotation


# instance fields
.field protected callback:Lcom/mobisage/android/MobiSageTrackSlot$TrackMessageCallback;

.field private final slot:Lcom/mobisage/android/MobiSageTrackSlot;


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageSlot;-><init>(Landroid/os/Handler;)V

    .line 17
    iput-object p0, p0, Lcom/mobisage/android/MobiSageTrackSlot;->slot:Lcom/mobisage/android/MobiSageTrackSlot;

    .line 18
    new-instance v0, Lcom/mobisage/android/MobiSageTrackSlot$TrackMessageCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mobisage/android/MobiSageTrackSlot$TrackMessageCallback;-><init>(Lcom/mobisage/android/MobiSageTrackSlot;Lcom/mobisage/android/MobiSageTrackSlot$1;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageTrackSlot;->callback:Lcom/mobisage/android/MobiSageTrackSlot$TrackMessageCallback;

    .line 19
    return-void
.end method

.method static synthetic access$100(Lcom/mobisage/android/MobiSageTrackSlot;)Lcom/mobisage/android/MobiSageTrackSlot;
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageTrackSlot;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/mobisage/android/MobiSageTrackSlot;->slot:Lcom/mobisage/android/MobiSageTrackSlot;

    return-object v0
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 27
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/mobisage/android/MobiSageAction;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageTrackSlot;->processMobiSageAction(Lcom/mobisage/android/MobiSageAction;)V

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/mobisage/android/MobiSageTrackMessage;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mobisage/android/MobiSageTrackMessage;

    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageTrackSlot;->processMobiSageTrackMessage(Lcom/mobisage/android/MobiSageTrackMessage;)V

    goto :goto_0
.end method

.method protected abstract processMobiSageAction(Lcom/mobisage/android/MobiSageAction;)V
.end method

.method protected processMobiSageTrackMessage(Lcom/mobisage/android/MobiSageTrackMessage;)V
    .locals 7
    .param p1, "message"    # Lcom/mobisage/android/MobiSageTrackMessage;

    .prologue
    .line 36
    iget-object v5, p1, Lcom/mobisage/android/MobiSageTrackMessage;->result:Landroid/os/Bundle;

    const-string v6, "StatusCode"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 37
    .local v3, "statusCode":I
    const/16 v5, 0xc8

    if-eq v3, v5, :cond_0

    const/16 v5, 0x12e

    if-ne v3, v5, :cond_2

    .line 38
    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lcom/mobisage/android/MobiSageTrackMessage;->trackPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v4, "trackFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 40
    iget-object v5, p0, Lcom/mobisage/android/MobiSageTrackSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p1, Lcom/mobisage/android/MobiSageTrackMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 41
    .local v1, "actionUUID":Ljava/util/UUID;
    iget-object v5, p0, Lcom/mobisage/android/MobiSageTrackSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p1, Lcom/mobisage/android/MobiSageTrackMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v5, p0, Lcom/mobisage/android/MobiSageTrackSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    .line 43
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    iget-object v5, v0, Lcom/mobisage/android/MobiSageAction;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 44
    iget-object v5, v0, Lcom/mobisage/android/MobiSageAction;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 45
    iget-object v5, p0, Lcom/mobisage/android/MobiSageTrackSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v0, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v5, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    if-eqz v5, :cond_1

    .line 47
    iget-object v5, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    invoke-interface {v5, v0}, Lcom/mobisage/android/IMobiSageActionCallback;->onMobiSageActionFinish(Lcom/mobisage/android/MobiSageAction;)V

    .line 69
    .end local v0    # "action":Lcom/mobisage/android/MobiSageAction;
    .end local v4    # "trackFile":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 50
    .end local v1    # "actionUUID":Ljava/util/UUID;
    :cond_2
    iget-object v5, p0, Lcom/mobisage/android/MobiSageTrackSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p1, Lcom/mobisage/android/MobiSageTrackMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 51
    .restart local v1    # "actionUUID":Ljava/util/UUID;
    iget-object v5, p0, Lcom/mobisage/android/MobiSageTrackSlot;->retryTimesMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 52
    iget-object v5, p0, Lcom/mobisage/android/MobiSageTrackSlot;->retryTimesMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 53
    .local v2, "retryTimes":I
    const/4 v5, 0x2

    if-ge v2, v5, :cond_3

    .line 54
    iget-object v5, p0, Lcom/mobisage/android/MobiSageTrackSlot;->retryTimesMap:Ljava/util/Map;

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p1, Lcom/mobisage/android/MobiSageTrackMessage;->result:Landroid/os/Bundle;

    .line 56
    invoke-static {}, Lcom/mobisage/android/MobiSageNetModule;->getInstance()Lcom/mobisage/android/MobiSageNetModule;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/mobisage/android/MobiSageNetModule;->pushMobiSageMessage(Lcom/mobisage/android/MobiSageMessage;)V

    goto :goto_0

    .line 59
    :cond_3
    iget-object v5, p0, Lcom/mobisage/android/MobiSageTrackSlot;->retryTimesMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    .end local v2    # "retryTimes":I
    :cond_4
    iget-object v5, p0, Lcom/mobisage/android/MobiSageTrackSlot;->retryTimesMap:Ljava/util/Map;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p1, Lcom/mobisage/android/MobiSageTrackMessage;->result:Landroid/os/Bundle;

    .line 65
    invoke-static {}, Lcom/mobisage/android/MobiSageNetModule;->getInstance()Lcom/mobisage/android/MobiSageNetModule;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/mobisage/android/MobiSageNetModule;->pushMobiSageMessage(Lcom/mobisage/android/MobiSageMessage;)V

    goto :goto_0
.end method
