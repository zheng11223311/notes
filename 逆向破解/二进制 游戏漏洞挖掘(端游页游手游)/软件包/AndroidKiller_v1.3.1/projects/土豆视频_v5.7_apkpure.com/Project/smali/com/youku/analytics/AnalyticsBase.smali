.class public Lcom/youku/analytics/AnalyticsBase;
.super Ljava/lang/Object;
.source "AnalyticsBase.java"


# static fields
.field private static final BODY:Ljava/lang/String; = "b"

.field private static final HEADER:Ljava/lang/String; = "h"

.field private static ONE_DAY:J = 0x0L

.field protected static final THREAD_NAME:Ljava/lang/String; = "AnalyticsAgent"

.field public static final YOUKU_PID:Ljava/lang/String; = "youku_pid"


# instance fields
.field protected isTest:Z

.field protected mAppName:Ljava/lang/String;

.field private volatile mBodyJSON:Lorg/json/JSONObject;

.field protected mColleciton:Lcom/youku/analytics/DataCollection;

.field private mCounter:I

.field private mDay:J

.field private volatile mExeedBodyJSON:Lorg/json/JSONObject;

.field protected mHeaderData:Lcom/youku/analytics/data/HeaderData;

.field protected mSendHandler:Landroid/os/Handler;

.field protected mUserAgent:Ljava/lang/String;

.field private sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/youku/analytics/AnalyticsBase;->ONE_DAY:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Lcom/youku/analytics/DataCollection;

    invoke-direct {v1}, Lcom/youku/analytics/DataCollection;-><init>()V

    iput-object v1, p0, Lcom/youku/analytics/AnalyticsBase;->mColleciton:Lcom/youku/analytics/DataCollection;

    .line 46
    new-instance v1, Lcom/youku/analytics/data/HeaderData;

    invoke-direct {v1}, Lcom/youku/analytics/data/HeaderData;-><init>()V

    iput-object v1, p0, Lcom/youku/analytics/AnalyticsBase;->mHeaderData:Lcom/youku/analytics/data/HeaderData;

    .line 73
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/youku/analytics/AnalyticsBase;->mDay:J

    .line 83
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/youku/analytics/AnalyticsBase;->sdf:Ljava/text/SimpleDateFormat;

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AnalyticsAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "localHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 88
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/youku/analytics/AnalyticsBase;->mSendHandler:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method static synthetic access$0(Lcom/youku/analytics/AnalyticsBase;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-direct {p0, p1}, Lcom/youku/analytics/AnalyticsBase;->generateBodyWithLocal(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/youku/analytics/AnalyticsBase;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/youku/analytics/AnalyticsBase;->generateHeader(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/youku/analytics/AnalyticsBase;Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Lcom/youku/analytics/AnalyticsBase;->postFirstJSON(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$3(Lcom/youku/analytics/AnalyticsBase;Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0, p1, p2}, Lcom/youku/analytics/AnalyticsBase;->postSecondJSON(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$4(Lcom/youku/analytics/AnalyticsBase;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/youku/analytics/AnalyticsBase;->generateJsonWithoutLocal(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/youku/analytics/AnalyticsBase;Landroid/content/Context;Lorg/json/JSONObject;Z)Z
    .locals 1

    .prologue
    .line 504
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/analytics/AnalyticsBase;->postReport(Landroid/content/Context;Lorg/json/JSONObject;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/youku/analytics/AnalyticsBase;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/youku/analytics/AnalyticsBase;->getBodyJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/youku/analytics/AnalyticsBase;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/youku/analytics/AnalyticsBase;->mBodyJSON:Lorg/json/JSONObject;

    return-void
.end method

.method private static consume(Lorg/apache/http/HttpEntity;)V
    .locals 2
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    if-nez p0, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 595
    .local v0, "instream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 596
    const-string v1, "consume and close"

    invoke-static {v1}, Lcom/youku/analytics/common/Log;->d(Ljava/lang/String;)I

    .line 597
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method private static consumeQuietly(Lorg/apache/http/HttpEntity;)V
    .locals 1
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 583
    :try_start_0
    invoke-static {p0}, Lcom/youku/analytics/AnalyticsBase;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "ignore":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized generateBodyWithLocal(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 623
    monitor-enter p0

    const/4 v5, 0x0

    .line 625
    .local v5, "localArray":Lorg/json/JSONArray;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/youku/analytics/AnalyticsBase;->getCachedData(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v6

    .line 626
    .local v6, "localJSON":Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/youku/analytics/DataCollection;->readAction(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v5

    .line 628
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 629
    const/4 v4, 0x0

    .line 630
    .local v4, "length":I
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 631
    .local v1, "firstArray":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .line 632
    .local v7, "secondArray":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .line 633
    .local v9, "tempJson":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v3, v10, :cond_2

    .line 650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v0, "bodyJSONs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 652
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 653
    .local v2, "firstBody":Lorg/json/JSONObject;
    invoke-static {v2, v1}, Lcom/youku/analytics/DataCollection;->writeAction(Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    .line 654
    iput-object v2, p0, Lcom/youku/analytics/AnalyticsBase;->mBodyJSON:Lorg/json/JSONObject;

    .line 655
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    .end local v2    # "firstBody":Lorg/json/JSONObject;
    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 658
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 659
    .local v8, "secondBody":Lorg/json/JSONObject;
    invoke-static {v8, v7}, Lcom/youku/analytics/DataCollection;->writeAction(Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    .line 660
    iput-object v8, p0, Lcom/youku/analytics/AnalyticsBase;->mExeedBodyJSON:Lorg/json/JSONObject;

    .line 661
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    .end local v8    # "secondBody":Lorg/json/JSONObject;
    :cond_1
    invoke-static {p1}, Lcom/youku/analytics/utils/StorageTools;->deleteCache(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    .end local v0    # "bodyJSONs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .end local v1    # "firstArray":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v7    # "secondArray":Lorg/json/JSONArray;
    .end local v9    # "tempJson":Lorg/json/JSONObject;
    :goto_1
    monitor-exit p0

    return-object v0

    .line 634
    .restart local v1    # "firstArray":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v4    # "length":I
    .restart local v7    # "secondArray":Lorg/json/JSONArray;
    .restart local v9    # "tempJson":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 635
    if-eqz v9, :cond_4

    .line 636
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    add-int/2addr v4, v10

    .line 637
    sget v10, Lcom/youku/analytics/Constants;->SEND_MAX_SIZE:I

    if-le v4, v10, :cond_5

    .line 638
    if-nez v7, :cond_3

    .line 639
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "length="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " > "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 640
    sget v11, Lcom/youku/analytics/Constants;->SEND_MAX_SIZE:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 639
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 641
    new-instance v7, Lorg/json/JSONArray;

    .end local v7    # "secondArray":Lorg/json/JSONArray;
    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 643
    .restart local v7    # "secondArray":Lorg/json/JSONArray;
    :cond_3
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 633
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 645
    :cond_5
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 623
    .end local v1    # "firstArray":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v6    # "localJSON":Lorg/json/JSONObject;
    .end local v7    # "secondArray":Lorg/json/JSONArray;
    .end local v9    # "tempJson":Lorg/json/JSONObject;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 666
    .restart local v6    # "localJSON":Lorg/json/JSONObject;
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private declared-synchronized generateBodyWithoutLocal(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 461
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/youku/analytics/AnalyticsBase;->mColleciton:Lcom/youku/analytics/DataCollection;

    invoke-virtual {v3}, Lcom/youku/analytics/DataCollection;->getDataSize()I

    move-result v3

    if-gtz v3, :cond_0

    .line 462
    const-string v3, "No message to send"

    invoke-static {v3}, Lcom/youku/analytics/common/Log;->i(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 480
    :goto_0
    monitor-exit p0

    return-object v0

    .line 466
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/youku/analytics/AnalyticsBase;->mColleciton:Lcom/youku/analytics/DataCollection;

    invoke-virtual {v3}, Lcom/youku/analytics/DataCollection;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 467
    const-string v3, "Error in action data."

    invoke-static {v3}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 469
    :cond_1
    iget-object v3, p0, Lcom/youku/analytics/AnalyticsBase;->mColleciton:Lcom/youku/analytics/DataCollection;

    invoke-virtual {v3}, Lcom/youku/analytics/DataCollection;->generateJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 470
    .local v0, "body":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/youku/analytics/AnalyticsBase;->mColleciton:Lcom/youku/analytics/DataCollection;

    invoke-virtual {v3}, Lcom/youku/analytics/DataCollection;->clear()V

    .line 472
    invoke-static {v0}, Lcom/youku/analytics/DataCollection;->readAction(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    .line 474
    .local v1, "collectionArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 475
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "body":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 476
    .restart local v0    # "body":Lorg/json/JSONObject;
    invoke-static {v0, v1}, Lcom/youku/analytics/DataCollection;->writeAction(Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    .line 477
    iput-object v0, p0, Lcom/youku/analytics/AnalyticsBase;->mBodyJSON:Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 461
    .end local v0    # "body":Lorg/json/JSONObject;
    .end local v1    # "collectionArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0    # "body":Lorg/json/JSONObject;
    .restart local v1    # "collectionArray":Lorg/json/JSONArray;
    :cond_2
    move-object v0, v2

    .line 480
    goto :goto_0
.end method

.method private generateHeader(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/youku/analytics/AnalyticsBase;->getInitInfo(Landroid/content/Context;)V

    .line 298
    iget-object v2, p0, Lcom/youku/analytics/AnalyticsBase;->mHeaderData:Lcom/youku/analytics/data/HeaderData;

    invoke-virtual {v2, p1}, Lcom/youku/analytics/data/HeaderData;->init(Landroid/content/Context;)V

    .line 299
    iget-object v2, p0, Lcom/youku/analytics/AnalyticsBase;->mHeaderData:Lcom/youku/analytics/data/HeaderData;

    invoke-virtual {v2}, Lcom/youku/analytics/data/HeaderData;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    const-string v2, "Error in header data."

    invoke-static {v2}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 301
    const/4 v0, 0x0

    .line 307
    :goto_0
    return-object v0

    .line 303
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 304
    .local v0, "header":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 305
    .local v1, "initial":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/youku/analytics/AnalyticsBase;->mHeaderData:Lcom/youku/analytics/data/HeaderData;

    invoke-virtual {v2, v1}, Lcom/youku/analytics/data/HeaderData;->write(Lorg/json/JSONObject;)V

    .line 306
    const-string v2, "i"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private generateJsonWithoutLocal(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 431
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 434
    .local v3, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/youku/analytics/AnalyticsBase;->generateHeader(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    .line 435
    .local v2, "header":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 450
    .end local v2    # "header":Lorg/json/JSONObject;
    .end local v3    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 439
    .restart local v2    # "header":Lorg/json/JSONObject;
    .restart local v3    # "json":Lorg/json/JSONObject;
    :cond_0
    invoke-direct {p0, p1}, Lcom/youku/analytics/AnalyticsBase;->generateBodyWithoutLocal(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 440
    .local v0, "body":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    move-object v3, v4

    .line 441
    goto :goto_0

    .line 443
    :cond_1
    const-string v5, "h"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    const-string v5, "b"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    .end local v0    # "body":Lorg/json/JSONObject;
    .end local v2    # "header":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Error in generating json"

    invoke-static {v5}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 448
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .line 450
    goto :goto_0
.end method

.method private declared-synchronized generateSaveBody(Landroid/content/Context;Z)Lorg/json/JSONObject;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isExit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/youku/analytics/AnalyticsBase;->mColleciton:Lcom/youku/analytics/DataCollection;

    invoke-virtual {v8}, Lcom/youku/analytics/DataCollection;->getDataSize()I

    move-result v8

    if-gtz v8, :cond_1

    .line 231
    if-eqz p2, :cond_0

    iget-object v8, p0, Lcom/youku/analytics/AnalyticsBase;->mBodyJSON:Lorg/json/JSONObject;

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/youku/analytics/AnalyticsBase;->mExeedBodyJSON:Lorg/json/JSONObject;

    if-nez v8, :cond_1

    .line 232
    :cond_0
    const-string v8, "No message to send"

    invoke-static {v8}, Lcom/youku/analytics/common/Log;->i(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v7

    .line 286
    :goto_0
    monitor-exit p0

    return-object v0

    .line 236
    :cond_1
    const/4 v5, 0x0

    .line 238
    .local v5, "localArray":Lorg/json/JSONArray;
    :try_start_1
    invoke-direct {p0, p1}, Lcom/youku/analytics/AnalyticsBase;->getCachedData(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v6

    .line 239
    .local v6, "localJSON":Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/youku/analytics/DataCollection;->readAction(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v5

    .line 241
    iget-object v8, p0, Lcom/youku/analytics/AnalyticsBase;->mColleciton:Lcom/youku/analytics/DataCollection;

    invoke-virtual {v8}, Lcom/youku/analytics/DataCollection;->isValid()Z

    move-result v8

    if-nez v8, :cond_2

    .line 242
    const-string v8, "Error in action data."

    invoke-static {v8}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 244
    :cond_2
    iget-object v8, p0, Lcom/youku/analytics/AnalyticsBase;->mColleciton:Lcom/youku/analytics/DataCollection;

    invoke-virtual {v8}, Lcom/youku/analytics/DataCollection;->generateJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 245
    .local v0, "body":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/youku/analytics/AnalyticsBase;->mColleciton:Lcom/youku/analytics/DataCollection;

    invoke-virtual {v8}, Lcom/youku/analytics/DataCollection;->clear()V

    .line 247
    invoke-static {v0}, Lcom/youku/analytics/DataCollection;->readAction(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    .line 248
    .local v2, "collectionArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_3

    .line 250
    if-nez v2, :cond_7

    .line 251
    move-object v2, v5

    .line 259
    :cond_3
    if-eqz p2, :cond_6

    .line 260
    iget-object v8, p0, Lcom/youku/analytics/AnalyticsBase;->mBodyJSON:Lorg/json/JSONObject;

    invoke-static {v8}, Lcom/youku/analytics/DataCollection;->readAction(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    .line 262
    .local v1, "bodyArray":Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/youku/analytics/AnalyticsBase;->mExeedBodyJSON:Lorg/json/JSONObject;

    invoke-static {v8}, Lcom/youku/analytics/DataCollection;->readAction(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v3

    .line 263
    .local v3, "exceedBodyArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 264
    if-nez v1, :cond_4

    .line 265
    new-instance v1, Lorg/json/JSONArray;

    .end local v1    # "bodyArray":Lorg/json/JSONArray;
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 267
    .restart local v1    # "bodyArray":Lorg/json/JSONArray;
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v4, v8, :cond_8

    .line 271
    .end local v4    # "i":I
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 272
    if-nez v2, :cond_9

    .line 273
    move-object v2, v1

    .line 281
    .end local v1    # "bodyArray":Lorg/json/JSONArray;
    .end local v3    # "exceedBodyArray":Lorg/json/JSONArray;
    :cond_6
    :goto_2
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_a

    .line 282
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "body":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 283
    .restart local v0    # "body":Lorg/json/JSONObject;
    invoke-static {v0, v2}, Lcom/youku/analytics/DataCollection;->writeAction(Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 230
    .end local v0    # "body":Lorg/json/JSONObject;
    .end local v2    # "collectionArray":Lorg/json/JSONArray;
    .end local v5    # "localArray":Lorg/json/JSONArray;
    .end local v6    # "localJSON":Lorg/json/JSONObject;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 253
    .restart local v0    # "body":Lorg/json/JSONObject;
    .restart local v2    # "collectionArray":Lorg/json/JSONArray;
    .restart local v5    # "localArray":Lorg/json/JSONArray;
    .restart local v6    # "localJSON":Lorg/json/JSONObject;
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    :try_start_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 254
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 253
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 268
    .restart local v1    # "bodyArray":Lorg/json/JSONArray;
    .restart local v3    # "exceedBodyArray":Lorg/json/JSONArray;
    :cond_8
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 267
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 275
    .end local v4    # "i":I
    :cond_9
    invoke-static {v1, v2}, Lcom/youku/analytics/utils/StorageTools;->sortJSONArray(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_2

    .end local v1    # "bodyArray":Lorg/json/JSONArray;
    .end local v3    # "exceedBodyArray":Lorg/json/JSONArray;
    :cond_a
    move-object v0, v7

    .line 286
    goto/16 :goto_0
.end method

.method private getBodyJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, "bodyJSON":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 492
    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 494
    :cond_0
    return-object v0
.end method

.method private declared-synchronized getCachedData(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 678
    monitor-enter p0

    .line 679
    :try_start_0
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->getVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 678
    invoke-static {p1, v1}, Lcom/youku/analytics/utils/StorageTools;->getLocalCache(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 681
    .local v0, "json":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 682
    :cond_0
    const/4 v0, 0x0

    .line 684
    .end local v0    # "json":Lorg/json/JSONObject;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 678
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private postFirstJSON(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 368
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/youku/analytics/AnalyticsBase;->postReport(Landroid/content/Context;Lorg/json/JSONObject;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    invoke-direct {p0, p2}, Lcom/youku/analytics/AnalyticsBase;->getBodyJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 372
    .local v0, "bodyJSON":Lorg/json/JSONObject;
    monitor-enter p0

    .line 373
    const/4 v1, 0x0

    .line 374
    :try_start_0
    iget-boolean v2, p0, Lcom/youku/analytics/AnalyticsBase;->isTest:Z

    .line 373
    invoke-static {p1, v0, v1, v2}, Lcom/youku/analytics/utils/StorageTools;->readAndWriteToLocal(Landroid/content/Context;Lorg/json/JSONObject;ZZ)V

    .line 372
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/analytics/AnalyticsBase;->mBodyJSON:Lorg/json/JSONObject;

    .line 378
    .end local v0    # "bodyJSON":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 372
    .restart local v0    # "bodyJSON":Lorg/json/JSONObject;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private postReport(Landroid/content/Context;Lorg/json/JSONObject;Z)Z
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "json"    # Lorg/json/JSONObject;
    .param p3, "isBodyJSON"    # Z

    .prologue
    .line 506
    invoke-static/range {p1 .. p1}, Lcom/youku/analytics/utils/Tools;->isContected(Landroid/content/Context;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 507
    const/16 v16, 0x0

    .line 578
    :goto_0
    return v16

    .line 508
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "url:"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    sget-boolean v16, Lcom/youku/analytics/Constants;->isTestHost:Z

    if-eqz v16, :cond_2

    const-string v16, "http://test.sdk.m.youku.com/sdk/youku/data.json"

    :goto_1
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 508
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/youku/analytics/common/Log;->d(Ljava/lang/String;)I

    .line 511
    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "send app report:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/youku/analytics/common/Log;->i(Ljava/lang/String;)I

    .line 512
    const/4 v2, 0x0

    .line 513
    .local v2, "code":I
    const/4 v9, 0x0

    .line 514
    .local v9, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-static {}, Lcom/youku/analytics/http/HttpUnitil;->getHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    .line 515
    .local v8, "httpParams":Lorg/apache/http/params/HttpParams;
    const/4 v6, 0x0

    .line 517
    .local v6, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    sget-object v16, Lcom/youku/analytics/data/Device;->gdid:Ljava/lang/String;

    if-eqz v16, :cond_1

    sget-object v16, Lcom/youku/analytics/data/Device;->gdid:Ljava/lang/String;

    const-string v17, "null"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 518
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 510
    .end local v2    # "code":I
    .end local v6    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v8    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :cond_2
    const-string v16, "http://sdk.m.youku.com/sdk/youku/data.json"

    goto :goto_1

    .line 520
    .restart local v2    # "code":I
    .restart local v6    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v8    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v12, "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "p"

    sget-object v18, Lcom/youku/analytics/data/Device;->pid:Ljava/lang/String;

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "g1"

    sget-object v18, Lcom/youku/analytics/data/Device;->guid:Ljava/lang/String;

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "g2"

    sget-object v18, Lcom/youku/analytics/data/Device;->gdid:Ljava/lang/String;

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 525
    .local v15, "time":Ljava/lang/String;
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v17, "t"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v17, "v"

    sget-object v18, Lcom/youku/analytics/data/Device;->sdkver:Ljava/lang/String;

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-static {v15}, Lcom/youku/analytics/utils/Tools;->getAESKEY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 530
    const/16 v17, 0x8

    const/16 v18, 0x18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/youku/analytics/utils/Tools;->compress([B)[B

    move-result-object v17

    .line 529
    invoke-static/range {v16 .. v17}, Lcom/youku/analytics/utils/Tools;->aesEncodeWithBase64(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    .line 531
    .local v4, "encodeString":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 532
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 533
    :cond_4
    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "s length:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x44800000    # 1024.0f

    div-float v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/youku/analytics/common/Log;->i(Ljava/lang/String;)I

    .line 534
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v17, "s"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    const/4 v5, 0x0

    .line 541
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 542
    .end local v6    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v7, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_1
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    sget-boolean v16, Lcom/youku/analytics/Constants;->isTestHost:Z

    if-eqz v16, :cond_8

    const-string v16, "http://test.sdk.m.youku.com/sdk/youku/data.json"

    :goto_2
    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 544
    .end local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .local v10, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/analytics/AnalyticsBase;->mUserAgent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 545
    const-string v16, "null user-agent!"

    invoke-static/range {v16 .. v16}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 547
    :cond_5
    const-string v16, "User-Agent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/analytics/AnalyticsBase;->mUserAgent:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v16, "Connection"

    const-string v17, "close"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    new-instance v11, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .line 553
    const-string/jumbo v16, "utf-8"

    .line 552
    move-object/from16 v0, v16

    invoke-direct {v11, v12, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 555
    .local v11, "p_entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 557
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/youku/analytics/AnalyticsBase;->isTest:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 558
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/youku/analytics/AnalyticsBase;->saveToDisk(Lorg/json/JSONObject;)V

    .line 560
    :cond_6
    invoke-virtual {v7, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 561
    .local v13, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 562
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "StatusCode code:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 563
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 564
    new-instance v14, Lorg/json/JSONObject;

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 565
    .local v14, "result":Lorg/json/JSONObject;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "result:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 566
    const/16 v16, 0xc8

    move/from16 v0, v16

    if-eq v2, v0, :cond_7

    const/16 v16, 0x193

    move/from16 v0, v16

    if-ne v2, v0, :cond_a

    .line 567
    :cond_7
    if-eqz p3, :cond_9

    .line 568
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/analytics/AnalyticsBase;->mBodyJSON:Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 571
    :goto_3
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 543
    .end local v10    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v11    # "p_entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "result":Lorg/json/JSONObject;
    .restart local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :cond_8
    :try_start_3
    const-string v16, "http://sdk.m.youku.com/sdk/youku/data.json"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 570
    .end local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v10    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v11    # "p_entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "result":Lorg/json/JSONObject;
    :cond_9
    const/16 v16, 0x0

    :try_start_4
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/analytics/AnalyticsBase;->mExeedBodyJSON:Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 573
    .end local v11    # "p_entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    move-object v6, v7

    .end local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v9, v10

    .line 574
    .end local v10    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :goto_4
    invoke-static {v5}, Lcom/youku/analytics/AnalyticsBase;->consumeQuietly(Lorg/apache/http/HttpEntity;)V

    .line 575
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 576
    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "send failed \uff1a"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 578
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_5
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 573
    :catch_1
    move-exception v3

    goto :goto_4

    .end local v6    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :catch_2
    move-exception v3

    move-object v6, v7

    .end local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto :goto_4

    .end local v6    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v10    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v11    # "p_entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "result":Lorg/json/JSONObject;
    :cond_a
    move-object v6, v7

    .end local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v9, v10

    .end local v10    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_5
.end method

.method private postSecondJSON(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 381
    invoke-direct {p0, p1, p2, v1}, Lcom/youku/analytics/AnalyticsBase;->postReport(Landroid/content/Context;Lorg/json/JSONObject;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    invoke-direct {p0, p2}, Lcom/youku/analytics/AnalyticsBase;->getBodyJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 385
    .local v0, "bodyJSON":Lorg/json/JSONObject;
    monitor-enter p0

    .line 386
    const/4 v1, 0x0

    .line 387
    :try_start_0
    iget-boolean v2, p0, Lcom/youku/analytics/AnalyticsBase;->isTest:Z

    .line 386
    invoke-static {p1, v0, v1, v2}, Lcom/youku/analytics/utils/StorageTools;->readAndWriteToLocal(Landroid/content/Context;Lorg/json/JSONObject;ZZ)V

    .line 385
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/analytics/AnalyticsBase;->mExeedBodyJSON:Lorg/json/JSONObject;

    .line 391
    .end local v0    # "bodyJSON":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 385
    .restart local v0    # "bodyJSON":Lorg/json/JSONObject;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private saveToDisk(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/youku/analytics/AnalyticsBase;->sdf:Ljava/text/SimpleDateFormat;

    .line 605
    iget-object v2, p0, Lcom/youku/analytics/AnalyticsBase;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 606
    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 607
    iget-object v2, p0, Lcom/youku/analytics/AnalyticsBase;->mUserAgent:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "error when save"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 608
    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 610
    const-string v3, "YoukuAnalytics_Send"

    .line 609
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 611
    .local v1, "sdFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/analytics/utils/FileOperation;->appendWrite(Ljava/io/File;Ljava/lang/String;)Z

    .line 612
    return-void

    .line 607
    .end local v1    # "sdFile":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/youku/analytics/AnalyticsBase;->mUserAgent:Ljava/lang/String;

    goto :goto_0
.end method

.method private write(Landroid/content/Context;J)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # J

    .prologue
    .line 113
    const/4 v4, 0x0

    .line 114
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 116
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {p1}, Lcom/youku/analytics/utils/StorageTools;->getCounterFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 117
    const/4 v6, 0x0

    .line 116
    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 118
    if-eqz v4, :cond_2

    .line 119
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_1
    iget-wide v6, p0, Lcom/youku/analytics/AnalyticsBase;->mDay:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    iget-wide v6, p0, Lcom/youku/analytics/AnalyticsBase;->mDay:J

    sub-long v6, p2, v6

    sget-wide v8, Lcom/youku/analytics/AnalyticsBase;->ONE_DAY:J

    cmp-long v5, v6, v8

    if-gtz v5, :cond_0

    iget-wide v6, p0, Lcom/youku/analytics/AnalyticsBase;->mDay:J

    cmp-long v5, p2, v6

    if-gez v5, :cond_1

    .line 122
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 124
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 125
    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 126
    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 127
    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 128
    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 129
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/youku/analytics/AnalyticsBase;->mDay:J

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "write day:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/youku/analytics/AnalyticsBase;->mDay:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "write day:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    iget-wide v8, p0, Lcom/youku/analytics/AnalyticsBase;->mDay:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 132
    const/4 v5, 0x0

    iput v5, p0, Lcom/youku/analytics/AnalyticsBase;->mCounter:I

    .line 134
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_1
    iget v5, p0, Lcom/youku/analytics/AnalyticsBase;->mCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/youku/analytics/AnalyticsBase;->mCounter:I

    .line 135
    iget-wide v6, p0, Lcom/youku/analytics/AnalyticsBase;->mDay:J

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 136
    iget v5, p0, Lcom/youku/analytics/AnalyticsBase;->mCounter:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "write counter: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/youku/analytics/AnalyticsBase;->mCounter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/analytics/common/Log;->i(Ljava/lang/String;)I

    .line 138
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 139
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 146
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    :cond_2
    if-eqz v1, :cond_3

    .line 147
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 149
    :cond_3
    if-eqz v4, :cond_4

    .line 150
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 156
    :cond_4
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v3

    .line 143
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    if-eqz v1, :cond_5

    .line 147
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 149
    :cond_5
    if-eqz v4, :cond_4

    .line 150
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 152
    :catch_1
    move-exception v3

    .line 153
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 146
    :goto_2
    if-eqz v1, :cond_6

    .line 147
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 149
    :cond_6
    if-eqz v4, :cond_7

    .line 150
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 155
    :cond_7
    :goto_3
    throw v5

    .line 152
    :catch_2
    move-exception v3

    .line 153
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 152
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 153
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 142
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    goto :goto_1
.end method


# virtual methods
.method protected getInitInfo(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 694
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Lcom/youku/analytics/utils/Tools;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/analytics/data/Device;->brand:Ljava/lang/String;

    .line 695
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsBase;->mAppName:Ljava/lang/String;

    sput-object v0, Lcom/youku/analytics/data/Device;->appname:Ljava/lang/String;

    .line 696
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/youku/analytics/utils/Tools;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/analytics/data/Device;->btype:Ljava/lang/String;

    .line 697
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/analytics/data/Device;->appver:Ljava/lang/String;

    .line 698
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/youku/analytics/data/Device;->os_ver:Ljava/lang/String;

    .line 699
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/youku/analytics/data/Device;->ht:I

    .line 700
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/youku/analytics/data/Device;->wt:I

    .line 701
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/analytics/data/Device;->imei:Ljava/lang/String;

    .line 702
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/analytics/utils/Tools;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/analytics/data/Device;->imsi:Ljava/lang/String;

    .line 703
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/analytics/data/Device;->mac:Ljava/lang/String;

    .line 704
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->getGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/analytics/data/Device;->guid:Ljava/lang/String;

    .line 705
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/analytics/data/Device;->uuid:Ljava/lang/String;

    .line 706
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->getGDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/analytics/data/Device;->gdid:Ljava/lang/String;

    .line 707
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/analytics/data/Device;->network:Ljava/lang/String;

    .line 708
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/analytics/data/Device;->operator:Ljava/lang/String;

    .line 709
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/analytics/data/Device;->deviceid:Ljava/lang/String;

    .line 710
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/analytics/data/Device;->displayName:Ljava/lang/String;

    .line 711
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->getRGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/analytics/data/Device;->rguid:Ljava/lang/String;

    .line 712
    return-void
.end method

.method protected read(Landroid/content/Context;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    const/4 v3, 0x0

    .line 166
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 167
    .local v0, "dis":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    .line 169
    .local v4, "number":I
    :try_start_0
    invoke-static {p1}, Lcom/youku/analytics/utils/StorageTools;->getCounterFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 170
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/youku/analytics/AnalyticsBase;->mDay:J

    .line 172
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "read mDay:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/youku/analytics/AnalyticsBase;->mDay:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , number:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    if-eqz v1, :cond_0

    .line 182
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 183
    :cond_0
    if-eqz v3, :cond_1

    .line 184
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    move v5, v4

    .line 189
    .end local v4    # "number":I
    .local v5, "number":I
    :goto_1
    return v5

    .line 185
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "number":I
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "number":I
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 175
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    :catch_1
    move-exception v2

    .line 176
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    if-eqz v0, :cond_2

    .line 182
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 183
    :cond_2
    if-eqz v3, :cond_3

    .line 184
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    move v5, v4

    .line 189
    .end local v4    # "number":I
    .restart local v5    # "number":I
    goto :goto_1

    .line 185
    .end local v5    # "number":I
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "number":I
    :catch_2
    move-exception v2

    .line 186
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 177
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 178
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 181
    if-eqz v0, :cond_4

    .line 182
    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 183
    :cond_4
    if-eqz v3, :cond_3

    .line 184
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 185
    :catch_4
    move-exception v2

    .line 186
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 179
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 181
    :goto_5
    if-eqz v0, :cond_5

    .line 182
    :try_start_7
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 183
    :cond_5
    if-eqz v3, :cond_6

    .line 184
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 188
    :cond_6
    :goto_6
    throw v6

    .line 185
    :catch_5
    move-exception v2

    .line 186
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 179
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_5

    .line 177
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_4

    .line 175
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_2
.end method

.method protected declared-synchronized saveData(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isExit"    # Z

    .prologue
    .line 200
    monitor-enter p0

    const/4 v1, 0x0

    .line 202
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/youku/analytics/AnalyticsBase;->generateSaveBody(Landroid/content/Context;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 206
    :goto_0
    if-eqz v1, :cond_0

    .line 207
    :try_start_1
    iget-boolean v2, p0, Lcom/youku/analytics/AnalyticsBase;->isTest:Z

    invoke-static {p1, v1, v2}, Lcom/youku/analytics/utils/StorageTools;->writeToLocal(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    .line 208
    if-nez p2, :cond_0

    .line 209
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/youku/analytics/Constants;->cacheSize:I

    int-to-float v3, v3

    .line 210
    sget v4, Lcom/youku/analytics/Constants;->cachePersentage:F

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Beyond CACHE_PERSENTAGE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/youku/analytics/Constants;->cachePersentage:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 212
    const-string v3, "  send report"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0, p1}, Lcom/youku/analytics/AnalyticsBase;->sendAppReport(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :cond_0
    monitor-exit p0

    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 200
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected sendAppReport(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsBase;->mSendHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/analytics/AnalyticsBase$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/analytics/AnalyticsBase$1;-><init>(Lcom/youku/analytics/AnalyticsBase;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    return-void
.end method

.method protected sendExceedRepord(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsBase;->mSendHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/analytics/AnalyticsBase$2;

    invoke-direct {v1, p0, p1}, Lcom/youku/analytics/AnalyticsBase$2;-><init>(Lcom/youku/analytics/AnalyticsBase;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 421
    return-void
.end method

.method public declared-synchronized setCount(Landroid/content/Context;J)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # J

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/youku/analytics/AnalyticsBase;->mCounter:I

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lcom/youku/analytics/AnalyticsBase;->read(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/youku/analytics/AnalyticsBase;->mCounter:I

    .line 102
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/analytics/AnalyticsBase;->write(Landroid/content/Context;J)V

    .line 103
    iget v0, p0, Lcom/youku/analytics/AnalyticsBase;->mCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTest(Z)V
    .locals 0
    .param p1, "isTest"    # Z

    .prologue
    .line 715
    iput-boolean p1, p0, Lcom/youku/analytics/AnalyticsBase;->isTest:Z

    .line 716
    return-void
.end method
