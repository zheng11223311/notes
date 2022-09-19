.class Lcom/mobisage/android/MobiSageTrackStreamSlot;
.super Lcom/mobisage/android/MobiSageTrackSlot;
.source "MobiSageTrackStreamSlot.java"


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageTrackSlot;-><init>(Landroid/os/Handler;)V

    .line 20
    const/16 v0, 0x7d3

    iput v0, p0, Lcom/mobisage/android/MobiSageTrackStreamSlot;->messageCode:I

    .line 21
    return-void
.end method


# virtual methods
.method protected processMobiSageAction(Lcom/mobisage/android/MobiSageAction;)V
    .locals 10
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 25
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 26
    .local v3, "trackTime":Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/mobisage/android/MobiSageAppInfo;->packageDataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Track"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "trackPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, "trackFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 31
    iget-object v4, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v5, "TrackData"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mobisage/android/MobiSageFileUtility;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p1, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v6, "TrackData"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mobisage/android/MobiSageLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 37
    iget-object v4, p0, Lcom/mobisage/android/MobiSageTrackStreamSlot;->actionMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v4, v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v0, Lcom/mobisage/android/MobiSageTrackMessage;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageTrackMessage;-><init>()V

    .line 40
    .local v0, "msg":Lcom/mobisage/android/MobiSageTrackMessage;
    iput-object v2, v0, Lcom/mobisage/android/MobiSageTrackMessage;->trackPath:Ljava/lang/String;

    .line 41
    iget-object v4, p0, Lcom/mobisage/android/MobiSageTrackStreamSlot;->callback:Lcom/mobisage/android/MobiSageTrackSlot$TrackMessageCallback;

    iput-object v4, v0, Lcom/mobisage/android/MobiSageTrackMessage;->callback:Lcom/mobisage/android/IMobiSageMessageCallback;

    .line 43
    iget-object v4, p1, Lcom/mobisage/android/MobiSageAction;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v4, p0, Lcom/mobisage/android/MobiSageTrackStreamSlot;->mtaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v0, Lcom/mobisage/android/MobiSageTrackMessage;->messageUUID:Ljava/util/UUID;

    iget-object v6, p1, Lcom/mobisage/android/MobiSageAction;->actionUUID:Ljava/util/UUID;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {}, Lcom/mobisage/android/MobiSageNetModule;->getInstance()Lcom/mobisage/android/MobiSageNetModule;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mobisage/android/MobiSageNetModule;->pushMobiSageMessage(Lcom/mobisage/android/MobiSageMessage;)V

    .line 46
    return-void
.end method
