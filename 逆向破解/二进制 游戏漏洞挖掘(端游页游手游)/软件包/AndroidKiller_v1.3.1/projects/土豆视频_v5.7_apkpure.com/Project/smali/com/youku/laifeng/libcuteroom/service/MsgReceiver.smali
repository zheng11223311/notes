.class public Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MsgReceiver.java"


# static fields
.field private static final ANCHER_LIVE_NOTIFICATON_ID:I = 0x1

.field private static final ANCHER_LIVE_NOTIFICATON_TYPE:Ljava/lang/String; = "kb"

.field private static final BUY_GUARD_HAVE_NEW_CANCY_TYPE:Ljava/lang/String; = "psNew"

.field private static final BUY_GUARD_MATURE_TYPE:Ljava/lang/String; = "psEnd"

.field private static final BUY_GUARD_NOTIFICATON_ID:I = 0x2

.field private static final BUY_GUARD_SOMEBODY_DONE_TYPE:Ljava/lang/String; = "psBuy"

.field private static final NEW_YEAR_TYPE:Ljava/lang/String; = "nm"

.field private static final NWE_YEAR_NOTIFICATON_ID:I = 0x3

.field private static TAG:Ljava/lang/String;


# instance fields
.field private Mid:Ljava/lang/String;

.field private mActionType:I

.field private mAnchorCoverPicUrl:Ljava/lang/String;

.field private mAnchorName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mExtern:Ljava/lang/String;

.field private mPushTitleContent:Ljava/lang/String;

.field private mTicker:Ljava/lang/String;

.field private r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "MsgReceiver"

    sput-object v0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 385
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->Mid:Ljava/lang/String;

    .line 393
    new-instance v0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver$2;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver$2;-><init>(Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->r:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;Landroid/graphics/Bitmap;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->showAncherLiveNotification(Landroid/graphics/Bitmap;ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->Mid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->httpGet(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private feedbackRecv(Ljava/lang/String;)V
    .locals 2
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->Mid:Ljava/lang/String;

    .line 389
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->r:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 390
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 391
    return-void
.end method

.method private httpGet(Ljava/lang/String;Ljava/util/Map;)V
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpObject()Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;

    move-result-object v11

    invoke-virtual {v11}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    .line 414
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpObject()Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;

    move-result-object v11

    const-wide/16 v12, 0x3a98

    invoke-virtual {v11, v12, v13}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->setTimeout(J)V

    .line 415
    const-string v8, ""

    .line 416
    .local v8, "paramStr":Ljava/lang/String;
    const/4 v5, 0x0

    .line 417
    .local v5, "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 419
    .local v3, "httpResponse":Lorg/apache/http/HttpResponse;
    if-eqz p2, :cond_2

    .line 420
    :try_start_0
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_3

    .line 421
    .end local v5    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v6, "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 422
    .local v10, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 423
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 424
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 425
    .local v7, "mapentry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "&"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 426
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6, v11, v12}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 444
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7    # "mapentry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 445
    .end local v6    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v5    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    sget-boolean v11, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v11, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 451
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_0
    :goto_2
    return-void

    .line 428
    .end local v5    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v6    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    :try_start_2
    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 429
    const-string v11, "&"

    const-string v12, "?"

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 430
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object p1

    move-object v5, v6

    .line 433
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v6    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v5    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_3
    :try_start_3
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v9, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 434
    .local v9, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v2, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 435
    const-string v11, "aaa"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "httpResponse.getStatusLine().getStatusCode() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_3

    .line 437
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 438
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 439
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto :goto_2

    .line 444
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "request":Lorg/apache/http/client/methods/HttpGet;
    :catch_1
    move-exception v0

    goto :goto_1

    .line 441
    .restart local v9    # "request":Lorg/apache/http/client/methods/HttpGet;
    :cond_3
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/http/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v11

    const/16 v12, 0xcc

    if-ne v11, v12, :cond_0

    goto :goto_2

    .line 446
    .end local v9    # "request":Lorg/apache/http/client/methods/HttpGet;
    :catch_2
    move-exception v0

    .line 447
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    sget-boolean v11, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v11, :cond_0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 448
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 449
    .local v0, "e":Lorg/apache/http/ParseException;
    :goto_5
    sget-boolean v11, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v11, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto/16 :goto_2

    .line 448
    .end local v0    # "e":Lorg/apache/http/ParseException;
    .end local v5    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_4
    move-exception v0

    move-object v5, v6

    .end local v6    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_5

    .line 446
    .end local v5    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_5
    move-exception v0

    move-object v5, v6

    .end local v6    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_4

    .end local v5    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v6    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_4
    move-object v5, v6

    .end local v6    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3
.end method

.method private loadAnchorCoverPic(Ljava/lang/String;I)V
    .locals 2
    .param p1, "picURL"    # Ljava/lang/String;
    .param p2, "notificationId"    # I

    .prologue
    .line 292
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver$1;

    invoke-direct {v1, p0, p2}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver$1;-><init>(Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;I)V

    invoke-virtual {v0, p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 314
    return-void
.end method

.method private showAncherLiveNotification(Landroid/graphics/Bitmap;ZI)V
    .locals 15
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "defaultCoverPicSize"    # Z
    .param p3, "notificationId"    # I

    .prologue
    .line 322
    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    const-string v13, "notification"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 324
    .local v8, "nm":Landroid/app/NotificationManager;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v12, "HH:mm"

    invoke-direct {v4, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 325
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 327
    .local v5, "dateTime":Ljava/lang/String;
    const/4 v9, 0x0

    .line 329
    .local v9, "normalRemoteViews":Landroid/widget/RemoteViews;
    if-eqz p2, :cond_2

    .line 330
    new-instance v9, Landroid/widget/RemoteViews;

    .end local v9    # "normalRemoteViews":Landroid/widget/RemoteViews;
    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/youku/laifeng/libcuteroom/R$layout;->custom_push_notification_normal_last_version:I

    invoke-direct {v9, v12, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 335
    .restart local v9    # "normalRemoteViews":Landroid/widget/RemoteViews;
    :goto_0
    sget v12, Lcom/youku/laifeng/libcuteroom/R$id;->iv_ancher_cover:I

    move-object/from16 v0, p1

    invoke-virtual {v9, v12, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 336
    sget v12, Lcom/youku/laifeng/libcuteroom/R$id;->tv_notification_time:I

    invoke-virtual {v9, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 337
    sget v12, Lcom/youku/laifeng/libcuteroom/R$id;->tv_ancher_name:I

    iget-object v13, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mAnchorName:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 340
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.laifeng.splashscreen"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v11, "notificationIntent":Landroid/content/Intent;
    const-string/jumbo v12, "start-action-type"

    iget v13, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mActionType:I

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    const-string/jumbo v12, "start-action-external"

    iget-object v13, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mExtern:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v6

    .line 344
    .local v6, "isforeground":Z
    const-string v12, "isforeground"

    invoke-virtual {v11, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    const-string v12, "active-url"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "http://push.m.youku.com/feedback/active/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->Mid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/high16 v14, 0x8000000

    invoke-static {v12, v13, v11, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 350
    .local v3, "contentItent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v2, v12}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    .local v2, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    sget v13, Lcom/youku/laifeng/libcuteroom/R$drawable;->custom__notification_icon:I

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x0

    .line 352
    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    iget-object v13, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mTicker:Ljava/lang/String;

    .line 353
    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x2

    .line 354
    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 356
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 358
    .local v10, "notification":Landroid/app/Notification;
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x10

    if-lt v12, v13, :cond_1

    .line 360
    const/4 v7, 0x0

    .line 362
    .local v7, "largeRemoteViews":Landroid/widget/RemoteViews;
    if-eqz p2, :cond_3

    .line 363
    new-instance v7, Landroid/widget/RemoteViews;

    .end local v7    # "largeRemoteViews":Landroid/widget/RemoteViews;
    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/youku/laifeng/libcuteroom/R$layout;->custom_push_notification_large_last_version:I

    invoke-direct {v7, v12, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 369
    .restart local v7    # "largeRemoteViews":Landroid/widget/RemoteViews;
    :goto_1
    sget v12, Lcom/youku/laifeng/libcuteroom/R$id;->iv_ancher_cover:I

    move-object/from16 v0, p1

    invoke-virtual {v7, v12, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 370
    sget v12, Lcom/youku/laifeng/libcuteroom/R$id;->tv_notification_time:I

    invoke-virtual {v7, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 371
    sget v12, Lcom/youku/laifeng/libcuteroom/R$id;->tv_ancher_name:I

    iget-object v13, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mAnchorName:Ljava/lang/String;

    invoke-virtual {v7, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 373
    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mPushTitleContent:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 374
    sget v12, Lcom/youku/laifeng/libcuteroom/R$id;->tv_notifcaiton_content:I

    iget-object v13, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mPushTitleContent:Ljava/lang/String;

    invoke-virtual {v7, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 377
    :cond_0
    iput-object v7, v10, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 380
    .end local v7    # "largeRemoteViews":Landroid/widget/RemoteViews;
    :cond_1
    move/from16 v0, p3

    invoke-virtual {v8, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 383
    return-void

    .line 332
    .end local v2    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v3    # "contentItent":Landroid/app/PendingIntent;
    .end local v6    # "isforeground":Z
    .end local v10    # "notification":Landroid/app/Notification;
    .end local v11    # "notificationIntent":Landroid/content/Intent;
    :cond_2
    new-instance v9, Landroid/widget/RemoteViews;

    .end local v9    # "normalRemoteViews":Landroid/widget/RemoteViews;
    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/youku/laifeng/libcuteroom/R$layout;->custom_push_notification_normal:I

    invoke-direct {v9, v12, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v9    # "normalRemoteViews":Landroid/widget/RemoteViews;
    goto/16 :goto_0

    .line 365
    .restart local v2    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v3    # "contentItent":Landroid/app/PendingIntent;
    .restart local v6    # "isforeground":Z
    .restart local v7    # "largeRemoteViews":Landroid/widget/RemoteViews;
    .restart local v10    # "notification":Landroid/app/Notification;
    .restart local v11    # "notificationIntent":Landroid/content/Intent;
    :cond_3
    new-instance v7, Landroid/widget/RemoteViews;

    .end local v7    # "largeRemoteViews":Landroid/widget/RemoteViews;
    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/youku/laifeng/libcuteroom/R$layout;->custom_push_notification_large:I

    invoke-direct {v7, v12, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v7    # "largeRemoteViews":Landroid/widget/RemoteViews;
    goto :goto_1
.end method

.method private showAncherLiveNotificatonBar(Lorg/json/JSONObject;I)V
    .locals 7
    .param p1, "jsondata"    # Lorg/json/JSONObject;
    .param p2, "notificationId"    # I

    .prologue
    .line 132
    const-string/jumbo v5, "title"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "title":Ljava/lang/String;
    const-string/jumbo v5, "tips"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "tips":Ljava/lang/String;
    const-string v5, "iconurl"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "iconurl":Ljava/lang/String;
    const-string v5, "actiontype"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mActionType:I

    .line 136
    const-string v5, "extern"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mExtern:Ljava/lang/String;

    .line 137
    const-string v5, "mid"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "mid":Ljava/lang/String;
    const-string v5, "anchorName"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mAnchorName:Ljava/lang/String;

    .line 141
    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mAnchorName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mAnchorName:Ljava/lang/String;

    .line 143
    const-string v5, ""

    iput-object v5, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mTicker:Ljava/lang/String;

    .line 148
    :goto_0
    const-string v5, "anchorCoverPicUrl"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mAnchorCoverPicUrl:Ljava/lang/String;

    .line 150
    const-string v5, "pushTitleContent"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mPushTitleContent:Ljava/lang/String;

    .line 152
    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mPushTitleContent:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mPushTitleContent:Ljava/lang/String;

    .line 157
    :cond_0
    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 158
    invoke-direct {p0, v2}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->feedbackRecv(Ljava/lang/String;)V

    .line 161
    :cond_1
    iget v5, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mActionType:I

    if-nez v5, :cond_2

    .line 162
    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/youku/laifeng/libcuteroom/utils/BroadCastConst;->sendAttentionPageALivingBroadCast(Landroid/content/Context;)V

    .line 165
    :cond_2
    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mAnchorCoverPicUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 166
    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mAnchorCoverPicUrl:Ljava/lang/String;

    invoke-direct {p0, v5, p2}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->loadAnchorCoverPic(Ljava/lang/String;I)V

    .line 174
    :goto_1
    return-void

    .line 145
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mAnchorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u6b63\u5728\u76f4\u64ad"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mTicker:Ljava/lang/String;

    goto :goto_0

    .line 169
    :cond_4
    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/youku/laifeng/libcuteroom/R$drawable;->ic_launcher_notify:I

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    invoke-direct {p0, v0, v5, p2}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->showAncherLiveNotification(Landroid/graphics/Bitmap;ZI)V

    goto :goto_1
.end method

.method private showBuyGuardNotificatonBar(Lorg/json/JSONObject;I)V
    .locals 15
    .param p1, "jsondata"    # Lorg/json/JSONObject;
    .param p2, "notificationId"    # I

    .prologue
    .line 180
    const-string/jumbo v12, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 181
    .local v11, "title":Ljava/lang/String;
    const-string v12, "content"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "content":Ljava/lang/String;
    const-string v12, "link"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "link":Ljava/lang/String;
    const-string v12, "actiontype"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mActionType:I

    .line 185
    const-string v12, "mid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, "mid":Ljava/lang/String;
    invoke-static {v7}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 189
    invoke-direct {p0, v7}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->feedbackRecv(Ljava/lang/String;)V

    .line 192
    :cond_0
    iget v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mActionType:I

    if-nez v12, :cond_1

    .line 193
    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/youku/laifeng/libcuteroom/utils/BroadCastConst;->sendAttentionPageALivingBroadCast(Landroid/content/Context;)V

    .line 196
    :cond_1
    new-instance v10, Landroid/content/Intent;

    const-string v12, "android.intent.action.laifeng.splashscreen"

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v10, "notificationIntent":Landroid/content/Intent;
    const-string/jumbo v12, "start-action-type"

    iget v13, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mActionType:I

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    const-string/jumbo v12, "start-action-external"

    invoke-virtual {v10, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v5

    .line 200
    .local v5, "isforeground":Z
    const-string v12, "isforeground"

    invoke-virtual {v10, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    const-string v12, "active-url"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "http://push.m.youku.com/feedback/active/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->Mid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/high16 v14, 0x8000000

    invoke-static {v12, v13, v10, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 206
    .local v4, "contentItent":Landroid/app/PendingIntent;
    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    const-string v13, "notification"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 219
    .local v8, "nm":Landroid/app/NotificationManager;
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 220
    .local v1, "bigTextStyle":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    invoke-virtual {v1, v11}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 222
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v2, v12}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    .local v2, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    iget-object v13, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    .line 224
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/youku/laifeng/libcuteroom/R$drawable;->ic_launcher_push:I

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    sget v13, Lcom/youku/laifeng/libcuteroom/R$drawable;->custom__notification_icon:I

    .line 225
    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    .line 226
    invoke-virtual {v12, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x0

    .line 227
    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, -0x1

    .line 228
    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x0

    .line 229
    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 231
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 233
    .local v9, "notification":Landroid/app/Notification;
    move/from16 v0, p2

    invoke-virtual {v8, v0, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 236
    return-void
.end method

.method private showNormalNotificatonBar(Lorg/json/JSONObject;I)V
    .locals 15
    .param p1, "jsondata"    # Lorg/json/JSONObject;
    .param p2, "notificationId"    # I

    .prologue
    .line 242
    const-string/jumbo v12, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 243
    .local v11, "title":Ljava/lang/String;
    const-string/jumbo v12, "tips"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "content":Ljava/lang/String;
    const-string v12, "link"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 246
    .local v6, "link":Ljava/lang/String;
    const-string v12, "actiontype"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mActionType:I

    .line 247
    const-string v12, "mid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, "mid":Ljava/lang/String;
    invoke-static {v7}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 251
    invoke-direct {p0, v7}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->feedbackRecv(Ljava/lang/String;)V

    .line 254
    :cond_0
    iget v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mActionType:I

    if-nez v12, :cond_1

    .line 255
    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/youku/laifeng/libcuteroom/utils/BroadCastConst;->sendAttentionPageALivingBroadCast(Landroid/content/Context;)V

    .line 258
    :cond_1
    new-instance v10, Landroid/content/Intent;

    const-string v12, "android.intent.action.laifeng.splashscreen"

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v10, "notificationIntent":Landroid/content/Intent;
    const-string/jumbo v12, "start-action-type"

    iget v13, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mActionType:I

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    const-string/jumbo v12, "start-action-external"

    invoke-virtual {v10, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v5

    .line 262
    .local v5, "isforeground":Z
    const-string v12, "isforeground"

    invoke-virtual {v10, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    const-string v12, "active-url"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "http://push.m.youku.com/feedback/active/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->Mid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/high16 v14, 0x8000000

    invoke-static {v12, v13, v10, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 268
    .local v4, "contentItent":Landroid/app/PendingIntent;
    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    const-string v13, "notification"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 270
    .local v8, "nm":Landroid/app/NotificationManager;
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 271
    .local v1, "bigTextStyle":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    invoke-virtual {v1, v11}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 273
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v12, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v2, v12}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    .local v2, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    iget-object v13, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    .line 275
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/youku/laifeng/libcuteroom/R$drawable;->ic_launcher_push:I

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    sget v13, Lcom/youku/laifeng/libcuteroom/R$drawable;->custom__notification_icon:I

    .line 276
    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    .line 277
    invoke-virtual {v12, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x0

    .line 278
    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, -0x1

    .line 279
    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x0

    .line 280
    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 282
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 284
    .local v9, "notification":Landroid/app/Notification;
    move/from16 v0, p2

    invoke-virtual {v8, v0, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 287
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->isOpenNotify()Z

    move-result v5

    if-nez v5, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v5, "push_msg_content"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 93
    .local v0, "content":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 97
    .local v3, "jsonstring":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, "jsondata":Lorg/json/JSONObject;
    const-string v5, "pushType"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "type":Ljava/lang/String;
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    const-string v5, "kb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 110
    const/4 v5, 0x1

    invoke-direct {p0, v2, v5}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->showAncherLiveNotificatonBar(Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v2    # "jsondata":Lorg/json/JSONObject;
    .end local v4    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Lorg/json/JSONException;
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 111
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "jsondata":Lorg/json/JSONObject;
    .restart local v4    # "type":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v5, "psEnd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 112
    const/4 v5, 0x2

    invoke-direct {p0, v2, v5}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->showBuyGuardNotificatonBar(Lorg/json/JSONObject;I)V

    goto :goto_0

    .line 113
    :cond_4
    const-string v5, "psBuy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 114
    const/4 v5, 0x2

    invoke-direct {p0, v2, v5}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->showBuyGuardNotificatonBar(Lorg/json/JSONObject;I)V

    goto :goto_0

    .line 115
    :cond_5
    const-string v5, "psNew"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 116
    const/4 v5, 0x2

    invoke-direct {p0, v2, v5}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->showBuyGuardNotificatonBar(Lorg/json/JSONObject;I)V

    goto :goto_0

    .line 117
    :cond_6
    const-string v5, "nm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    const/4 v5, 0x3

    invoke-direct {p0, v2, v5}, Lcom/youku/laifeng/libcuteroom/service/MsgReceiver;->showNormalNotificatonBar(Lorg/json/JSONObject;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
