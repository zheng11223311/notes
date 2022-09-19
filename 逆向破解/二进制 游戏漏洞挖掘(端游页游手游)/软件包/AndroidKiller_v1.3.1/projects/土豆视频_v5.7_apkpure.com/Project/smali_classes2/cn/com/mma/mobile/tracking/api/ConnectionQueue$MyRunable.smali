.class Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;
.super Ljava/lang/Object;
.source "Countly.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/mma/mobile/tracking/api/ConnectionQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRunable"
.end annotation


# instance fields
.field private errorHanlder:Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;

.field private sp:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcn/com/mma/mobile/tracking/api/ConnectionQueue;


# direct methods
.method constructor <init>(Lcn/com/mma/mobile/tracking/api/ConnectionQueue;Landroid/content/SharedPreferences;Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;)V
    .locals 0
    .param p2, "sp"    # Landroid/content/SharedPreferences;
    .param p3, "errorHanlder"    # Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;

    .prologue
    .line 704
    iput-object p1, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;->this$0:Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    iput-object p2, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;->sp:Landroid/content/SharedPreferences;

    .line 706
    iput-object p3, p0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;->errorHanlder:Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;

    .line 707
    return-void
.end method

.method private sendData()V
    .locals 30

    .prologue
    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 716
    .local v19, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;->this$0:Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->access$000(Lcn/com/mma/mobile/tracking/api/ConnectionQueue;)Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcn/com/mma/mobile/tracking/api/DeviceInfo;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 798
    .end local v19    # "key":Ljava/lang/String;
    :cond_1
    return-void

    .line 718
    .restart local v19    # "key":Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    .line 719
    .local v13, "expire":Ljava/lang/Long;
    const/4 v14, 0x0

    .line 721
    .local v14, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-wide/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move-wide/from16 v2, v26

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 722
    move-object/from16 v11, v19

    .line 723
    .local v11, "data":Ljava/lang/String;
    sget-boolean v25, Lcn/com/mma/mobile/tracking/api/Countly;->LOG:Z

    if-eqz v25, :cond_3

    const-string v26, "cn/com/mma/mobile/tracking/api/Countly"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "##data "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;->errorHanlder:Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    const-string v25, ""

    :goto_1
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " :"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_3
    sget-boolean v25, Lcn/com/mma/mobile/tracking/api/Countly;->LOG:Z

    if-eqz v25, :cond_4

    const-string v26, "cn/com/mma/mobile/tracking/api/Countly"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "##ListSize "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;->errorHanlder:Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    const-string v25, ""

    :goto_2
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " :"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->size()I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_4
    if-eqz v11, :cond_0

    const-string v25, ""

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 729
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    cmp-long v25, v26, v28

    if-lez v25, :cond_10

    .line 731
    const-string v25, "REPLACE_UDID"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 732
    invoke-static {}, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->isInitialized()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 733
    const-string v25, "REPLACE_UDID"

    invoke-static {}, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->getOpenUDID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 735
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;->this$0:Lcn/com/mma/mobile/tracking/api/ConnectionQueue;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 736
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v6

    .line 737
    .local v6, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v6, v11}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 738
    .local v22, "sessionCookie":Ljava/lang/String;
    new-instance v7, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v7}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 740
    .local v7, "cookieStore":Lorg/apache/http/client/CookieStore;
    if-eqz v22, :cond_9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_9

    .line 741
    const-string v25, ";"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 742
    .local v9, "cookie_parts":[Ljava/lang/String;
    const/16 v24, 0x0

    .local v24, "t":I
    :goto_3
    array-length v0, v9

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 743
    aget-object v25, v9, v24

    const-string v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 744
    .local v5, "cookieContent":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 745
    new-instance v4, Lorg/apache/http/impl/cookie/BasicClientCookie;

    const/16 v25, 0x0

    aget-object v25, v5, v25

    const/16 v26, 0x1

    aget-object v26, v5, v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v4, v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    .local v4, "cookie":Lorg/apache/http/cookie/Cookie;
    move-object v0, v4

    check-cast v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    move-object/from16 v25, v0

    const-string v26, "http://"

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "/.*"

    const-string v28, ""

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, ":\\d*"

    const-string v28, ""

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 747
    invoke-interface {v7, v4}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 742
    .end local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_6
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 723
    .end local v5    # "cookieContent":[Ljava/lang/String;
    .end local v6    # "cookieManager":Landroid/webkit/CookieManager;
    .end local v7    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v9    # "cookie_parts":[Ljava/lang/String;
    .end local v22    # "sessionCookie":Ljava/lang/String;
    .end local v24    # "t":I
    :cond_7
    const-string v25, "in ErrorList"

    goto/16 :goto_1

    .line 724
    :cond_8
    const-string v25, "of ErrorList"

    goto/16 :goto_2

    .line 751
    .restart local v6    # "cookieManager":Landroid/webkit/CookieManager;
    .restart local v7    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .restart local v22    # "sessionCookie":Ljava/lang/String;
    :cond_9
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 752
    new-instance v15, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 753
    .end local v14    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v15, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_1
    invoke-virtual {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v25

    const-string v26, "http.connection.timeout"

    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    sget v27, Lcn/com/mma/mobile/tracking/api/Countly;->OFFLINECACHE_TIMEOUT:I

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-interface/range {v25 .. v27}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 754
    invoke-virtual {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v25

    const-string v26, "http.socket.timeout"

    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    sget v27, Lcn/com/mma/mobile/tracking/api/Countly;->OFFLINECACHE_TIMEOUT:I

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-interface/range {v25 .. v27}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 755
    invoke-virtual {v15, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 756
    new-instance v20, Lorg/apache/http/client/methods/HttpGet;

    new-instance v25, Ljava/net/URI;

    move-object/from16 v0, v25

    invoke-direct {v0, v11}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 757
    .local v20, "method":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v21

    .line 758
    .local v21, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v23

    .line 759
    .local v23, "statueCode":I
    sget-boolean v25, Lcn/com/mma/mobile/tracking/api/Countly;->LOG:Z

    if-eqz v25, :cond_a

    const-string v25, "cn/com/mma/mobile/tracking/api/Countly"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "##statueCode:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_a
    const/16 v25, 0xc8

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    const/16 v25, 0x12d

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    const/16 v25, 0x12e

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    .line 761
    new-instance v25, Ljava/lang/Exception;

    invoke-direct/range {v25 .. v25}, Ljava/lang/Exception;-><init>()V

    throw v25
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 779
    .end local v20    # "method":Lorg/apache/http/client/methods/HttpGet;
    .end local v21    # "response":Lorg/apache/http/HttpResponse;
    .end local v23    # "statueCode":I
    :catch_0
    move-exception v12

    move-object v14, v15

    .line 780
    .end local v6    # "cookieManager":Landroid/webkit/CookieManager;
    .end local v7    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v11    # "data":Ljava/lang/String;
    .end local v15    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v22    # "sessionCookie":Ljava/lang/String;
    .local v12, "e":Ljava/net/URISyntaxException;
    .restart local v14    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :goto_4
    invoke-virtual {v12}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 781
    if-eqz v14, :cond_b

    invoke-virtual {v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v25

    if-eqz v25, :cond_b

    .line 782
    invoke-virtual {v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 783
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;->errorHanlder:Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;->errorHanlder:Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v13}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;->hanlderError(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 763
    .end local v12    # "e":Ljava/net/URISyntaxException;
    .end local v14    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "cookieManager":Landroid/webkit/CookieManager;
    .restart local v7    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .restart local v11    # "data":Ljava/lang/String;
    .restart local v15    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v20    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v21    # "response":Lorg/apache/http/HttpResponse;
    .restart local v22    # "sessionCookie":Ljava/lang/String;
    .restart local v23    # "statueCode":I
    :cond_c
    :try_start_2
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v18

    .line 764
    .local v18, "input":Ljava/io/InputStream;
    :cond_d
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v25

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 766
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 767
    invoke-virtual {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v10

    .line 768
    .local v10, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_f

    .line 769
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_f

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/cookie/Cookie;

    .line 770
    .restart local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v4}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "; domain="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v4}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 771
    .local v8, "cookieString":Ljava/lang/String;
    invoke-virtual {v6, v11, v8}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 787
    .end local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v8    # "cookieString":Ljava/lang/String;
    .end local v10    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "input":Ljava/io/InputStream;
    .end local v20    # "method":Lorg/apache/http/client/methods/HttpGet;
    .end local v21    # "response":Lorg/apache/http/HttpResponse;
    .end local v23    # "statueCode":I
    :catch_1
    move-exception v12

    move-object v14, v15

    .line 788
    .end local v6    # "cookieManager":Landroid/webkit/CookieManager;
    .end local v7    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v11    # "data":Ljava/lang/String;
    .end local v15    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v22    # "sessionCookie":Ljava/lang/String;
    .local v12, "e":Ljava/lang/Exception;
    .restart local v14    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :goto_6
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 789
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v25

    if-eqz v25, :cond_e

    .line 790
    invoke-virtual {v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 792
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;->errorHanlder:Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;->errorHanlder:Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v13}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$ErrorHanlder;->hanlderError(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 775
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v14    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "cookieManager":Landroid/webkit/CookieManager;
    .restart local v7    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .restart local v10    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v11    # "data":Ljava/lang/String;
    .restart local v15    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18    # "input":Ljava/io/InputStream;
    .restart local v20    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v21    # "response":Lorg/apache/http/HttpResponse;
    .restart local v22    # "sessionCookie":Ljava/lang/String;
    .restart local v23    # "statueCode":I
    :cond_f
    :try_start_3
    invoke-virtual {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v14, v15

    .line 777
    .end local v6    # "cookieManager":Landroid/webkit/CookieManager;
    .end local v7    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v10    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v15    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v18    # "input":Ljava/io/InputStream;
    .end local v20    # "method":Lorg/apache/http/client/methods/HttpGet;
    .end local v21    # "response":Lorg/apache/http/HttpResponse;
    .end local v22    # "sessionCookie":Ljava/lang/String;
    .end local v23    # "statueCode":I
    .restart local v14    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :cond_10
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 779
    .end local v11    # "data":Ljava/lang/String;
    :catch_2
    move-exception v12

    goto/16 :goto_4

    .line 787
    :catch_3
    move-exception v12

    goto :goto_6
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 711
    invoke-direct {p0}, Lcn/com/mma/mobile/tracking/api/ConnectionQueue$MyRunable;->sendData()V

    .line 712
    return-void
.end method
