.class public Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;
.super Ljava/lang/Object;
.source "DataLoadCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;


# instance fields
.field private SecretKey:Ljava/lang/String;

.field private mArgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBigArgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCookies:Ljava/lang/String;

.field private mGiftVersionListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

.field private mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

.field private mToken:Ljava/lang/String;

.field private mType:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p5, "token"    # Ljava/lang/String;
    .param p6, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;, "Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable<TV;>;"
    .local p3, "postArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "postBigArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mUrl:Ljava/lang/String;

    .line 60
    const/16 v0, 0x10

    iput v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mType:I

    .line 61
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mArgs:Ljava/util/Map;

    .line 62
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mBigArgs:Ljava/util/Map;

    .line 63
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 64
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mCookies:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mToken:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->SecretKey:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable$1;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable$1;-><init>(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mGiftVersionListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    .line 69
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mUrl:Ljava/lang/String;

    .line 70
    iput p2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mType:I

    .line 71
    iput-object p3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mArgs:Ljava/util/Map;

    .line 72
    iput-object p4, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mBigArgs:Ljava/util/Map;

    .line 73
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mArgs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mArgs:Ljava/util/Map;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mArgs:Ljava/util/Map;

    const-string/jumbo v1, "v"

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mArgs:Ljava/util/Map;

    const-string v1, "cl"

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iput-object p5, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mToken:Ljava/lang/String;

    .line 78
    iput-object p6, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->SecretKey:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 80
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-static {p3}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertMapToStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setRequest(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private httpGet()Ljava/lang/String;
    .locals 26

    .prologue
    .line 286
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;, "Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable<TV;>;"
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpObject()Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v8

    .line 287
    .local v8, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpObject()Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;

    move-result-object v22

    const-wide/16 v24, 0xfa0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->setTimeout(J)V

    .line 288
    const/16 v17, 0x0

    .line 289
    .local v17, "result":Ljava/lang/String;
    const-string v15, ""

    .line 290
    .local v15, "paramStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 291
    .local v4, "Authorization":Ljava/lang/String;
    const/4 v5, 0x0

    .line 292
    .local v5, "Str1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 293
    .local v21, "url":Ljava/lang/String;
    const/4 v11, 0x0

    .line 294
    .local v11, "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 296
    .local v9, "httpResponse":Lorg/apache/http/HttpResponse;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mArgs:Ljava/util/Map;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 297
    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_3

    .line 298
    .end local v11    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v12, "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mArgs:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    .line 299
    .local v18, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 300
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 301
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 302
    .local v13, "mapentry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v25, "UTF-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 303
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 355
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v13    # "mapentry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v6

    move-object v11, v12

    .line 356
    .end local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v6, "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v11    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    sget-boolean v22, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v22, :cond_0

    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 357
    :cond_0
    const/16 v22, 0x2000

    const-string v23, "ERR_CLIENT_PROTOCOL_EXCEPTION"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->postErr(ILjava/lang/String;)V

    .end local v6    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_1
    :goto_2
    move-object/from16 v22, v17

    .line 365
    :goto_3
    return-object v22

    .line 305
    .end local v11    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :try_start_2
    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 306
    const-string v22, "&"

    const-string v23, "?"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 307
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 309
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->sort(Ljava/util/SortedMap;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v5

    move-object v11, v12

    .line 313
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v11    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4
    :try_start_3
    sget-object v22, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->CLASS_NAME:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mUrl = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v16, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 315
    .local v16, "request":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mToken:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->SecretKey:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    .line 317
    .local v19, "ts":Ljava/lang/String;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->getRandomStr()Ljava/lang/String;

    move-result-object v14

    .line 318
    .local v14, "nonce":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MAC id="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mToken:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",ts="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",nonce="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",mac="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->SecretKey:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 319
    invoke-static/range {v23 .. v23}, Lcom/youku/laifeng/libcuteroom/utils/SecurityMD5;->ToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 320
    sget-object v22, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->CLASS_NAME:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mac = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->SecretKey:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .end local v14    # "nonce":Ljava/lang/String;
    .end local v19    # "ts":Ljava/lang/String;
    :goto_5
    sget-object v22, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->CLASS_NAME:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Authorization = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v22, "Authorization"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;

    move-result-object v22

    const-string v23, "id"

    invoke-virtual/range {v22 .. v23}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->getuserDataInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 327
    .local v20, "uid":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 328
    const-string v20, "-1"

    .line 330
    :cond_4
    const-string v22, "info"

    invoke-static/range {v20 .. v20}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->buildClientInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object v22, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->CLASS_NAME:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "info = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v20 .. v20}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->buildClientInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mCookies:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    .line 333
    sget-object v22, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->CLASS_NAME:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mCookies = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mCookies:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v22, "Cookie"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mCookies:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 339
    :goto_6
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v22

    const/16 v23, 0xc8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 340
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 341
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    const-string v22, "UTF-8"

    move-object/from16 v0, v22

    invoke-static {v7, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 342
    sget-object v22, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->CLASS_NAME:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "result = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setBody(Ljava/lang/String;)V

    .line 344
    if-eqz v7, :cond_5

    .line 345
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 347
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-object/from16 v22, v0

    const/16 v23, 0xc8

    invoke-virtual/range {v22 .. v23}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setRespStatusCode(I)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 349
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v22

    const-string v23, "ParseException"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->postErr(ILjava/lang/String;)V

    .line 350
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 311
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v16    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v20    # "uid":Ljava/lang/String;
    :cond_6
    const-string v5, ""

    goto/16 :goto_4

    .line 322
    .restart local v16    # "request":Lorg/apache/http/client/methods/HttpGet;
    :cond_7
    const-string v4, ""

    goto/16 :goto_5

    .line 337
    .restart local v20    # "uid":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    goto/16 :goto_6

    .line 353
    :cond_9
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v22

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v23

    const-string v24, "UTF-8"

    invoke-static/range {v23 .. v24}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->postErr(ILjava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/http/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 355
    .end local v16    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v20    # "uid":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto/16 :goto_1

    .line 358
    :catch_2
    move-exception v6

    .line 359
    .local v6, "e":Ljava/io/IOException;
    :goto_7
    sget-boolean v22, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v22, :cond_a

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 360
    :cond_a
    const/16 v22, 0x2001

    const-string v23, "ERR_IO_EXCEPTION"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->postErr(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 361
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 362
    .local v6, "e":Lorg/apache/http/ParseException;
    :goto_8
    sget-boolean v22, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v22, :cond_b

    invoke-virtual {v6}, Lorg/apache/http/ParseException;->printStackTrace()V

    .line 363
    :cond_b
    const/16 v22, 0x2003

    const-string v23, "ERR_PARSE_EXCEPTION"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->postErr(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 361
    .end local v6    # "e":Lorg/apache/http/ParseException;
    .end local v11    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_4
    move-exception v6

    move-object v11, v12

    .end local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_8

    .line 358
    .end local v11    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_5
    move-exception v6

    move-object v11, v12

    .end local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_7
.end method

.method private httpPost(Z)Ljava/lang/String;
    .locals 27
    .param p1, "flag"    # Z

    .prologue
    .line 184
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;, "Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable<TV;>;"
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpObject()Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v8

    .line 185
    .local v8, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->getHttpObject()Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;

    move-result-object v23

    const-wide/16 v24, 0xfa0

    invoke-virtual/range {v23 .. v25}, Lcom/youku/laifeng/libcuteroom/model/loader/BaseHttpClient;->setTimeout(J)V

    .line 186
    const/16 v18, 0x0

    .line 187
    .local v18, "result":Ljava/lang/String;
    const-string v16, ""

    .line 188
    .local v16, "paramStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 189
    .local v4, "Authorization":Ljava/lang/String;
    const/4 v5, 0x0

    .line 190
    .local v5, "Str1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 191
    .local v22, "url":Ljava/lang/String;
    const/4 v12, 0x0

    .line 193
    .local v12, "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 194
    .local v10, "httpResponse":Lorg/apache/http/HttpResponse;
    :try_start_0
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v9}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    .line 195
    .local v9, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    sget-object v23, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->CLASS_NAME:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mArgs = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mArgs:Ljava/util/Map;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mArgs:Ljava/util/Map;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 197
    new-instance v13, Ljava/util/TreeMap;

    invoke-direct {v13}, Ljava/util/TreeMap;-><init>()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_4

    .line 198
    .end local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v13, "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mArgs:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    .line 199
    .local v19, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 200
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 201
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 202
    .local v14, "mapentry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v13, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "&"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, "="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v26, "UTF-8"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 204
    goto :goto_0

    .line 205
    .end local v14    # "mapentry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v23, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 206
    const-string v23, "&"

    const-string v24, "?"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 207
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 209
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->sort(Ljava/util/SortedMap;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v5

    move-object v12, v13

    .line 213
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v13    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    if-eqz p1, :cond_6

    .line 214
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mBigArgs:Ljava/util/Map;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 215
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v17, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mBigArgs:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    .line 217
    .restart local v19    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 218
    .restart local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 219
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 220
    .restart local v14    # "mapentry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v25, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    .line 267
    .end local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v14    # "mapentry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v19    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v6

    .line 268
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    :goto_3
    sget-boolean v23, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v23, :cond_2

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 269
    :cond_2
    const/16 v23, 0x2004

    const-string v24, "ERR_UNSUPPORTED_ENCODING_EXCEPTION"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->postErr(ILjava/lang/String;)V

    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    :goto_4
    move-object/from16 v23, v18

    .line 282
    :goto_5
    return-object v23

    .line 211
    .restart local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :cond_4
    :try_start_3
    const-string v5, ""

    goto :goto_1

    .line 222
    .restart local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v17    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v19    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_5
    new-instance v23, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v24, "UTF-8"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 225
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v17    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v19    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_6
    sget-object v23, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->CLASS_NAME:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mUrl = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v23, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->CLASS_NAME:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Str1 = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v23, Ljava/net/URI;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mToken:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->SecretKey:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    .line 230
    .local v20, "ts":Ljava/lang/String;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->getRandomStr()Ljava/lang/String;

    move-result-object v15

    .line 231
    .local v15, "nonce":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MAC id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mToken:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",ts="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",nonce="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",mac="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->SecretKey:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 232
    invoke-static/range {v24 .. v24}, Lcom/youku/laifeng/libcuteroom/utils/SecurityMD5;->ToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 236
    .end local v15    # "nonce":Ljava/lang/String;
    .end local v20    # "ts":Ljava/lang/String;
    :goto_6
    sget-object v23, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->CLASS_NAME:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Authorization = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v23, "Authorization"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;

    move-result-object v23

    const-string v24, "id"

    invoke-virtual/range {v23 .. v24}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->getuserDataInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 239
    .local v21, "uid":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 240
    const-string v21, "-1"

    .line 242
    :cond_7
    const-string v23, "info"

    invoke-static/range {v21 .. v21}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->buildClientInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v23, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->CLASS_NAME:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "info = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {v21 .. v21}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->buildClientInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mCookies:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    .line 245
    sget-object v23, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->CLASS_NAME:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mCookies = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mCookies:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v23, "Cookie"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mCookies:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v8, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 251
    :goto_7
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v23

    const/16 v24, 0xc8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 252
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 253
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    const-string v23, "UTF-8"

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 254
    sget-object v23, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->CLASS_NAME:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "result = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setBody(Ljava/lang/String;)V

    .line 256
    if-eqz v7, :cond_8

    .line 257
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 259
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-object/from16 v23, v0

    const/16 v24, 0xc8

    invoke-virtual/range {v23 .. v24}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setRespStatusCode(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 261
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v23

    const-string v24, "ParseException"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->postErr(ILjava/lang/String;)V

    .line 262
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 234
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v21    # "uid":Ljava/lang/String;
    :cond_9
    const-string v4, ""

    goto/16 :goto_6

    .line 249
    .restart local v21    # "uid":Ljava/lang/String;
    :cond_a
    invoke-virtual {v8, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    goto/16 :goto_7

    .line 265
    :cond_b
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v23

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v24

    const-string v25, "UTF-8"

    invoke-static/range {v24 .. v25}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->postErr(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/http/ParseException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_4

    .line 270
    .end local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v21    # "uid":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 271
    .local v6, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_8
    sget-boolean v23, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v23, :cond_c

    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 272
    :cond_c
    const/16 v23, 0x2000

    const-string v24, "ERR_CLIENT_PROTOCOL_EXCEPTION"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->postErr(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 273
    .end local v6    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v6

    .line 274
    .local v6, "e":Ljava/io/IOException;
    :goto_9
    sget-boolean v23, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v23, :cond_d

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 275
    :cond_d
    const/16 v23, 0x2001

    const-string v24, "ERR_IO_EXCEPTION"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->postErr(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 276
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 277
    .local v6, "e":Lorg/apache/http/ParseException;
    :goto_a
    sget-boolean v23, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v23, :cond_e

    invoke-virtual {v6}, Lorg/apache/http/ParseException;->printStackTrace()V

    .line 278
    :cond_e
    const/16 v23, 0x2003

    const-string v24, "ERR_PARSE_EXCEPTION"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->postErr(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 279
    .end local v6    # "e":Lorg/apache/http/ParseException;
    :catch_4
    move-exception v6

    .line 280
    .local v6, "e":Ljava/net/URISyntaxException;
    :goto_b
    sget-boolean v23, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v23, :cond_3

    invoke-virtual {v6}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_4

    .line 279
    .end local v6    # "e":Ljava/net/URISyntaxException;
    .end local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v13    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_5
    move-exception v6

    move-object v12, v13

    .end local v13    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_b

    .line 276
    .end local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_6
    move-exception v6

    move-object v12, v13

    .end local v13    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_a

    .line 273
    .end local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_7
    move-exception v6

    move-object v12, v13

    .end local v13    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_9

    .line 270
    .end local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_8
    move-exception v6

    move-object v12, v13

    .end local v13    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_8

    .line 267
    .end local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_9
    move-exception v6

    move-object v12, v13

    .end local v13    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "key":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_3
.end method

.method private postErr(ILjava/lang/String;)V
    .locals 1
    .param p1, "errCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 369
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;, "Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable<TV;>;"
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-virtual {v0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setRespStatusCode(I)V

    .line 370
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-virtual {v0, p2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setMessage(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method private sort(Ljava/util/SortedMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;, "Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable<TV;>;"
    .local p1, "arg":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 173
    .local v2, "tmp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    .end local v2    # "tmp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    .local v1, "tmp":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 180
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;, "Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable<TV;>;"
    const/4 v10, 0x0

    .line 110
    .local v10, "result":Ljava/lang/String;
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    if-eqz v10, :cond_7

    :try_start_0
    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 123
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    .local v12, "tmp":Lorg/json/JSONObject;
    const-string/jumbo v0, "response"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 125
    .local v11, "root":Lorg/json/JSONObject;
    const-string v0, "code"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setExtraData(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    const-string v1, "data"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setParserData(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mUrl:Ljava/lang/String;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_ENTER_ROOM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->builderRoomInfo(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mGiftVersionListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_GIFT_SIGN:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->insertTask(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mUrl:Ljava/lang/String;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_GIFT_GET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->updateGiftConfig(Ljava/lang/String;)V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mUrl:Ljava/lang/String;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_STAR_SEND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    const-string v0, "data"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 137
    .local v6, "data":Lorg/json/JSONObject;
    const-string v0, "leftStars"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, "leftStar":Ljava/lang/String;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;

    move-result-object v0

    const-string/jumbo v1, "starAvail"

    invoke-virtual {v0, v1, v9}, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->updateStarInfoByKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v6    # "data":Lorg/json/JSONObject;
    .end local v9    # "leftStar":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mUrl:Ljava/lang/String;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_STAR_GET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->updateStarInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v11    # "root":Lorg/json/JSONObject;
    .end local v12    # "tmp":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    return-object v0

    .line 112
    :pswitch_0
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->httpGet()Ljava/lang/String;

    move-result-object v10

    .line 113
    goto/16 :goto_0

    .line 115
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->httpPost(Z)Ljava/lang/String;

    move-result-object v10

    .line 116
    goto/16 :goto_0

    .line 118
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->httpPost(Z)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 143
    .restart local v11    # "root":Lorg/json/JSONObject;
    .restart local v12    # "tmp":Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    const-string v0, "code"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VERSION_UPGRAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v8

    .line 145
    .local v8, "isforeground":Z
    if-eqz v8, :cond_3

    .line 146
    sget-boolean v0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->isVersionUpgrade:Z

    if-nez v0, :cond_3

    .line 147
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/utils/BroadCastConst;->sendVersionUpgradeBroadCast(Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 164
    .end local v8    # "isforeground":Z
    .end local v11    # "root":Lorg/json/JSONObject;
    .end local v12    # "tmp":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 165
    .local v7, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_rest_api_resp_parser_error"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 151
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v11    # "root":Lorg/json/JSONObject;
    .restart local v12    # "tmp":Lorg/json/JSONObject;
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    const-string v1, "code"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setExtraData(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    const-string v1, "message"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->setMessage(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getExtraData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVALID_TOKEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 154
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->clearUserInfo()V

    .line 155
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/utils/BroadCastConst;->sendTokenValidBroadCast(Landroid/content/Context;)V

    goto :goto_1

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;->mResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getExtraData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOGIN_INNEED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->clearUserInfo()V

    goto/16 :goto_1

    .line 162
    .end local v11    # "root":Lorg/json/JSONObject;
    .end local v12    # "tmp":Lorg/json/JSONObject;
    :cond_7
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_rest_api_resp_parser_error"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
