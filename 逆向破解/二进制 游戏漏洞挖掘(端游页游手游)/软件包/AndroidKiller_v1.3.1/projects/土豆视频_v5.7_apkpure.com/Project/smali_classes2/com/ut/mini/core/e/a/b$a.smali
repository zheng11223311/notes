.class Lcom/ut/mini/core/e/a/b$a;
.super Ljava/lang/Thread;
.source "UTMCOnlineConfMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/core/e/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ut/mini/core/e/a/b;

.field private b:Ljava/lang/String;

.field private c:[I


# direct methods
.method public constructor <init>(Lcom/ut/mini/core/e/a/b;Ljava/lang/String;)V
    .locals 1
    .param p2, "pConfigurationUrl"    # Ljava/lang/String;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/ut/mini/core/e/a/b$a;->a:Lcom/ut/mini/core/e/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ut/mini/core/e/a/b$a;->b:Ljava/lang/String;

    .line 317
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ut/mini/core/e/a/b$a;->c:[I

    .line 320
    iput-object p2, p0, Lcom/ut/mini/core/e/a/b$a;->b:Ljava/lang/String;

    .line 321
    return-void

    .line 317
    :array_0
    .array-data 4
        0x2
        0x2
        0x4
        0x4
        0x8
        0x8
        0x10
        0x10
        0x20
        0x40
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 325
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 327
    .local v10, "lStartTime":J
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v14, v10

    const-wide/16 v16, 0x2710

    cmp-long v14, v14, v16

    if-lez v14, :cond_0

    .line 399
    invoke-static {}, Lcom/ut/mini/core/e;->a()Lcom/ut/mini/core/e;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/ut/mini/core/e;->a(Z)V

    .line 400
    :goto_1
    return-void

    .line 332
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ut/mini/core/e/a/b$a;->a:Lcom/ut/mini/core/e/a/b;

    invoke-static {v14}, Lcom/ut/mini/core/e/a/b;->a(Lcom/ut/mini/core/e/a/b;)Lorg/json/JSONObject;

    move-result-object v8

    .line 333
    .local v8, "lServerConfig":Lorg/json/JSONObject;
    if-eqz v8, :cond_1

    .line 334
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ut/mini/core/e/a/b$a;->a:Lcom/ut/mini/core/e/a/b;

    invoke-static {v14, v8}, Lcom/ut/mini/core/e/a/b;->a(Lcom/ut/mini/core/e/a/b;Lorg/json/JSONObject;)V

    .line 338
    :cond_1
    const/4 v14, 0x1

    const-string v15, "url"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/core/e/a/b$a;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/ut/mini/b/a;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ut/mini/core/e/a/b$a;->a:Lcom/ut/mini/core/e/a/b;

    invoke-static {v14}, Lcom/ut/mini/core/e/a/b;->a(Lcom/ut/mini/core/e/a/b;)Lorg/json/JSONObject;

    move-result-object v12

    .line 341
    .local v12, "localData":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ut/mini/core/e/a/b$a;->a:Lcom/ut/mini/core/e/a/b;

    invoke-static {v14, v12}, Lcom/ut/mini/core/e/a/b;->b(Lcom/ut/mini/core/e/a/b;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "l304Timetamps":Ljava/lang/String;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 344
    .local v13, "postbody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v14, "cf"

    invoke-interface {v13, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v6, ""

    .line 347
    .local v6, "lResponseText":Ljava/lang/String;
    const/4 v9, 0x0

    .line 349
    .local v9, "lTryIntervalIndex":I
    const-string v14, "http://adash.m.taobao.com/rest/gc"

    const/4 v15, 0x0

    invoke-static {v14, v15, v13}, Lcom/ut/mini/core/f/b;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, "lConfUrl":Ljava/lang/String;
    :cond_2
    invoke-static {v6}, Lcom/ut/mini/d/m;->a(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 352
    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-static {v14, v4, v13, v15}, Lcom/ut/mini/d/c;->a(ILjava/lang/String;Ljava/util/Map;Z)[B

    move-result-object v5

    .line 355
    .local v5, "lData":[B
    if-eqz v5, :cond_4

    array-length v14, v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v14, :cond_4

    .line 357
    :try_start_1
    new-instance v7, Ljava/lang/String;

    const/4 v14, 0x0

    array-length v15, v5

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-direct {v7, v5, v14, v15, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 358
    .local v7, "lResponseTextTmp":Ljava/lang/String;
    const/4 v14, 0x1

    const-string v15, "result"

    invoke-static {v14, v15, v7}, Lcom/ut/mini/b/a;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 359
    invoke-static {v7}, Lcom/ut/mini/d/a;->a(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    if-eqz v14, :cond_4

    .line 360
    move-object v6, v7

    .line 384
    .end local v5    # "lData":[B
    .end local v7    # "lResponseTextTmp":Ljava/lang/String;
    :cond_3
    :goto_2
    :try_start_2
    invoke-static {v6}, Lcom/ut/mini/d/m;->a(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 385
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ut/mini/core/e/a/b$a;->a:Lcom/ut/mini/core/e/a/b;

    invoke-static {v14, v6, v12}, Lcom/ut/mini/core/e/a/b;->a(Lcom/ut/mini/core/e/a/b;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 386
    invoke-static {}, Lcom/ut/mini/core/e;->a()Lcom/ut/mini/core/e;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/ut/mini/core/e;->a(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 395
    .end local v3    # "l304Timetamps":Ljava/lang/String;
    .end local v4    # "lConfUrl":Ljava/lang/String;
    .end local v6    # "lResponseText":Ljava/lang/String;
    .end local v8    # "lServerConfig":Lorg/json/JSONObject;
    .end local v9    # "lTryIntervalIndex":I
    .end local v12    # "localData":Lorg/json/JSONObject;
    .end local v13    # "postbody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v2

    .line 396
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 363
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v3    # "l304Timetamps":Ljava/lang/String;
    .restart local v4    # "lConfUrl":Ljava/lang/String;
    .restart local v5    # "lData":[B
    .restart local v6    # "lResponseText":Ljava/lang/String;
    .restart local v8    # "lServerConfig":Lorg/json/JSONObject;
    .restart local v9    # "lTryIntervalIndex":I
    .restart local v12    # "localData":Lorg/json/JSONObject;
    .restart local v13    # "postbody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v2

    .line 364
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 368
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    invoke-static {v6}, Lcom/ut/mini/d/m;->a(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v14

    if-eqz v14, :cond_2

    .line 370
    const/4 v14, 0x2

    :try_start_4
    const-string v15, "SyncConfThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "sleep "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/core/e/a/b$a;->c:[I

    move-object/from16 v17, v0

    aget v17, v17, v9

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ms"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/ut/mini/b/a;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ut/mini/core/e/a/b$a;->c:[I

    aget v14, v14, v9

    mul-int/lit16 v14, v14, 0x3e8

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 376
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 377
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ut/mini/core/e/a/b$a;->c:[I

    array-length v14, v14

    if-lt v9, v14, :cond_2

    .line 378
    const/4 v14, 0x2

    const-string v15, "SyncConfThread"

    const-string v16, "try end."

    invoke-static/range {v14 .. v16}, Lcom/ut/mini/b/a;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 373
    :catch_2
    move-exception v2

    .line 374
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 393
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "lData":[B
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ut/mini/core/e/a/b$a;->a:Lcom/ut/mini/core/e/a/b;

    invoke-static {v14}, Lcom/ut/mini/core/e/a/b;->b(Lcom/ut/mini/core/e/a/b;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method
