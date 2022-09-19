.class public final Lcom/intertrust/wasabi/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;
    }
.end annotation


# instance fields
.field private jniPeer:J

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 59
    invoke-static {p1, v0}, Lcom/intertrust/wasabi/media/jni/MediaFile;->open(Ljava/lang/String;[J)I

    move-result v1

    invoke-static {v1}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 62
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/intertrust/wasabi/media/MediaFile;->jniPeer:J

    .line 63
    iput-object p1, p0, Lcom/intertrust/wasabi/media/MediaFile;->name:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/intertrust/wasabi/media/MediaFile;->jniPeer:J

    invoke-static {v0, v1}, Lcom/intertrust/wasabi/media/jni/MediaFile;->close(J)V

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/intertrust/wasabi/media/MediaFile;->jniPeer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/intertrust/wasabi/media/MediaFile;->jniPeer:J

    invoke-static {v0, v1}, Lcom/intertrust/wasabi/media/jni/MediaFile;->getContentId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/intertrust/wasabi/media/MediaFile;->jniPeer:J

    invoke-static {v0, v1}, Lcom/intertrust/wasabi/media/jni/MediaFile;->getContentType(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLicense()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [[B

    .line 81
    iget-wide v2, p0, Lcom/intertrust/wasabi/media/MediaFile;->jniPeer:J

    invoke-static {v2, v3, v0}, Lcom/intertrust/wasabi/media/jni/MediaFile;->getLicense(J[[B)I

    move-result v1

    invoke-static {v1}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 84
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMediaInfo()Lcom/intertrust/wasabi/media/MediaInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/intertrust/wasabi/media/MediaInfo;

    .line 89
    iget-wide v2, p0, Lcom/intertrust/wasabi/media/MediaFile;->jniPeer:J

    invoke-static {v2, v3, v0}, Lcom/intertrust/wasabi/media/jni/MediaFile;->getMediaInfo(J[Lcom/intertrust/wasabi/media/MediaInfo;)I

    move-result v1

    invoke-static {v1}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 92
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMetadata()Lcom/intertrust/wasabi/Attribute;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/intertrust/wasabi/Attribute;

    .line 97
    iget-wide v2, p0, Lcom/intertrust/wasabi/media/MediaFile;->jniPeer:J

    invoke-static {v2, v3, v0}, Lcom/intertrust/wasabi/media/jni/MediaFile;->getMetadata(J[Lcom/intertrust/wasabi/Attribute;)I

    move-result v1

    invoke-static {v1}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 100
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/intertrust/wasabi/media/MediaFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()Lcom/intertrust/wasabi/media/FileProgress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/intertrust/wasabi/media/FileProgress;

    .line 113
    iget-wide v2, p0, Lcom/intertrust/wasabi/media/MediaFile;->jniPeer:J

    invoke-static {v2, v3, v0}, Lcom/intertrust/wasabi/media/jni/MediaFile;->getProgress(J[Lcom/intertrust/wasabi/media/FileProgress;)I

    move-result v1

    invoke-static {v1}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 116
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getProtectionType()Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 105
    iget-wide v2, p0, Lcom/intertrust/wasabi/media/MediaFile;->jniPeer:J

    invoke-static {v2, v3, v0}, Lcom/intertrust/wasabi/media/jni/MediaFile;->getProtectionType(J[I)I

    move-result v1

    invoke-static {v1}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 108
    invoke-static {}, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->values()[Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    move-result-object v1

    const/4 v2, 0x0

    aget v0, v0, v2

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getSilentLicenseAcquisitionUrls()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/intertrust/wasabi/Attribute;

    .line 122
    iget-wide v2, p0, Lcom/intertrust/wasabi/media/MediaFile;->jniPeer:J

    invoke-static {v2, v3, v0}, Lcom/intertrust/wasabi/media/jni/MediaFile;->getSilentLicenseAcquisitionUrls(J[Lcom/intertrust/wasabi/Attribute;)I

    move-result v2

    invoke-static {v2}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 125
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 126
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/intertrust/wasabi/Attribute;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intertrust/wasabi/Attribute;

    check-cast v0, [Lcom/intertrust/wasabi/Attribute;

    .line 127
    array-length v4, v0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 128
    invoke-virtual {v1}, Lcom/intertrust/wasabi/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/intertrust/wasabi/Attribute;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 130
    :cond_0
    return-object v3
.end method

.method public getTrackInfoArray()[Lcom/intertrust/wasabi/media/TrackInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [[Lcom/intertrust/wasabi/media/TrackInfo;

    .line 135
    iget-wide v2, p0, Lcom/intertrust/wasabi/media/MediaFile;->jniPeer:J

    invoke-static {v2, v3, v0}, Lcom/intertrust/wasabi/media/jni/MediaFile;->getTrackInfoArray(J[[Lcom/intertrust/wasabi/media/TrackInfo;)I

    move-result v1

    invoke-static {v1}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 138
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setLicense([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "license parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iget-wide v0, p0, Lcom/intertrust/wasabi/media/MediaFile;->jniPeer:J

    invoke-static {v0, v1, p1}, Lcom/intertrust/wasabi/media/jni/MediaFile;->setLicense(J[B)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 154
    return-void
.end method
