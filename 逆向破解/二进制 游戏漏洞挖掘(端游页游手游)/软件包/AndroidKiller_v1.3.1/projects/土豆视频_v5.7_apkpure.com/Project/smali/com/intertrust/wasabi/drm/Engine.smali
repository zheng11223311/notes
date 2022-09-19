.class public final Lcom/intertrust/wasabi/drm/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# static fields
.field public static final BUILD_DATE_PROPERTY:Ljava/lang/String; = "BuildDate"

.field public static final CACHE_POLICY_PROPERTY:Ljava/lang/String; = "CachePolicy"

.field public static final HTTPS_PROXY_HOST_NAME_PROPERTY:Ljava/lang/String; = "HttpsProxyHostname"

.field public static final HTTPS_PROXY_PORT_PROPERTY:Ljava/lang/String; = "HttpsProxyPort"

.field public static final HTTP_CONNECTION_TIMEOUT_PROPERTY:Ljava/lang/String; = "HttpConnectionTimeout"

.field public static final HTTP_IO_TIMEOUT_PROPERTY:Ljava/lang/String; = "HttpIOTimeout"

.field public static final HTTP_PROXY_ENABLED_PROPERTY:Ljava/lang/String; = "HttpProxyEnabled"

.field public static final HTTP_PROXY_HOST_NAME_PROPERTY:Ljava/lang/String; = "HttpProxyHostname"

.field public static final HTTP_PROXY_PORT_PROPERTY:Ljava/lang/String; = "HttpProxyPort"

.field public static final HTTP_PROXY_SYSTEM_DEFAULT_PROPERTY:Ljava/lang/String; = "HttpProxySystemDefault"

.field public static final IS_PERSONALIZED_PROPERTY:Ljava/lang/String; = "IsPersonalized"

.field public static final NEMO_PROPERTY:Ljava/lang/String; = "Nemo"

.field public static final PERSONALITY_PROPERTY:Ljava/lang/String; = "Personality"

.field public static final POLICY_DO_NOT_RELOAD_LINKS:Ljava/lang/Integer;

.field public static final POLICY_RELOAD_LINKS:Ljava/lang/Integer;

.field public static final PREFERRED_LANGUAGES_PROPERTY:Ljava/lang/String; = "PreferredLanguages"

.field public static final VACUUM_FLAG_DONT_SAVE_RECENT_LINK:I = 0x8

.field public static final VACUUM_FLAG_LINKS:I = 0x2

.field public static final VACUUM_FLAG_NODES:I = 0x1

.field public static final VACUUM_FLAG_SEASHELL:I = 0x4

.field public static final VACUUM_FLAG_WIPE:I = 0x10

.field public static final VERSION_PROPERTY:Ljava/lang/String; = "Version"


# instance fields
.field private jniPeer:J

.field private transactionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intertrust/wasabi/drm/TransactionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/intertrust/wasabi/drm/Engine;->POLICY_DO_NOT_RELOAD_LINKS:Ljava/lang/Integer;

    .line 73
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/intertrust/wasabi/drm/Engine;->POLICY_RELOAD_LINKS:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/intertrust/wasabi/drm/Engine;->transactionListeners:Ljava/util/List;

    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 140
    const-class v1, Lcom/intertrust/wasabi/drm/Engine;

    monitor-enter v1

    .line 141
    :try_start_0
    invoke-static {p0, v0}, Lcom/intertrust/wasabi/drm/jni/Engine;->create(Lcom/intertrust/wasabi/drm/Engine;[J)I

    move-result v2

    invoke-static {v2}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 144
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const-string v4, "CachePolicy"

    sget-object v5, Lcom/intertrust/wasabi/drm/Engine;->POLICY_RELOAD_LINKS:Ljava/lang/Integer;

    invoke-static {v2, v3, v4, v5}, Lcom/intertrust/wasabi/drm/jni/Engine;->setProperty(JLjava/lang/String;Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 147
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    aget-wide v0, v0, v6

    iput-wide v0, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    .line 149
    return-void

    .line 147
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addTransactionListener(Lcom/intertrust/wasabi/drm/TransactionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 450
    if-nez p1, :cond_0

    .line 451
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    const-class v1, Lcom/intertrust/wasabi/drm/Engine;

    monitor-enter v1

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/intertrust/wasabi/drm/Engine;->transactionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    monitor-exit v1

    .line 456
    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 430
    const-class v1, Lcom/intertrust/wasabi/drm/Engine;

    monitor-enter v1

    .line 431
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 432
    iget-wide v2, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    invoke-static {v2, v3}, Lcom/intertrust/wasabi/drm/jni/Engine;->destroy(J)V

    .line 433
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    .line 435
    :cond_0
    monitor-exit v1

    .line 436
    return-void

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getJniPeer()J
    .locals 2

    .prologue
    .line 518
    iget-wide v0, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    return-wide v0
.end method

.method public getLinkIds()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    .line 159
    const-class v1, Lcom/intertrust/wasabi/drm/Engine;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    invoke-static {v2, v3, v0}, Lcom/intertrust/wasabi/drm/jni/Engine;->getLinkIds(J[[Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 162
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getNodeIds()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    .line 175
    iget-wide v2, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    invoke-static {v2, v3, v0}, Lcom/intertrust/wasabi/drm/jni/Engine;->getNodeIds(J[[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 177
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getObjectDetails(Ljava/lang/String;)Lcom/intertrust/wasabi/Attribute;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 345
    if-nez p1, :cond_0

    .line 346
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "objectId parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/intertrust/wasabi/Attribute;

    .line 349
    const-class v1, Lcom/intertrust/wasabi/drm/Engine;

    monitor-enter v1

    .line 350
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    invoke-static {v2, v3, p1, v0}, Lcom/intertrust/wasabi/drm/jni/Engine;->getObjectDetails(JLjava/lang/String;[Lcom/intertrust/wasabi/Attribute;)I

    move-result v2

    invoke-static {v2}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 352
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 352
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 389
    if-nez p1, :cond_0

    .line 390
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 393
    const-class v1, Lcom/intertrust/wasabi/drm/Engine;

    monitor-enter v1

    .line 394
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    invoke-static {v2, v3, p1, v0}, Lcom/intertrust/wasabi/drm/jni/Engine;->getProperty(JLjava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 396
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 396
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPropertyNames()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    .line 188
    const-class v1, Lcom/intertrust/wasabi/drm/Engine;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    invoke-static {v2, v3, v0}, Lcom/intertrust/wasabi/drm/jni/Engine;->getPropertyNames(J[[Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 191
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getServices()[Lcom/intertrust/wasabi/drm/Service;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 364
    const/4 v0, 0x1

    new-array v2, v0, [[Lcom/intertrust/wasabi/drm/Service;

    .line 365
    const-class v3, Lcom/intertrust/wasabi/drm/Engine;

    monitor-enter v3

    .line 366
    :try_start_0
    iget-wide v4, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    invoke-static {v4, v5, v2}, Lcom/intertrust/wasabi/drm/jni/Engine;->getServices(J[[Lcom/intertrust/wasabi/drm/Service;)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 368
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    aget-object v3, v2, v1

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 370
    invoke-virtual {v5, p0}, Lcom/intertrust/wasabi/drm/Service;->setEngine(Lcom/intertrust/wasabi/drm/Engine;)V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 372
    :cond_0
    aget-object v0, v2, v1

    return-object v0
.end method

.method public getTrustedTime()Lcom/intertrust/wasabi/drm/DateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lcom/intertrust/wasabi/drm/DateTime;

    invoke-direct {v0}, Lcom/intertrust/wasabi/drm/DateTime;-><init>()V

    .line 203
    const-class v1, Lcom/intertrust/wasabi/drm/Engine;

    monitor-enter v1

    .line 204
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    invoke-static {v2, v3, v0}, Lcom/intertrust/wasabi/drm/jni/Engine;->getTrustedTime(JLcom/intertrust/wasabi/drm/DateTime;)I

    move-result v2

    invoke-static {v2}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 206
    monitor-exit v1

    .line 207
    return-object v0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPersonalized()Z
    .locals 4

    .prologue
    .line 216
    const-class v1, Lcom/intertrust/wasabi/drm/Engine;

    monitor-enter v1

    .line 217
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    invoke-static {v2, v3}, Lcom/intertrust/wasabi/drm/jni/Engine;->isPersonalized(J)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onLicenseDataReceived([B)V
    .locals 2

    .prologue
    .line 480
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/intertrust/wasabi/drm/Engine;->transactionListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intertrust/wasabi/drm/TransactionListener;

    .line 482
    invoke-interface {v0, p1}, Lcom/intertrust/wasabi/drm/TransactionListener;->onLicenseDataReceived([B)V

    goto :goto_0

    .line 484
    :cond_0
    return-void
.end method

.method onTransactionBegin(I)V
    .locals 3

    .prologue
    .line 488
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/intertrust/wasabi/drm/Engine;->transactionListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intertrust/wasabi/drm/TransactionListener;

    .line 490
    invoke-static {}, Lcom/intertrust/wasabi/drm/TransactionType;->values()[Lcom/intertrust/wasabi/drm/TransactionType;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-interface {v0, v2}, Lcom/intertrust/wasabi/drm/TransactionListener;->onTransactionBegin(Lcom/intertrust/wasabi/drm/TransactionType;)V

    goto :goto_0

    .line 493
    :cond_0
    return-void
.end method

.method onTransactionEnd(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 498
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/intertrust/wasabi/drm/Engine;->transactionListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intertrust/wasabi/drm/TransactionListener;

    .line 500
    invoke-static {}, Lcom/intertrust/wasabi/drm/TransactionType;->values()[Lcom/intertrust/wasabi/drm/TransactionType;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-interface {v0, v2, p2, p3, p4}, Lcom/intertrust/wasabi/drm/TransactionListener;->onTransactionEnd(Lcom/intertrust/wasabi/drm/TransactionType;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_0
    return-void
.end method

.method onTransactionProgress(III)V
    .locals 3

    .prologue
    .line 509
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/intertrust/wasabi/drm/Engine;->transactionListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intertrust/wasabi/drm/TransactionListener;

    .line 511
    invoke-static {}, Lcom/intertrust/wasabi/drm/TransactionType;->values()[Lcom/intertrust/wasabi/drm/TransactionType;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-interface {v0, v2, p2, p3}, Lcom/intertrust/wasabi/drm/TransactionListener;->onTransactionProgress(Lcom/intertrust/wasabi/drm/TransactionType;II)V

    goto :goto_0

    .line 515
    :cond_0
    return-void
.end method

.method public personalize(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 235
    const-class v1, Lcom/intertrust/wasabi/drm/Engine;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    invoke-static {v2, v3, p1}, Lcom/intertrust/wasabi/drm/jni/Engine;->personalize(JLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 238
    monitor-exit v1

    .line 239
    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public processServiceToken(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "actionToken parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    const-class v1, Lcom/intertrust/wasabi/drm/Engine;

    monitor-enter v1

    .line 260
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    invoke-static {v2, v3, p1}, Lcom/intertrust/wasabi/drm/jni/Engine;->processServiceToken(JLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 262
    monitor-exit v1

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeTransactionListener(Lcom/intertrust/wasabi/drm/TransactionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 470
    if-nez p1, :cond_0

    .line 471
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_0
    const-class v1, Lcom/intertrust/wasabi/drm/Engine;

    monitor-enter v1

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/intertrust/wasabi/drm/Engine;->transactionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 475
    monitor-exit v1

    .line 476
    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 415
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_1
    const-class v1, Lcom/intertrust/wasabi/drm/Engine;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    invoke-static {v2, v3, p1, p2}, Lcom/intertrust/wasabi/drm/jni/Engine;->setProperty(JLjava/lang/String;Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 421
    monitor-exit v1

    .line 422
    return-void

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public transformUriTemplate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 279
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "template parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 282
    const-class v1, Lcom/intertrust/wasabi/drm/Engine;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    invoke-static {v2, v3, p1, v0}, Lcom/intertrust/wasabi/drm/jni/Engine;->transformUriTemplate(JLjava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 285
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 285
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateSecurityData(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 308
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "serviceId parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    const-class v1, Lcom/intertrust/wasabi/drm/Engine;

    monitor-enter v1

    .line 311
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    invoke-static {v2, v3, p1, p2}, Lcom/intertrust/wasabi/drm/jni/Engine;->updateSecurityData(JLjava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 313
    monitor-exit v1

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public vacuumData(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 325
    const-class v1, Lcom/intertrust/wasabi/drm/Engine;

    monitor-enter v1

    .line 326
    :try_start_0
    iget-wide v2, p0, Lcom/intertrust/wasabi/drm/Engine;->jniPeer:J

    invoke-static {v2, v3, p1}, Lcom/intertrust/wasabi/drm/jni/Engine;->vacuumData(JI)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 328
    monitor-exit v1

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
