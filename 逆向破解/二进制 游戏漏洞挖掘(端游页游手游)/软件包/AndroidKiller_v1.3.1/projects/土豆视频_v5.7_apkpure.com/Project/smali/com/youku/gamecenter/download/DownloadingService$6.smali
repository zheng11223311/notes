.class Lcom/youku/gamecenter/download/DownloadingService$6;
.super Lcom/youku/gamecenter/services/YoukuAsyncTask;
.source "DownloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/download/DownloadingService;->downloadIcon(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/youku/gamecenter/services/YoukuAsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/download/DownloadingService;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadingService$6;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    iput-object p2, p0, Lcom/youku/gamecenter/download/DownloadingService$6;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/youku/gamecenter/download/DownloadingService$6;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/youku/gamecenter/services/YoukuAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 17
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 1358
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/youku/gamecenter/download/DownloadingService$6;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v13}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-static {v13, v14}, Lcom/youku/gamecenter/util/FileUtils;->getIconFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1360
    .local v2, "cacheFile":Ljava/io/File;
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "icon file:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  url:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    const/4 v12, 0x0

    .line 1363
    .local v12, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 1365
    .local v7, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    const/4 v13, 0x0

    aget-object v13, p1, v13

    invoke-direct {v11, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1366
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v12, v0

    .line 1367
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    .line 1368
    .local v10, "targetSize":I
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    const/16 v14, 0x2000

    invoke-direct {v6, v13, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1372
    .local v6, "in":Ljava/io/InputStream;
    const v1, 0x14000

    .line 1373
    .local v1, "bufsize":I
    const v13, 0x14000

    new-array v5, v13, [B

    .line 1374
    .local v5, "imgData":[B
    const/4 v9, 0x0

    .line 1375
    .local v9, "readLen":I
    const/4 v3, 0x0

    .line 1377
    .local v3, "downloadSize":I
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v14, 0x2000

    invoke-direct {v8, v13, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .local v8, "out":Ljava/io/BufferedOutputStream;
    :goto_0
    const/4 v13, 0x0

    const v14, 0x14000

    :try_start_1
    invoke-virtual {v6, v5, v13, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    if-lez v9, :cond_0

    .line 1380
    const/4 v13, 0x0

    invoke-virtual {v8, v5, v13, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1381
    add-int/2addr v3, v9

    goto :goto_0

    .line 1383
    :cond_0
    if-ge v3, v10, :cond_4

    .line 1384
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1385
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1386
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v13

    const-string v14, "download icon error"

    invoke-static {v13, v14}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    :cond_1
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    .line 1398
    if-eqz v12, :cond_2

    .line 1399
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1401
    :cond_2
    if-eqz v8, :cond_3

    .line 1403
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1404
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    move-object v7, v8

    .line 1410
    .end local v1    # "bufsize":I
    .end local v3    # "downloadSize":I
    .end local v5    # "imgData":[B
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "out":Ljava/io/BufferedOutputStream;
    .end local v9    # "readLen":I
    .end local v10    # "targetSize":I
    .end local v11    # "url":Ljava/net/URL;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    :goto_2
    return-object v13

    .line 1405
    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bufsize":I
    .restart local v3    # "downloadSize":I
    .restart local v5    # "imgData":[B
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "out":Ljava/io/BufferedOutputStream;
    .restart local v9    # "readLen":I
    .restart local v10    # "targetSize":I
    .restart local v11    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 1406
    .local v4, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error in downloadBitmap - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1390
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v13

    const-string v14, "download icon success"

    invoke-static {v13, v14}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v13

    .line 1398
    if-eqz v12, :cond_5

    .line 1399
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1401
    :cond_5
    if-eqz v8, :cond_6

    .line 1403
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1404
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    :goto_3
    move-object v7, v8

    .line 1407
    .end local v8    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 1405
    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v8    # "out":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v4

    .line 1406
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error in downloadBitmap - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1392
    .end local v1    # "bufsize":I
    .end local v3    # "downloadSize":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "imgData":[B
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "out":Ljava/io/BufferedOutputStream;
    .end local v9    # "readLen":I
    .end local v10    # "targetSize":I
    .end local v11    # "url":Ljava/net/URL;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v4

    .line 1393
    .local v4, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1394
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1396
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1398
    if-eqz v12, :cond_8

    .line 1399
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1401
    :cond_8
    if-eqz v7, :cond_9

    .line 1403
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1404
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1410
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_5
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_2

    .line 1405
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 1406
    .local v4, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error in downloadBitmap - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1398
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_6
    if-eqz v12, :cond_a

    .line 1399
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1401
    :cond_a
    if-eqz v7, :cond_b

    .line 1403
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1404
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1407
    :cond_b
    :goto_7
    throw v13

    .line 1405
    :catch_4
    move-exception v4

    .line 1406
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error in downloadBitmap - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1398
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bufsize":I
    .restart local v3    # "downloadSize":I
    .restart local v5    # "imgData":[B
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "out":Ljava/io/BufferedOutputStream;
    .restart local v9    # "readLen":I
    .restart local v10    # "targetSize":I
    .restart local v11    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_6

    .line 1392
    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v8    # "out":Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v4

    move-object v7, v8

    .end local v8    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1353
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService$6;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 1414
    const/4 v3, 0x0

    const/16 v4, 0x11

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 1416
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1417
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v3, "url"

    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadingService$6;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    const-string v3, "packageName"

    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadingService$6;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1421
    :try_start_0
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$500()Landroid/os/Messenger;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1422
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$500()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1423
    :catch_0
    move-exception v1

    .line 1424
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1353
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService$6;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
