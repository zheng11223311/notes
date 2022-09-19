.class public Lcom/intertrust/wasabi/licensestore/LicenseStore;
.super Ljava/lang/Object;
.source "LicenseStore.java"


# static fields
.field public static final WSB_LS_FLAG_LICENSE_DATA:I = 0x1

.field public static final WSB_LS_FLAG_LICENSE_EXPIRE_DATE:I = 0x2

.field public static final WSB_LS_FLAG_LICENSE_INSERT_DATE:I = 0x4

.field public static final WSB_LS_FLAG_LICENSE_TAG:I = 0x8


# instance fields
.field private jniPeer:J


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 48
    const-class v1, Lcom/intertrust/wasabi/licensestore/LicenseStore;

    monitor-enter v1

    .line 49
    :try_start_0
    invoke-static {v0}, Lcom/intertrust/wasabi/licensestore/jni/LicenseStore;->open([J)I

    move-result v2

    invoke-static {v2}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 52
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/intertrust/wasabi/licensestore/LicenseStore;->jniPeer:J

    .line 54
    return-void

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addLicense(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    if-nez p2, :cond_1

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    const-class v1, Lcom/intertrust/wasabi/licensestore/LicenseStore;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/licensestore/LicenseStore;->jniPeer:J

    invoke-static {v2, v3, p1, p2, v0}, Lcom/intertrust/wasabi/licensestore/jni/LicenseStore;->addLicense(JLjava/lang/String;Ljava/lang/String;[I)I

    move-result v2

    invoke-static {v2}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 82
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 223
    const-class v1, Lcom/intertrust/wasabi/licensestore/LicenseStore;

    monitor-enter v1

    .line 224
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/licensestore/LicenseStore;->jniPeer:J

    invoke-static {v2, v3}, Lcom/intertrust/wasabi/licensestore/jni/LicenseStore;->close(J)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 227
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/intertrust/wasabi/licensestore/LicenseStore;->jniPeer:J

    .line 229
    return-void

    .line 227
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public enumerateContentIds()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    .line 181
    const-class v1, Lcom/intertrust/wasabi/licensestore/LicenseStore;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/licensestore/LicenseStore;->jniPeer:J

    invoke-static {v2, v3, v0}, Lcom/intertrust/wasabi/licensestore/jni/LicenseStore;->enumerateContentIds(J[[Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 185
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 185
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public enumerateLicenses(I)[Lcom/intertrust/wasabi/licensestore/License;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [[Lcom/intertrust/wasabi/licensestore/License;

    .line 164
    const-class v1, Lcom/intertrust/wasabi/licensestore/LicenseStore;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/licensestore/LicenseStore;->jniPeer:J

    invoke-static {v2, v3, p1, v0}, Lcom/intertrust/wasabi/licensestore/jni/LicenseStore;->enumerateLicenses(JI[[Lcom/intertrust/wasabi/licensestore/License;)I

    move-result v2

    invoke-static {v2}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 168
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 168
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public expungeExpiredLicenses()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 198
    const-class v1, Lcom/intertrust/wasabi/licensestore/LicenseStore;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/licensestore/LicenseStore;->jniPeer:J

    invoke-static {v2, v3}, Lcom/intertrust/wasabi/licensestore/jni/LicenseStore;->expungeExpiredLicenses(J)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 202
    monitor-exit v1

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public findContentIdsByLicense(I)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    .line 123
    const-class v1, Lcom/intertrust/wasabi/licensestore/LicenseStore;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/licensestore/LicenseStore;->jniPeer:J

    invoke-static {v2, v3, p1, v0}, Lcom/intertrust/wasabi/licensestore/jni/LicenseStore;->findContentIdsByLicense(JI[[Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 127
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 127
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public findLicensesByContentIds([Ljava/lang/String;)[Lcom/intertrust/wasabi/licensestore/License;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x1

    new-array v0, v0, [[Lcom/intertrust/wasabi/licensestore/License;

    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "contentIds parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    const-class v1, Lcom/intertrust/wasabi/licensestore/LicenseStore;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/licensestore/LicenseStore;->jniPeer:J

    invoke-static {v2, v3, p1, v0}, Lcom/intertrust/wasabi/licensestore/jni/LicenseStore;->findLicensesByContentIds(J[Ljava/lang/String;[[Lcom/intertrust/wasabi/licensestore/License;)I

    move-result v2

    invoke-static {v2}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 108
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLicenseById(I)Lcom/intertrust/wasabi/licensestore/License;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/intertrust/wasabi/licensestore/License;

    .line 141
    const-class v1, Lcom/intertrust/wasabi/licensestore/LicenseStore;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/licensestore/LicenseStore;->jniPeer:J

    invoke-static {v2, v3, p1, v0}, Lcom/intertrust/wasabi/licensestore/jni/LicenseStore;->getLicenseById(JI[Lcom/intertrust/wasabi/licensestore/License;)I

    move-result v2

    invoke-static {v2}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 145
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeLicense(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 212
    const-class v1, Lcom/intertrust/wasabi/licensestore/LicenseStore;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/licensestore/LicenseStore;->jniPeer:J

    invoke-static {v2, v3, p1}, Lcom/intertrust/wasabi/licensestore/jni/LicenseStore;->removeLicense(JI)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 216
    monitor-exit v1

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
