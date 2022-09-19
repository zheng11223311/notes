.class Lcom/mobisage/android/MobiSageTrackTemplateSlot;
.super Lcom/mobisage/android/MobiSageTrackSlot;
.source "MobiSageTrackTemplateSlot.java"


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageTrackSlot;-><init>(Landroid/os/Handler;)V

    .line 25
    const/16 v0, 0x7db

    iput v0, p0, Lcom/mobisage/android/MobiSageTrackTemplateSlot;->messageCode:I

    .line 26
    return-void
.end method


# virtual methods
.method protected processMobiSageAction(Lcom/mobisage/android/MobiSageAction;)V
    .locals 12
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 31
    iget-object v6, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string/jumbo v7, "trackUrl"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32
    .local v5, "trackURL":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v1, "trackData":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 39
    .local v4, "trackTime":Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/mobisage/android/MobiSageAppInfo;->packageDataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Track"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "trackPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v2, "trackFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/mobisage/android/MobiSageFileUtility;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mobisage/android/MobiSageLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 50
    iget-object v6, p0, Lcom/mobisage/android/MobiSageTrackTemplateSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v6, v7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/mobisage/android/MobiSageTrackMessage;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageTrackMessage;-><init>()V

    .line 53
    .local v0, "msg":Lcom/mobisage/android/MobiSageTrackMessage;
    iput-object v3, v0, Lcom/mobisage/android/MobiSageTrackMessage;->trackPath:Ljava/lang/String;

    .line 54
    iget-object v6, p0, Lcom/mobisage/android/MobiSageTrackTemplateSlot;->callback:Lcom/mobisage/android/MobiSageTrackSlot$TrackMessageCallback;

    iput-object v6, v0, Lcom/mobisage/android/MobiSageTrackMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    .line 56
    iget-object v6, p1, Lcom/mobisage/android/MobiSageAction;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v6, p0, Lcom/mobisage/android/MobiSageTrackTemplateSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, v0, Lcom/mobisage/android/MobiSageTrackMessage;->messageUUID:Ljava/util/UUID;

    iget-object v8, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {}, Lcom/mobisage/android/MobiSageNetModule;->getInstance()Lcom/mobisage/android/MobiSageNetModule;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/mobisage/android/MobiSageNetModule;->pushMobiSageMessage(Lcom/mobisage/android/MobiSageMessage;)V

    goto/16 :goto_0
.end method
