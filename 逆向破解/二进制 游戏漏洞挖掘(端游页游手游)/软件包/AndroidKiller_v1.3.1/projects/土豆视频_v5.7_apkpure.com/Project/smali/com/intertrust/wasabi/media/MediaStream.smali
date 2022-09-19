.class public final Lcom/intertrust/wasabi/media/MediaStream;
.super Ljava/lang/Object;
.source "MediaStream.java"

# interfaces
.implements Lcom/intertrust/wasabi/media/MediaStreamInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intertrust/wasabi/media/MediaStream$FormatInfoGeneric;,
        Lcom/intertrust/wasabi/media/MediaStream$FormatInfo;,
        Lcom/intertrust/wasabi/media/MediaStream$SourceType;
    }
.end annotation


# instance fields
.field private handle:J


# direct methods
.method public constructor <init>(Lcom/intertrust/wasabi/media/MediaStreamInterface;Lcom/intertrust/wasabi/media/MediaStream$FormatInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 128
    invoke-static {p1, p2, v0}, Lcom/intertrust/wasabi/media/jni/MediaStream;->open(Lcom/intertrust/wasabi/media/MediaStreamInterface;Lcom/intertrust/wasabi/media/MediaStream$FormatInfo;[J)I

    move-result v1

    invoke-static {v1}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 131
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/intertrust/wasabi/media/MediaStream;->handle:J

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/intertrust/wasabi/media/MediaStream$SourceType;Lcom/intertrust/wasabi/media/MediaStream$FormatInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 99
    invoke-static {p1, p2, p3, v0}, Lcom/intertrust/wasabi/media/jni/MediaStream;->openUrl(Ljava/lang/String;Lcom/intertrust/wasabi/media/MediaStream$SourceType;Lcom/intertrust/wasabi/media/MediaStream$FormatInfo;[J)I

    move-result v1

    invoke-static {v1}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 102
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/intertrust/wasabi/media/MediaStream;->handle:J

    .line 103
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/intertrust/wasabi/media/MediaStream;->handle:J

    invoke-static {v0, v1}, Lcom/intertrust/wasabi/media/jni/MediaStream;->close(J)V

    .line 247
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/intertrust/wasabi/media/MediaStream;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 218
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 219
    iget-wide v2, p0, Lcom/intertrust/wasabi/media/MediaStream;->handle:J

    invoke-static {v2, v3, v0}, Lcom/intertrust/wasabi/media/jni/MediaStream;->getContentType(J[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 222
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/intertrust/wasabi/media/MediaStream;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 236
    const v0, -0x186a4

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 239
    :cond_0
    return-object p0
.end method

.method public getSize()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 206
    iget-wide v2, p0, Lcom/intertrust/wasabi/media/MediaStream;->handle:J

    invoke-static {v2, v3, v0}, Lcom/intertrust/wasabi/media/jni/MediaStream;->getSize(J[J)I

    move-result v1

    invoke-static {v1}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 209
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/intertrust/wasabi/media/MediaStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 164
    iget-wide v0, p0, Lcom/intertrust/wasabi/media/MediaStream;->handle:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/intertrust/wasabi/media/jni/MediaStream;->read(J[BII[I)I

    move-result v0

    .line 166
    const v1, -0x186b3

    if-ne v0, v1, :cond_0

    .line 167
    const/4 v0, -0x1

    .line 170
    :goto_0
    return v0

    .line 169
    :cond_0
    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 170
    const/4 v0, 0x0

    aget v0, v5, v0

    goto :goto_0
.end method

.method public seek(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/intertrust/wasabi/media/MediaStream;->handle:J

    invoke-static {v0, v1, p1, p2}, Lcom/intertrust/wasabi/media/jni/MediaStream;->seek(JJ)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 183
    return-void
.end method

.method public tell()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 193
    iget-wide v2, p0, Lcom/intertrust/wasabi/media/MediaStream;->handle:J

    invoke-static {v2, v3, v0}, Lcom/intertrust/wasabi/media/jni/MediaStream;->tell(J[J)I

    move-result v1

    invoke-static {v1}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 196
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method
