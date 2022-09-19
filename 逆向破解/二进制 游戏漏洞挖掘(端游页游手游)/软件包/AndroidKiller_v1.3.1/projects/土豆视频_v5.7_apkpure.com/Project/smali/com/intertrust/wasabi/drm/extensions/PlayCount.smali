.class public final Lcom/intertrust/wasabi/drm/extensions/PlayCount;
.super Ljava/lang/Object;
.source "PlayCount.java"


# instance fields
.field private jniPeer:J


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 29
    invoke-static {v0}, Lcom/intertrust/wasabi/drm/jni/extensions/PlayCount;->open([J)I

    move-result v1

    invoke-static {v1}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 32
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/intertrust/wasabi/drm/extensions/PlayCount;->jniPeer:J

    .line 33
    return-void
.end method

.method private destroy()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 67
    iget-wide v0, p0, Lcom/intertrust/wasabi/drm/extensions/PlayCount;->jniPeer:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 68
    iget-wide v0, p0, Lcom/intertrust/wasabi/drm/extensions/PlayCount;->jniPeer:J

    invoke-static {v0, v1}, Lcom/intertrust/wasabi/drm/jni/extensions/PlayCount;->close(J)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 71
    iput-wide v2, p0, Lcom/intertrust/wasabi/drm/extensions/PlayCount;->jniPeer:J

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 43
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    iget-wide v0, p0, Lcom/intertrust/wasabi/drm/extensions/PlayCount;->jniPeer:J

    invoke-static {v0, v1, p1, p2}, Lcom/intertrust/wasabi/drm/jni/extensions/PlayCount;->addEvent(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 49
    return-void
.end method

.method public uploadEvents(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "serviceId parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-wide v0, p0, Lcom/intertrust/wasabi/drm/extensions/PlayCount;->jniPeer:J

    invoke-static {v0, v1, p1}, Lcom/intertrust/wasabi/drm/jni/extensions/PlayCount;->uploadEvents(JLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 64
    return-void
.end method
