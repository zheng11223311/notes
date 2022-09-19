.class public Lio/rong/push/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/push/PushService$PushHandler;,
        Lio/rong/push/PushService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final IP_EXPIRE_TIME:J = 0x6ddd00L

.field private static final TAG:Ljava/lang/String; = "PushService"

.field private static mPushHandler:Lio/rong/push/PushService$PushHandler;

.field private static runnable:Ljava/lang/Runnable;


# instance fields
.field private volatile mServiceHandler:Lio/rong/push/PushService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lio/rong/push/PushService$1;

    invoke-direct {v0}, Lio/rong/push/PushService$1;-><init>()V

    sput-object v0, Lio/rong/push/PushService;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 241
    return-void
.end method

.method static synthetic access$000()Lio/rong/push/PushService$PushHandler;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lio/rong/push/PushService;->mPushHandler:Lio/rong/push/PushService$PushHandler;

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/push/PushService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/rong/push/PushService;

    .prologue
    .line 70
    invoke-direct {p0}, Lio/rong/push/PushService;->getNavigationAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lio/rong/push/PushService;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lio/rong/push/PushService;)Lio/rong/push/PushService$ServiceHandler;
    .locals 1
    .param p0, "x0"    # Lio/rong/push/PushService;

    .prologue
    .line 70
    iget-object v0, p0, Lio/rong/push/PushService;->mServiceHandler:Lio/rong/push/PushService$ServiceHandler;

    return-object v0
.end method

.method private getNavigationAddress()Ljava/lang/String;
    .locals 10

    .prologue
    .line 165
    const-string v6, "RongPush"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lio/rong/push/PushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 166
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v6, "navigation_ip_value"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "ip":Ljava/lang/String;
    const-string v6, "navigation_time"

    const-wide/16 v8, -0x1

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 168
    .local v4, "lastTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 170
    .local v0, "currentTime":J
    const-string v6, "getNavigationAddress."

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ip:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-wide/32 v6, 0x6ddd00

    add-long/2addr v6, v4

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 173
    :cond_0
    :try_start_0
    invoke-static {p0}, Lio/rong/common/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lio/rong/push/PushService;->getNavigationAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 177
    :cond_1
    :goto_0
    return-object v2

    .line 174
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private saveNavigationInfo(Ljava/lang/String;J)V
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 234
    const-string v2, "RongPush"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lio/rong/push/PushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 235
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 236
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "navigation_ip_value"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 237
    const-string v2, "navigation_time"

    invoke-interface {v0, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 238
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 239
    return-void
.end method


# virtual methods
.method public getNavigationAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 181
    const/4 v6, 0x0

    .line 182
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const/4 v12, 0x0

    .line 183
    .local v12, "responseStream":Ljava/io/BufferedInputStream;
    const-string v4, ""

    .line 185
    .local v4, "address":Ljava/lang/String;
    :try_start_0
    new-instance v15, Ljava/net/URL;

    const-string v17, "http://nav.cn.ronghub.com/navipush.json"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 187
    .local v15, "url":Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 188
    const/16 v17, 0x7530

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 189
    const/16 v17, 0x7530

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 190
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 191
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 193
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 194
    const-string v17, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 196
    .local v8, "os":Ljava/io/OutputStream;
    new-instance v16, Ljava/io/BufferedWriter;

    new-instance v17, Ljava/io/OutputStreamWriter;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct/range {v16 .. v17}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 197
    .local v16, "writer":Ljava/io/BufferedWriter;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "deviceId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 198
    .local v9, "param":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedWriter;->flush()V

    .line 200
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedWriter;->close()V

    .line 201
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 203
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 205
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v12    # "responseStream":Ljava/io/BufferedInputStream;
    .local v13, "responseStream":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    const/16 v17, 0x100

    move/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 208
    .local v10, "responseData":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    .local v5, "c":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_2

    .line 209
    invoke-virtual {v10, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 219
    .end local v5    # "c":I
    .end local v10    # "responseData":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v7

    move-object v12, v13

    .line 220
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "param":Ljava/lang/String;
    .end local v13    # "responseStream":Ljava/io/BufferedInputStream;
    .end local v15    # "url":Ljava/net/URL;
    .end local v16    # "writer":Ljava/io/BufferedWriter;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v12    # "responseStream":Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    if-eqz v12, :cond_0

    .line 223
    :try_start_3
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 225
    :cond_0
    :goto_2
    if-eqz v6, :cond_1

    instance-of v0, v6, Ljava/net/HttpURLConnection;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 226
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 230
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-object v4

    .line 212
    .end local v12    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "c":I
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "param":Ljava/lang/String;
    .restart local v10    # "responseData":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "url":Ljava/net/URL;
    .restart local v16    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    :try_start_4
    new-instance v11, Lorg/json/JSONObject;

    const-string v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    .local v11, "responseDict":Lorg/json/JSONObject;
    const-string v17, "code"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "200"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    .line 214
    .local v14, "success":Z
    if-eqz v14, :cond_3

    .line 215
    const-string/jumbo v17, "server"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 216
    const-string v17, "getNavigationAddress."

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "address:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v4, v1, v2}, Lio/rong/push/PushService;->saveNavigationInfo(Ljava/lang/String;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 222
    :cond_3
    if-eqz v13, :cond_4

    .line 223
    :try_start_5
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 225
    :cond_4
    :goto_4
    if-eqz v6, :cond_7

    instance-of v0, v6, Ljava/net/HttpURLConnection;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 226
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v12, v13

    .end local v13    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v12    # "responseStream":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 222
    .end local v5    # "c":I
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "param":Ljava/lang/String;
    .end local v10    # "responseData":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "responseDict":Lorg/json/JSONObject;
    .end local v14    # "success":Z
    .end local v15    # "url":Ljava/net/URL;
    .end local v16    # "writer":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v17

    :goto_5
    if-eqz v12, :cond_5

    .line 223
    :try_start_6
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 225
    :cond_5
    :goto_6
    if-eqz v6, :cond_6

    instance-of v0, v6, Ljava/net/HttpURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 226
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v17

    .line 223
    .end local v12    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "c":I
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "param":Ljava/lang/String;
    .restart local v10    # "responseData":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "responseDict":Lorg/json/JSONObject;
    .restart local v13    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "success":Z
    .restart local v15    # "url":Ljava/net/URL;
    .restart local v16    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v17

    goto :goto_4

    .end local v5    # "c":I
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "param":Ljava/lang/String;
    .end local v10    # "responseData":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "responseDict":Lorg/json/JSONObject;
    .end local v13    # "responseStream":Ljava/io/BufferedInputStream;
    .end local v14    # "success":Z
    .end local v15    # "url":Ljava/net/URL;
    .end local v16    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "e":Ljava/lang/Exception;
    .restart local v12    # "responseStream":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v17

    goto/16 :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v18

    goto :goto_6

    .line 222
    .end local v12    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "param":Ljava/lang/String;
    .restart local v13    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "url":Ljava/net/URL;
    .restart local v16    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v17

    move-object v12, v13

    .end local v13    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v12    # "responseStream":Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 219
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "param":Ljava/lang/String;
    .end local v15    # "url":Ljava/net/URL;
    .end local v16    # "writer":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v7

    goto/16 :goto_1

    .end local v12    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "c":I
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "param":Ljava/lang/String;
    .restart local v10    # "responseData":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "responseDict":Lorg/json/JSONObject;
    .restart local v13    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "success":Z
    .restart local v15    # "url":Ljava/net/URL;
    .restart local v16    # "writer":Ljava/io/BufferedWriter;
    :cond_7
    move-object v12, v13

    .end local v13    # "responseStream":Ljava/io/BufferedInputStream;
    .restart local v12    # "responseStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 139
    const-class v1, Lio/rong/push/PushService;

    const-string v2, "PushService"

    const-string v3, "PushService OnCreate"

    invoke-static {v1, v2, v3}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v1, "PushService"

    const-string v2, "PushService OnCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v1, Lio/rong/push/PushService$PushHandler;

    invoke-direct {v1, p0, p0}, Lio/rong/push/PushService$PushHandler;-><init>(Lio/rong/push/PushService;Landroid/content/Context;)V

    sput-object v1, Lio/rong/push/PushService;->mPushHandler:Lio/rong/push/PushService$PushHandler;

    .line 144
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IntentService[PushService]"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 147
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lio/rong/push/PushService;->mServiceLooper:Landroid/os/Looper;

    .line 148
    new-instance v1, Lio/rong/push/PushService$ServiceHandler;

    iget-object v2, p0, Lio/rong/push/PushService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lio/rong/push/PushService$ServiceHandler;-><init>(Lio/rong/push/PushService;Landroid/os/Looper;)V

    iput-object v1, p0, Lio/rong/push/PushService;->mServiceHandler:Lio/rong/push/PushService$ServiceHandler;

    .line 150
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 154
    const-string v0, "PushService"

    const-string v1, " !!!!!!! Service is destroyed!!!!!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v0, Lio/rong/push/PushService;->mPushHandler:Lio/rong/push/PushService$PushHandler;

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lio/rong/push/PushService;->mPushHandler:Lio/rong/push/PushService$PushHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/rong/push/PushService$PushHandler;->disConnect(Landroid/content/Intent;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lio/rong/push/PushService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 160
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/push/PushContext;->cancelHeartbeat()V

    .line 161
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 162
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 115
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "io.rong.push.Connect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/push/PushContext;->getRunningPushServiceVersion()Lio/rong/imlib/model/AppVersion;

    move-result-object v0

    if-nez v0, :cond_2

    .line 120
    const-string v0, "CONNECT_CHECK"

    const-string v1, "getRunningPushServiceVersion null"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v0, Lio/rong/push/PushService;->mPushHandler:Lio/rong/push/PushService$PushHandler;

    invoke-virtual {v0, p1}, Lio/rong/push/PushService$PushHandler;->connect(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    :cond_2
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/push/PushContext;->getCurrentVersion()Lio/rong/imlib/model/AppVersion;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/push/PushContext;->getRunningPushServiceVersion()Lio/rong/imlib/model/AppVersion;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/push/PushContext;->getRunningPushServiceVersion()Lio/rong/imlib/model/AppVersion;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/AppVersion;->getPushVersionCode()I

    move-result v0

    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/push/PushContext;->getCurrentVersion()Lio/rong/imlib/model/AppVersion;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/AppVersion;->getPushVersionCode()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 123
    const-string v0, "CONNECT_CHECK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/push/PushContext;->getCurrentVersion()Lio/rong/imlib/model/AppVersion;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/model/AppVersion;->getPushVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/push/PushContext;->getRunningPushServiceVersion()Lio/rong/imlib/model/AppVersion;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/model/AppVersion;->getPushVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v0, Lio/rong/push/PushService;->mPushHandler:Lio/rong/push/PushService$PushHandler;

    invoke-virtual {v0, p1}, Lio/rong/push/PushService$PushHandler;->connect(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 126
    :cond_3
    invoke-static {p1}, Lio/rong/push/PushReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 128
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "io.rong.push.HeartBeat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    sget-object v0, Lio/rong/push/PushService;->mPushHandler:Lio/rong/push/PushService$PushHandler;

    invoke-virtual {v0, p1}, Lio/rong/push/PushService$PushHandler;->heartbeat(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 130
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "io.rong.push.Disconnect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lio/rong/push/PushService;->mPushHandler:Lio/rong/push/PushService$PushHandler;

    invoke-virtual {v0, p1}, Lio/rong/push/PushService$PushHandler;->disConnect(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 100
    iget-object v1, p0, Lio/rong/push/PushService;->mServiceHandler:Lio/rong/push/PushService$ServiceHandler;

    invoke-virtual {v1}, Lio/rong/push/PushService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 101
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 102
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lio/rong/push/PushService;->mServiceHandler:Lio/rong/push/PushService$ServiceHandler;

    invoke-virtual {v1, v0}, Lio/rong/push/PushService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    const/4 v1, 0x1

    return v1
.end method
