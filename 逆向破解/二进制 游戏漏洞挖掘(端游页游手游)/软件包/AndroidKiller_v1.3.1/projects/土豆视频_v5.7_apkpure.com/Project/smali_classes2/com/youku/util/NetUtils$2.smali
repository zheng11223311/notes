.class final Lcom/youku/util/NetUtils$2;
.super Ljava/lang/Object;
.source "NetUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/util/NetUtils;->performDownLoadPic(Landroid/os/Handler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aHandler:Landroid/os/Handler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/youku/util/NetUtils$2;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/youku/util/NetUtils$2;->val$aHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0xc8

    const/16 v11, 0x90

    .line 328
    iget-object v10, p0, Lcom/youku/util/NetUtils$2;->val$url:Ljava/lang/String;

    invoke-static {v10}, Lcom/youku/util/NetUtils;->access$100(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 329
    iget-object v10, p0, Lcom/youku/util/NetUtils$2;->val$aHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const/4 v0, 0x0

    .line 333
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 334
    .local v8, "response":Lorg/apache/http/HttpResponse;
    const/4 v6, 0x0

    .line 335
    .local v6, "method":Lorg/apache/http/client/methods/HttpGet;
    const/4 v1, 0x0

    .line 337
    .local v1, "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    iget-object v10, p0, Lcom/youku/util/NetUtils$2;->val$url:Ljava/lang/String;

    invoke-direct {v7, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    .end local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    .local v7, "method":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 339
    .end local v1    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v2, "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_2
    invoke-static {}, Lcom/youku/util/NetUtils;->access$200()Lorg/apache/http/params/HttpParams;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 344
    invoke-virtual {v2, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 346
    if-eqz v8, :cond_4

    .line 347
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 349
    .local v9, "statusCode":I
    if-ne v9, v12, :cond_3

    .line 350
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 351
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_2

    .line 352
    invoke-static {v4}, Lcom/youku/util/NetUtils;->decodeToBitmap(Lorg/apache/http/HttpEntity;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 353
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 354
    iget-object v10, p0, Lcom/youku/util/NetUtils$2;->val$aHandler:Landroid/os/Handler;

    invoke-virtual {v10}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 355
    .local v5, "message":Landroid/os/Message;
    const/16 v10, 0xc8

    iput v10, v5, Landroid/os/Message;->what:I

    .line 356
    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 357
    iget-object v10, p0, Lcom/youku/util/NetUtils$2;->val$aHandler:Landroid/os/Handler;

    invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 379
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "message":Landroid/os/Message;
    .end local v9    # "statusCode":I
    :goto_1
    if-eqz v7, :cond_6

    .line 380
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 381
    const/4 v6, 0x0

    .end local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    move-object v1, v2

    .end local v2    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto :goto_0

    .line 359
    .end local v1    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v4    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "statusCode":I
    :cond_2
    :try_start_3
    iget-object v10, p0, Lcom/youku/util/NetUtils$2;->val$aHandler:Landroid/os/Handler;

    const/16 v11, 0x90

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 368
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "statusCode":I
    :catch_0
    move-exception v3

    move-object v1, v2

    .end local v2    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v6, v7

    .line 369
    .end local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    .local v3, "e":Ljava/net/SocketTimeoutException;
    .restart local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    :goto_2
    :try_start_4
    iget-object v10, p0, Lcom/youku/util/NetUtils$2;->val$aHandler:Landroid/os/Handler;

    const/16 v11, 0x90

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 379
    if-eqz v6, :cond_0

    .line 380
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 381
    const/4 v6, 0x0

    goto :goto_0

    .line 362
    .end local v1    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3    # "e":Ljava/net/SocketTimeoutException;
    .end local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "statusCode":I
    :cond_3
    :try_start_5
    iget-object v10, p0, Lcom/youku/util/NetUtils$2;->val$aHandler:Landroid/os/Handler;

    const/16 v11, 0x90

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 370
    .end local v9    # "statusCode":I
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v6, v7

    .line 371
    .end local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    .local v3, "e":Ljava/net/SocketException;
    .restart local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    :goto_3
    :try_start_6
    iget-object v10, p0, Lcom/youku/util/NetUtils$2;->val$aHandler:Landroid/os/Handler;

    const/16 v11, 0x90

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 379
    if-eqz v6, :cond_0

    .line 380
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 381
    const/4 v6, 0x0

    goto :goto_0

    .line 366
    .end local v1    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3    # "e":Ljava/net/SocketException;
    .end local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    :cond_4
    :try_start_7
    iget-object v10, p0, Lcom/youku/util/NetUtils$2;->val$aHandler:Landroid/os/Handler;

    const/16 v11, 0x90

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    .line 372
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v6, v7

    .line 373
    .end local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    :goto_4
    :try_start_8
    iget-object v10, p0, Lcom/youku/util/NetUtils$2;->val$aHandler:Landroid/os/Handler;

    const/16 v11, 0x90

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 379
    if-eqz v6, :cond_0

    .line 380
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 381
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 374
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_3
    move-exception v3

    .line 375
    .local v3, "e":Ljava/io/IOException;
    :goto_5
    :try_start_9
    iget-object v10, p0, Lcom/youku/util/NetUtils$2;->val$aHandler:Landroid/os/Handler;

    const/16 v11, 0x90

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 379
    if-eqz v6, :cond_0

    .line 380
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 381
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 376
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 377
    .local v3, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_a
    iget-object v10, p0, Lcom/youku/util/NetUtils$2;->val$aHandler:Landroid/os/Handler;

    const/16 v11, 0x90

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 379
    if-eqz v6, :cond_0

    .line 380
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 381
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 379
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_7
    if-eqz v6, :cond_5

    .line 380
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 381
    const/4 v6, 0x0

    :cond_5
    throw v10

    .line 379
    .end local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_7

    .end local v1    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v6, v7

    .end local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_7

    .line 376
    .end local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    :catch_5
    move-exception v3

    move-object v6, v7

    .end local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_6

    .end local v1    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    :catch_6
    move-exception v3

    move-object v1, v2

    .end local v2    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v6, v7

    .end local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_6

    .line 374
    .end local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    :catch_7
    move-exception v3

    move-object v6, v7

    .end local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_5

    .end local v1    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v6, v7

    .end local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_5

    .line 372
    :catch_9
    move-exception v3

    goto :goto_4

    .end local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    :catch_a
    move-exception v3

    move-object v6, v7

    .end local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_4

    .line 370
    :catch_b
    move-exception v3

    goto :goto_3

    .end local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    :catch_c
    move-exception v3

    move-object v6, v7

    .end local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_3

    .line 368
    :catch_d
    move-exception v3

    goto/16 :goto_2

    .end local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    :catch_e
    move-exception v3

    move-object v6, v7

    .end local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_2

    .end local v1    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    :cond_6
    move-object v1, v2

    .end local v2    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v6, v7

    .end local v7    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_0
.end method
