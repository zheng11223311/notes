.class Lcom/mobisage/android/MobiSageApkRunnable;
.super Lcom/mobisage/android/MobiSageRunnable;
.source "MobiSageApkRunnable.java"


# static fields
.field protected static final Max_Cache_Size:I = 0xffff

.field private static flag:I


# instance fields
.field private context:Landroid/content/Context;

.field protected downLoadFileSize:I

.field protected inputStream:Ljava/io/InputStream;

.field private message:Lcom/mobisage/android/MobiSageApkMessage;

.field private notification:Landroid/app/Notification;

.field private notificationManager:Landroid/app/NotificationManager;

.field protected outputStream:Ljava/io/FileOutputStream;

.field private pendingIntent:Landroid/app/PendingIntent;

.field protected reader:Ljava/io/BufferedInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x5

    sput v0, Lcom/mobisage/android/MobiSageApkRunnable;->flag:I

    return-void
.end method

.method public constructor <init>(Lcom/mobisage/android/MobiSageResMessage;)V
    .locals 1
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageResMessage;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageRunnable;-><init>(Lcom/mobisage/android/MobiSageMessage;)V

    .line 39
    iput-object v0, p0, Lcom/mobisage/android/MobiSageApkRunnable;->notificationManager:Landroid/app/NotificationManager;

    .line 40
    iput-object v0, p0, Lcom/mobisage/android/MobiSageApkRunnable;->notification:Landroid/app/Notification;

    .line 50
    return-void
.end method

.method private refreshApkNotification(JJ)V
    .locals 9
    .param p1, "downLength"    # J
    .param p3, "contentLength"    # J

    .prologue
    .line 167
    sget-object v2, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->context:Landroid/content/Context;

    .line 169
    iget-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    check-cast v2, Lcom/mobisage/android/MobiSageApkMessage;

    iput-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->message:Lcom/mobisage/android/MobiSageApkMessage;

    .line 171
    iget-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->context:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->notificationManager:Landroid/app/NotificationManager;

    .line 173
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->context:Landroid/content/Context;

    const-class v3, Lcom/mobisage/android/MobiSageApkService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "did"

    iget-object v3, p0, Lcom/mobisage/android/MobiSageApkRunnable;->message:Lcom/mobisage/android/MobiSageApkMessage;

    iget-object v3, v3, Lcom/mobisage/android/MobiSageApkMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v2, "action"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    const-string v2, "ExtraData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 179
    iget-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageApkRunnable;->message:Lcom/mobisage/android/MobiSageApkMessage;

    iget-object v3, v3, Lcom/mobisage/android/MobiSageApkMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->pendingIntent:Landroid/app/PendingIntent;

    .line 182
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->notification:Landroid/app/Notification;

    .line 183
    iget-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->notification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageApkRunnable;->message:Lcom/mobisage/android/MobiSageApkMessage;

    iget-object v3, v3, Lcom/mobisage/android/MobiSageApkMessage;->apkName:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 184
    iget-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->notification:Landroid/app/Notification;

    const v3, 0x1080081

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 185
    iget-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->notification:Landroid/app/Notification;

    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 186
    iget-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->notification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageApkRunnable;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/mobisage/android/MobiSageApkRunnable;->message:Lcom/mobisage/android/MobiSageApkMessage;

    iget-object v4, v4, Lcom/mobisage/android/MobiSageApkMessage;->apkName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x64

    mul-long/2addr v6, p1

    div-long/2addr v6, p3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%\uff0c\u70b9\u51fb\u53d6\u6d88\u4e0b\u8f7d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mobisage/android/MobiSageApkRunnable;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 188
    iget-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->notificationManager:Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageApkRunnable;->message:Lcom/mobisage/android/MobiSageApkMessage;

    iget-object v3, v3, Lcom/mobisage/android/MobiSageApkMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    iget-object v4, p0, Lcom/mobisage/android/MobiSageApkRunnable;->notification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 190
    return-void
.end method

.method private refreshNotice(JJ)V
    .locals 9
    .param p1, "downl"    # J
    .param p3, "conttentl"    # J

    .prologue
    .line 199
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->context:Landroid/content/Context;

    const-class v3, Lcom/mobisage/android/MobiSageApkService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "did"

    iget-object v3, p0, Lcom/mobisage/android/MobiSageApkRunnable;->message:Lcom/mobisage/android/MobiSageApkMessage;

    iget-object v3, v3, Lcom/mobisage/android/MobiSageApkMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v2, "action"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string v2, "ExtraData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 204
    iget-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageApkRunnable;->message:Lcom/mobisage/android/MobiSageApkMessage;

    iget-object v3, v3, Lcom/mobisage/android/MobiSageApkMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->pendingIntent:Landroid/app/PendingIntent;

    .line 207
    iget-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->notification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageApkRunnable;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/mobisage/android/MobiSageApkRunnable;->message:Lcom/mobisage/android/MobiSageApkMessage;

    iget-object v4, v4, Lcom/mobisage/android/MobiSageApkMessage;->apkName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x64

    mul-long/2addr v6, p1

    div-long/2addr v6, p3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%\uff0c\u70b9\u51fb\u53d6\u6d88\u4e0b\u8f7d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mobisage/android/MobiSageApkRunnable;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 209
    iget-object v2, p0, Lcom/mobisage/android/MobiSageApkRunnable;->notificationManager:Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageApkRunnable;->message:Lcom/mobisage/android/MobiSageApkMessage;

    iget-object v3, v3, Lcom/mobisage/android/MobiSageApkMessage;->messageUUID:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    iget-object v4, p0, Lcom/mobisage/android/MobiSageApkRunnable;->notification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 211
    return-void
.end method


# virtual methods
.method public destoryRunnable()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/mobisage/android/MobiSageRunnable;->destoryRunnable()V

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageApkRunnable;->reader:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/mobisage/android/MobiSageApkRunnable;->reader:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 58
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobisage/android/MobiSageApkRunnable;->reader:Ljava/io/BufferedInputStream;

    .line 59
    iget-object v0, p0, Lcom/mobisage/android/MobiSageApkRunnable;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/mobisage/android/MobiSageApkRunnable;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 61
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobisage/android/MobiSageApkRunnable;->inputStream:Ljava/io/InputStream;

    .line 62
    iget-object v0, p0, Lcom/mobisage/android/MobiSageApkRunnable;->outputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/mobisage/android/MobiSageApkRunnable;->outputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 64
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobisage/android/MobiSageApkRunnable;->outputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 32

    .prologue
    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageApkRunnable;->msg:Lcom/mobisage/android/MobiSageMessage;

    move-object/from16 v20, v0

    check-cast v20, Lcom/mobisage/android/MobiSageResMessage;

    .line 75
    .local v20, "message":Lcom/mobisage/android/MobiSageResMessage;
    :try_start_0
    new-instance v22, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct/range {v22 .. v22}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 76
    .local v22, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v26, Lorg/apache/http/conn/scheme/Scheme;

    const-string v27, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v28

    const/16 v29, 0x50

    invoke-direct/range {v26 .. v29}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 78
    new-instance v26, Lorg/apache/http/conn/scheme/Scheme;

    const-string v27, "https"

    new-instance v28, Lcom/mobisage/android/SNSSSLSocketFactory;

    invoke-direct/range {v28 .. v28}, Lcom/mobisage/android/SNSSSLSocketFactory;-><init>()V

    const/16 v29, 0x1bb

    invoke-direct/range {v26 .. v29}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 80
    new-instance v16, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 81
    .local v16, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string v26, "http.connection.timeout"

    const/16 v27, 0x3a98

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 83
    const-string v26, "http.socket.timeout"

    const/16 v27, 0x3a98

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 84
    sget-object v26, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 85
    const-string v26, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 86
    new-instance v23, Lorg/apache/http/impl/conn/SingleClientConnManager;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 89
    .local v23, "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    new-instance v26, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobisage/android/MobiSageApkRunnable;->client:Lorg/apache/http/client/HttpClient;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageApkRunnable;->client:Lorg/apache/http/client/HttpClient;

    move-object/from16 v26, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mobisage/android/MobiSageResMessage;->createHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v21

    .line 91
    .local v21, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v24

    .line 92
    .local v24, "statusCode":I
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v26, v0

    const-string v27, "StatusCode"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const/16 v26, 0x190

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 95
    const-string v26, "Content-Length"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v13

    .line 97
    .local v13, "headers":[Lorg/apache/http/Header;
    array-length v0, v13

    move/from16 v26, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v26, :cond_0

    .line 156
    sget-object v8, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    .line 157
    .local v8, "context":Landroid/content/Context;
    new-instance v17, Landroid/content/Intent;

    const-class v26, Lcom/mobisage/android/MobiSageApkService;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v8, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v26, v0

    const-string v27, "action"

    const/16 v28, 0x3

    invoke-virtual/range {v26 .. v28}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v26, v0

    const-string v27, "did"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->messageUUID:Ljava/util/UUID;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v26, "ExtraData"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 162
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 164
    .end local v13    # "headers":[Lorg/apache/http/Header;
    .end local v16    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v21    # "response":Lorg/apache/http/HttpResponse;
    .end local v22    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v23    # "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    .end local v24    # "statusCode":I
    :goto_0
    return-void

    .line 101
    .end local v8    # "context":Landroid/content/Context;
    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v13    # "headers":[Lorg/apache/http/Header;
    .restart local v16    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v21    # "response":Lorg/apache/http/HttpResponse;
    .restart local v22    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .restart local v23    # "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    .restart local v24    # "statusCode":I
    :cond_0
    const/16 v26, 0x0

    :try_start_1
    aget-object v26, v13, v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 103
    .local v7, "contentLength":I
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->tempURL:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v25, "tempFile":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v26

    if-nez v26, :cond_1

    .line 106
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->createNewFile()Z

    .line 109
    :cond_1
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->isNeedRange:Ljava/lang/Boolean;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_2

    const/16 v26, 0xce

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    .line 110
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 111
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->createNewFile()Z

    .line 114
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 115
    .local v18, "lastTime":J
    const-wide/16 v10, 0x0

    .line 116
    .local v10, "currentTime":J
    sget v26, Lcom/mobisage/android/MobiSageApkRunnable;->flag:I

    add-int/lit8 v27, v26, 0x1

    sput v27, Lcom/mobisage/android/MobiSageApkRunnable;->flag:I

    sput v26, Lcom/mobisage/android/MobiSageApkRunnable;->flag:I

    .line 117
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v26

    int-to-long v0, v7

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mobisage/android/MobiSageApkRunnable;->refreshApkNotification(JJ)V

    .line 119
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobisage/android/MobiSageApkRunnable;->inputStream:Ljava/io/InputStream;

    .line 120
    new-instance v26, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageApkRunnable;->inputStream:Ljava/io/InputStream;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobisage/android/MobiSageApkRunnable;->reader:Ljava/io/BufferedInputStream;

    .line 121
    new-instance v26, Ljava/io/FileOutputStream;

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobisage/android/MobiSageApkRunnable;->outputStream:Ljava/io/FileOutputStream;

    .line 122
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobisage/android/MobiSageApkRunnable;->downLoadFileSize:I

    .line 123
    const/4 v9, 0x0

    .line 124
    .local v9, "count":I
    const v26, 0xffff

    move/from16 v0, v26

    new-array v6, v0, [B

    .line 125
    .local v6, "buffer":[B
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageApkRunnable;->reader:Ljava/io/BufferedInputStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v9, v0, :cond_4

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageApkRunnable;->outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v6, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 128
    sub-long v26, v10, v18

    const-wide/16 v28, 0x7d0

    cmp-long v26, v26, v28

    if-lez v26, :cond_3

    .line 129
    move-wide/from16 v18, v10

    .line 132
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v26

    int-to-long v0, v7

    move-wide/from16 v28, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/mobisage/android/MobiSageResMessage;->cacheLength:J

    move-wide/from16 v30, v0

    add-long v28, v28, v30

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mobisage/android/MobiSageApkRunnable;->refreshNotice(JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 151
    .end local v6    # "buffer":[B
    .end local v7    # "contentLength":I
    .end local v9    # "count":I
    .end local v10    # "currentTime":J
    .end local v13    # "headers":[Lorg/apache/http/Header;
    .end local v16    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v18    # "lastTime":J
    .end local v21    # "response":Lorg/apache/http/HttpResponse;
    .end local v22    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v23    # "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    .end local v24    # "statusCode":I
    .end local v25    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v12

    .line 152
    .local v12, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    .line 153
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v26, v0

    const-string v27, "StatusCode"

    const/16 v28, 0x190

    invoke-virtual/range {v26 .. v28}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v26, v0

    const-string v27, "ErrorText"

    invoke-virtual {v12}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    sget-object v8, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    .line 157
    .restart local v8    # "context":Landroid/content/Context;
    new-instance v17, Landroid/content/Intent;

    const-class v26, Lcom/mobisage/android/MobiSageApkService;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v8, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .restart local v17    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v26, v0

    const-string v27, "action"

    const/16 v28, 0x3

    invoke-virtual/range {v26 .. v28}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v26, v0

    const-string v27, "did"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->messageUUID:Ljava/util/UUID;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v26, "ExtraData"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 162
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 138
    .end local v8    # "context":Landroid/content/Context;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v6    # "buffer":[B
    .restart local v7    # "contentLength":I
    .restart local v9    # "count":I
    .restart local v10    # "currentTime":J
    .restart local v13    # "headers":[Lorg/apache/http/Header;
    .restart local v16    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v18    # "lastTime":J
    .restart local v21    # "response":Lorg/apache/http/HttpResponse;
    .restart local v22    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .restart local v23    # "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    .restart local v24    # "statusCode":I
    .restart local v25    # "tempFile":Ljava/io/File;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageApkRunnable;->reader:Ljava/io/BufferedInputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedInputStream;->close()V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageApkRunnable;->inputStream:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->close()V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageApkRunnable;->outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V

    .line 142
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 144
    .local v14, "fileLength":J
    int-to-long v0, v7

    move-wide/from16 v26, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/mobisage/android/MobiSageResMessage;->cacheLength:J

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    cmp-long v26, v14, v26

    if-eqz v26, :cond_6

    .line 145
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 146
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v26, v0

    const-string v27, "StatusCode"

    const/16 v28, 0x190

    invoke-virtual/range {v26 .. v28}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    .end local v6    # "buffer":[B
    .end local v7    # "contentLength":I
    .end local v9    # "count":I
    .end local v10    # "currentTime":J
    .end local v13    # "headers":[Lorg/apache/http/Header;
    .end local v14    # "fileLength":J
    .end local v18    # "lastTime":J
    .end local v25    # "tempFile":Ljava/io/File;
    :cond_5
    :goto_2
    sget-object v8, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    .line 157
    .restart local v8    # "context":Landroid/content/Context;
    new-instance v17, Landroid/content/Intent;

    const-class v26, Lcom/mobisage/android/MobiSageApkService;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v8, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .restart local v17    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v26, v0

    const-string v27, "action"

    const/16 v28, 0x3

    invoke-virtual/range {v26 .. v28}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v26, v0

    const-string v27, "did"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->messageUUID:Ljava/util/UUID;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v26, "ExtraData"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 162
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 148
    .end local v8    # "context":Landroid/content/Context;
    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v6    # "buffer":[B
    .restart local v7    # "contentLength":I
    .restart local v9    # "count":I
    .restart local v10    # "currentTime":J
    .restart local v13    # "headers":[Lorg/apache/http/Header;
    .restart local v14    # "fileLength":J
    .restart local v18    # "lastTime":J
    .restart local v25    # "tempFile":Ljava/io/File;
    :cond_6
    :try_start_4
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->targetURL:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v26}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 156
    .end local v6    # "buffer":[B
    .end local v7    # "contentLength":I
    .end local v9    # "count":I
    .end local v10    # "currentTime":J
    .end local v13    # "headers":[Lorg/apache/http/Header;
    .end local v14    # "fileLength":J
    .end local v16    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v18    # "lastTime":J
    .end local v21    # "response":Lorg/apache/http/HttpResponse;
    .end local v22    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v23    # "singleClientConnManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    .end local v24    # "statusCode":I
    .end local v25    # "tempFile":Ljava/io/File;
    :catchall_0
    move-exception v26

    sget-object v8, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    .line 157
    .restart local v8    # "context":Landroid/content/Context;
    new-instance v17, Landroid/content/Intent;

    const-class v27, Lcom/mobisage/android/MobiSageApkService;

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-direct {v0, v8, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .restart local v17    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v27, v0

    const-string v28, "action"

    const/16 v29, 0x3

    invoke-virtual/range {v27 .. v29}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v27, v0

    const-string v28, "did"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->messageUUID:Ljava/util/UUID;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v27, "ExtraData"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mobisage/android/MobiSageResMessage;->result:Landroid/os/Bundle;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 162
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 163
    throw v26
.end method
