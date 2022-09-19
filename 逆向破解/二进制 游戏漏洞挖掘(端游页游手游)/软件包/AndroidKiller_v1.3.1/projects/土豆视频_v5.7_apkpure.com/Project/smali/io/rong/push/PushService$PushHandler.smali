.class final Lio/rong/push/PushService$PushHandler;
.super Ljava/lang/Object;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PushHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/push/PushService$PushHandler$PushClientListener;,
        Lio/rong/push/PushService$PushHandler$PingSuccessListener;,
        Lio/rong/push/PushService$PushHandler$ClientConnectCallback;
    }
.end annotation


# instance fields
.field isClientConnected:Z

.field mContext:Landroid/content/Context;

.field pushClient:Lio/rong/push/PushClient;

.field final synthetic this$0:Lio/rong/push/PushService;


# direct methods
.method public constructor <init>(Lio/rong/push/PushService;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    iput-object p1, p0, Lio/rong/push/PushService$PushHandler;->this$0:Lio/rong/push/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/push/PushService$PushHandler;->isClientConnected:Z

    .line 247
    iput-object p2, p0, Lio/rong/push/PushService$PushHandler;->mContext:Landroid/content/Context;

    .line 248
    return-void
.end method

.method private NotifyServerPackageUninstalled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 379
    const/4 v2, 0x0

    .line 380
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    .line 382
    .local v8, "responseStream":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    const-string v13, "http://api.cn.ronghub.com/user/offline.json"

    invoke-direct {v11, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 384
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 385
    const/16 v13, 0x7530

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 386
    const/16 v13, 0x7530

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 387
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 388
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 390
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 391
    const-string v13, "POST"

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 393
    .local v4, "os":Ljava/io/OutputStream;
    new-instance v12, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/OutputStreamWriter;

    const-string v14, "UTF-8"

    invoke-direct {v13, v4, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 394
    .local v12, "writer":Ljava/io/BufferedWriter;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "userId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&deviceId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&App-Key="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&packageName="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, "param":Ljava/lang/String;
    invoke-virtual {v12, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->flush()V

    .line 397
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V

    .line 398
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 400
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 402
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    .end local v8    # "responseStream":Ljava/io/BufferedInputStream;
    .local v9, "responseStream":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v13, 0x100

    invoke-direct {v6, v13}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 405
    .local v6, "responseData":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    .local v1, "c":I
    const/4 v13, -0x1

    if-eq v1, v13, :cond_2

    .line 406
    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 414
    .end local v1    # "c":I
    .end local v6    # "responseData":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    move-object v8, v9

    .line 415
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "param":Ljava/lang/String;
    .end local v9    # "responseStream":Ljava/io/BufferedInputStream;
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "writer":Ljava/io/BufferedWriter;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v8    # "responseStream":Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 417
    if-eqz v8, :cond_0

    .line 418
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 420
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    instance-of v13, v2, Ljava/net/HttpURLConnection;

    if-eqz v13, :cond_1

    .line 421
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 425
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-void

    .line 409
    .end local v8    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "c":I
    .restart local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "param":Ljava/lang/String;
    .restart local v6    # "responseData":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "url":Ljava/net/URL;
    .restart local v12    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    :try_start_4
    new-instance v7, Lorg/json/JSONObject;

    const-string v13, "UTF-8"

    invoke-virtual {v6, v13}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 410
    .local v7, "responseDict":Lorg/json/JSONObject;
    const-string v13, "code"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "200"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 411
    .local v10, "success":Z
    if-eqz v10, :cond_3

    .line 412
    const-string v13, "PushService"

    const-string v14, "NotifyServerPackageUninstalled, return 200! "

    invoke-static {p0, v13, v14}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 417
    :cond_3
    if-eqz v9, :cond_4

    .line 418
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 420
    :cond_4
    :goto_4
    if-eqz v2, :cond_7

    instance-of v13, v2, Ljava/net/HttpURLConnection;

    if-eqz v13, :cond_7

    .line 421
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v8, v9

    .end local v9    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "responseStream":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 417
    .end local v1    # "c":I
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "param":Ljava/lang/String;
    .end local v6    # "responseData":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "responseDict":Lorg/json/JSONObject;
    .end local v10    # "success":Z
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "writer":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v13

    :goto_5
    if-eqz v8, :cond_5

    .line 418
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 420
    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    instance-of v14, v2, Ljava/net/HttpURLConnection;

    if-eqz v14, :cond_6

    .line 421
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v13

    .line 418
    .end local v8    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "c":I
    .restart local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "param":Ljava/lang/String;
    .restart local v6    # "responseData":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "responseDict":Lorg/json/JSONObject;
    .restart local v9    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "success":Z
    .restart local v11    # "url":Ljava/net/URL;
    .restart local v12    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v13

    goto :goto_4

    .end local v1    # "c":I
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "param":Ljava/lang/String;
    .end local v6    # "responseData":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "responseDict":Lorg/json/JSONObject;
    .end local v9    # "responseStream":Ljava/io/BufferedInputStream;
    .end local v10    # "success":Z
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "responseStream":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v13

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v14

    goto :goto_6

    .line 417
    .end local v8    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "param":Ljava/lang/String;
    .restart local v9    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "url":Ljava/net/URL;
    .restart local v12    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v13

    move-object v8, v9

    .end local v9    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "responseStream":Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 414
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "param":Ljava/lang/String;
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "writer":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v3

    goto :goto_1

    .end local v8    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "c":I
    .restart local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "param":Ljava/lang/String;
    .restart local v6    # "responseData":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "responseDict":Lorg/json/JSONObject;
    .restart local v9    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "success":Z
    .restart local v11    # "url":Ljava/net/URL;
    .restart local v12    # "writer":Ljava/io/BufferedWriter;
    :cond_7
    move-object v8, v9

    .end local v9    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "responseStream":Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method static synthetic access$700(Lio/rong/push/PushService$PushHandler;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lio/rong/push/PushService$PushHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lio/rong/push/PushService$PushHandler;->parsePushMsgFromJson(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lio/rong/push/PushService$PushHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lio/rong/push/PushService$PushHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-direct {p0, p1, p2, p3, p4}, Lio/rong/push/PushService$PushHandler;->NotifyServerPackageUninstalled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private parsePushMsgFromJson(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p1, "jstr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 501
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 502
    const-string v3, "PushService"

    const-string v4, "parsePushMsgFromJson jstr is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 507
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 509
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "PushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parsePushMsgFromJson.the packageName is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "packageName"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string v3, "receivedTime"

    const-string/jumbo v4, "timestamp"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v3, "objectName"

    const-string v4, "objectName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v3, "packageName"

    const-string v4, "packageName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v3, "appId"

    const-string v4, "appId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v3, "pushData"

    const-string v4, "appData"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v3, "fromUserId"

    const-string v4, "fromUserId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v3, "fromUserName"

    const-string v4, "fromUserName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string/jumbo v3, "title"

    const-string/jumbo v4, "title"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v3, "content"

    const-string v4, "content"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v3, "channelType"

    const-string v4, "channelType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v3, "channelId"

    const-string v4, "channelId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v3, "channelName"

    const-string v4, "channelName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v3, "rc"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 525
    .local v2, "temp":Lorg/json/JSONObject;
    const-string/jumbo v3, "tId"

    const-string/jumbo v4, "tId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v3, "id"

    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v3, "ext"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ext"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 528
    const-string v3, "extra"

    const-string v4, "ext"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_1
    const-string v3, "PushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parsePushMsgFromJson.the tId is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "tId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-object v0
.end method


# virtual methods
.method public connect(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 254
    const-string v0, "PushHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectToServer,isClientConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lio/rong/push/PushService$PushHandler;->isClientConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-class v10, Lio/rong/push/PushService$PushHandler;

    monitor-enter v10

    .line 256
    :try_start_0
    iget-boolean v0, p0, Lio/rong/push/PushService$PushHandler;->isClientConnected:Z

    if-eqz v0, :cond_1

    .line 257
    if-eqz p1, :cond_0

    .line 258
    invoke-static {p1}, Lio/rong/push/PushReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 259
    :cond_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :goto_0
    return-void

    .line 262
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/rong/push/PushService$PushHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/rong/common/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "deviceId":Ljava/lang/String;
    const-string v0, "connect."

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lio/rong/push/PushService$PushHandler;->this$0:Lio/rong/push/PushService;

    invoke-static {v0}, Lio/rong/push/PushService;->access$100(Lio/rong/push/PushService;)Ljava/lang/String;

    move-result-object v9

    .line 266
    .local v9, "navigationIP":Ljava/lang/String;
    const-string v0, "connect."

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "navigationIP:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 268
    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 269
    .local v7, "address":[Ljava/lang/String;
    new-instance v0, Lio/rong/push/PushClient;

    const-string v2, "1"

    const-string v3, ""

    iget-object v4, p0, Lio/rong/push/PushService$PushHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lio/rong/common/DeviceUtils;->getPhoneInformation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lio/rong/push/PushService$PushHandler$PushClientListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lio/rong/push/PushService$PushHandler$PushClientListener;-><init>(Lio/rong/push/PushService$PushHandler;Lio/rong/push/PushService$1;)V

    new-instance v6, Lio/rong/push/PushService$PushHandler$PingSuccessListener;

    const/4 v11, 0x0

    invoke-direct {v6, p0, v11}, Lio/rong/push/PushService$PushHandler$PingSuccessListener;-><init>(Lio/rong/push/PushService$PushHandler;Lio/rong/push/PushService$1;)V

    invoke-direct/range {v0 .. v6}, Lio/rong/push/PushClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/rong/push/PushClient$ClientListener;Lio/rong/push/PushClient$PingSuccessListener;)V

    iput-object v0, p0, Lio/rong/push/PushService$PushHandler;->pushClient:Lio/rong/push/PushClient;

    .line 270
    iget-object v0, p0, Lio/rong/push/PushService$PushHandler;->pushClient:Lio/rong/push/PushClient;

    const/4 v2, 0x0

    aget-object v2, v7, v2

    const/4 v3, 0x1

    aget-object v3, v7, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lio/rong/push/PushService$PushHandler$ClientConnectCallback;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lio/rong/push/PushService$PushHandler$ClientConnectCallback;-><init>(Lio/rong/push/PushService$PushHandler;Lio/rong/push/PushService$1;)V

    invoke-virtual {v0, v2, v3, v4}, Lio/rong/push/PushClient;->connect(Ljava/lang/String;ILio/rong/push/PushClient$ConnectStatusCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 277
    .end local v7    # "address":[Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    .line 278
    :try_start_2
    invoke-static {p1}, Lio/rong/push/PushReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 280
    .end local v1    # "deviceId":Ljava/lang/String;
    .end local v9    # "navigationIP":Ljava/lang/String;
    :cond_3
    :goto_1
    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 272
    :catch_0
    move-exception v8

    .line 273
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/push/PushService$PushHandler;->isClientConnected:Z

    .line 275
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v0

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v2, v3}, Lio/rong/push/PushContext;->startNextHeartbeat(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 277
    if-eqz p1, :cond_3

    .line 278
    :try_start_4
    invoke-static {p1}, Lio/rong/push/PushReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_1

    .line 277
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz p1, :cond_4

    .line 278
    invoke-static {p1}, Lio/rong/push/PushReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public disConnect(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 284
    const-string v0, "PushClient"

    const-string v1, "disConnect"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/push/PushService$PushHandler;->isClientConnected:Z

    .line 286
    iget-object v0, p0, Lio/rong/push/PushService$PushHandler;->pushClient:Lio/rong/push/PushClient;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lio/rong/push/PushService$PushHandler;->pushClient:Lio/rong/push/PushClient;

    invoke-virtual {v0}, Lio/rong/push/PushClient;->disconnectByNormal()V

    .line 289
    :cond_0
    if-eqz p1, :cond_1

    .line 290
    invoke-static {p1}, Lio/rong/push/PushReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 291
    :cond_1
    return-void
.end method

.method public heartbeat(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 303
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/push/PushContext;->validateNeedSyncVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/push/PushContext;->syncVersion()V

    .line 307
    :cond_0
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/push/PushContext;->isNewestVersion()Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/push/PushContext;->cancelHeartbeat()V

    .line 310
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/push/PushContext;->getNewestVersion()Lio/rong/imlib/model/AppVersion;

    move-result-object v1

    .line 312
    .local v1, "version":Lio/rong/imlib/model/AppVersion;
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v2

    iget-object v3, p0, Lio/rong/push/PushService$PushHandler;->this$0:Lio/rong/push/PushService;

    invoke-virtual {v1}, Lio/rong/imlib/model/AppVersion;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/rong/push/PushContext;->sendConnectCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0, p1}, Lio/rong/push/PushService$PushHandler;->disConnect(Landroid/content/Intent;)V

    .line 315
    iget-object v2, p0, Lio/rong/push/PushService$PushHandler;->this$0:Lio/rong/push/PushService;

    invoke-virtual {v2}, Lio/rong/push/PushService;->stopSelf()V

    .line 317
    invoke-static {p1}, Lio/rong/push/PushReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 339
    .end local v1    # "version":Lio/rong/imlib/model/AppVersion;
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v2, p0, Lio/rong/push/PushService$PushHandler;->pushClient:Lio/rong/push/PushClient;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lio/rong/push/PushService$PushHandler;->isClientConnected:Z

    if-eqz v2, :cond_2

    .line 324
    :try_start_0
    iget-object v2, p0, Lio/rong/push/PushService$PushHandler;->pushClient:Lio/rong/push/PushClient;

    invoke-virtual {v2}, Lio/rong/push/PushClient;->ping()V

    .line 325
    iget-object v2, p0, Lio/rong/push/PushService$PushHandler;->this$0:Lio/rong/push/PushService;

    invoke-static {v2}, Lio/rong/push/PushService;->access$600(Lio/rong/push/PushService;)Lio/rong/push/PushService$ServiceHandler;

    move-result-object v2

    invoke-static {}, Lio/rong/push/PushService;->access$500()Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1f40

    invoke-virtual {v2, v3, v4, v5}, Lio/rong/push/PushService$ServiceHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 326
    const-string v2, "PushService"

    const-string v3, "ping."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_1
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v2

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v2, v4, v5}, Lio/rong/push/PushContext;->startNextHeartbeat(J)V

    .line 338
    invoke-static {p1}, Lio/rong/push/PushReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Heartbeat"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v0}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/rong/push/PushService$PushHandler;->isClientConnected:Z

    .line 330
    invoke-virtual {p0, p1}, Lio/rong/push/PushService$PushHandler;->connect(Landroid/content/Intent;)V

    goto :goto_1

    .line 333
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0, p1}, Lio/rong/push/PushService$PushHandler;->connect(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public isClientConnected()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lio/rong/push/PushService$PushHandler;->isClientConnected:Z

    return v0
.end method

.method public setClientConnected(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Lio/rong/push/PushService$PushHandler;->isClientConnected:Z

    .line 299
    return-void
.end method
