.class Lcom/mobisage/android/MobiSageTrackInitSlot;
.super Lcom/mobisage/android/MobiSageTrackSlot;
.source "MobiSageTrackInitSlot.java"


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageTrackSlot;-><init>(Landroid/os/Handler;)V

    .line 14
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/mobisage/android/MobiSageTrackInitSlot;->messageCode:I

    .line 15
    return-void
.end method


# virtual methods
.method protected processMobiSageAction(Lcom/mobisage/android/MobiSageAction;)V
    .locals 8
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 19
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v5

    const-string/jumbo v6, "track_on"

    invoke-virtual {v5, v6}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigureData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    iget-object v5, p0, Lcom/mobisage/android/MobiSageTrackInitSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v5, v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/mobisage/android/MobiSageAppInfo;->packageDataDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Track"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v2, "trackDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 28
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 31
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 32
    .local v3, "trackFileList":[Ljava/io/File;
    if-eqz v3, :cond_4

    .line 33
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_4

    .line 34
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "trackPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 38
    .local v1, "message":Lcom/mobisage/android/MobiSageMessage;
    const-string v5, "_post.dat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 39
    new-instance v1, Lcom/mobisage/android/MobiSageTrackPostMessage;

    .end local v1    # "message":Lcom/mobisage/android/MobiSageMessage;
    invoke-direct {v1}, Lcom/mobisage/android/MobiSageTrackPostMessage;-><init>()V

    .restart local v1    # "message":Lcom/mobisage/android/MobiSageMessage;
    move-object v5, v1

    .line 40
    check-cast v5, Lcom/mobisage/android/MobiSageTrackPostMessage;

    iput-object v4, v5, Lcom/mobisage/android/MobiSageTrackPostMessage;->trackPath:Ljava/lang/String;

    .line 46
    :goto_2
    iget-object v5, p0, Lcom/mobisage/android/MobiSageTrackInitSlot;->callback:Lcom/mobisage/android/MobiSageTrackSlot$TrackMessageCallback;

    iput-object v5, v1, Lcom/mobisage/android/MobiSageMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    .line 47
    iget-object v5, p1, Lcom/mobisage/android/MobiSageAction;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v5, p0, Lcom/mobisage/android/MobiSageTrackInitSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v1, Lcom/mobisage/android/MobiSageMessage;->messageUUID:Ljava/util/UUID;

    iget-object v7, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {}, Lcom/mobisage/android/MobiSageNetModule;->getInstance()Lcom/mobisage/android/MobiSageNetModule;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/mobisage/android/MobiSageNetModule;->pushMobiSageMessage(Lcom/mobisage/android/MobiSageMessage;)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    :cond_3
    new-instance v1, Lcom/mobisage/android/MobiSageTrackMessage;

    .end local v1    # "message":Lcom/mobisage/android/MobiSageMessage;
    invoke-direct {v1}, Lcom/mobisage/android/MobiSageTrackMessage;-><init>()V

    .restart local v1    # "message":Lcom/mobisage/android/MobiSageMessage;
    move-object v5, v1

    .line 43
    check-cast v5, Lcom/mobisage/android/MobiSageTrackMessage;

    iput-object v4, v5, Lcom/mobisage/android/MobiSageTrackMessage;->trackPath:Ljava/lang/String;

    goto :goto_2

    .line 53
    .end local v0    # "index":I
    .end local v1    # "message":Lcom/mobisage/android/MobiSageMessage;
    .end local v4    # "trackPath":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/mobisage/android/MobiSageAction;->isActionFinish()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    iget-object v5, p0, Lcom/mobisage/android/MobiSageTrackInitSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v5, p1, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    if-eqz v5, :cond_0

    .line 56
    iget-object v5, p1, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    invoke-interface {v5, p1}, Lcom/mobisage/android/IMobiSageActionCallback;->onMobiSageActionFinish(Lcom/mobisage/android/MobiSageAction;)V

    goto/16 :goto_0
.end method
