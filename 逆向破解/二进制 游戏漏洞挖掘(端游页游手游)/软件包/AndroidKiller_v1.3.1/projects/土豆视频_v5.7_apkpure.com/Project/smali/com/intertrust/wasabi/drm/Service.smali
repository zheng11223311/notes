.class public final Lcom/intertrust/wasabi/drm/Service;
.super Ljava/lang/Object;
.source "Service.java"


# instance fields
.field private engine:Lcom/intertrust/wasabi/drm/Engine;

.field private name:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/intertrust/wasabi/drm/Service;->name:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/intertrust/wasabi/drm/Service;->uid:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method getEngine()Lcom/intertrust/wasabi/drm/Engine;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/intertrust/wasabi/drm/Service;->engine:Lcom/intertrust/wasabi/drm/Engine;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/intertrust/wasabi/drm/Service;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/intertrust/wasabi/drm/Service;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsers()[Lcom/intertrust/wasabi/drm/User;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 61
    const/4 v0, 0x1

    new-array v2, v0, [[Lcom/intertrust/wasabi/drm/User;

    .line 62
    const-class v3, Lcom/intertrust/wasabi/drm/Engine;

    monitor-enter v3

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/intertrust/wasabi/drm/Service;->engine:Lcom/intertrust/wasabi/drm/Engine;

    invoke-virtual {v0}, Lcom/intertrust/wasabi/drm/Engine;->getJniPeer()J

    move-result-wide v4

    iget-object v0, p0, Lcom/intertrust/wasabi/drm/Service;->uid:Ljava/lang/String;

    invoke-static {v4, v5, v0, v2}, Lcom/intertrust/wasabi/drm/jni/Engine;->getServiceUsers(JLjava/lang/String;[[Lcom/intertrust/wasabi/drm/User;)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 65
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    aget-object v3, v2, v1

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 67
    invoke-virtual {v5, p0}, Lcom/intertrust/wasabi/drm/User;->setService(Lcom/intertrust/wasabi/drm/Service;)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 69
    :cond_0
    aget-object v0, v2, v1

    return-object v0
.end method

.method setEngine(Lcom/intertrust/wasabi/drm/Engine;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/intertrust/wasabi/drm/Service;->engine:Lcom/intertrust/wasabi/drm/Engine;

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intertrust/wasabi/drm/Service;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intertrust/wasabi/drm/Service;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
