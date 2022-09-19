.class public Lcom/tudou/service/download/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# static fields
.field public static final ACTION_CREATE:Ljava/lang/String; = "create"

.field public static final ACTION_STAER_NEWTASK:Ljava/lang/String; = "startNewTask"

.field public static final KEY_TASKID:Ljava/lang/String; = "taskId"

.field private static final TAG:Ljava/lang/String; = "Download_Service"

.field private static time:J


# instance fields
.field private mBinder:Lcom/tudou/service/download/IDownloadService$Stub;

.field private manager:Lcom/tudou/service/download/DownloadServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tudou/service/download/DownloadService;->time:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    new-instance v0, Lcom/tudou/service/download/DownloadService$1;

    invoke-direct {v0, p0}, Lcom/tudou/service/download/DownloadService$1;-><init>(Lcom/tudou/service/download/DownloadService;)V

    iput-object v0, p0, Lcom/tudou/service/download/DownloadService;->mBinder:Lcom/tudou/service/download/IDownloadService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/download/DownloadService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService;->manager:Lcom/tudou/service/download/DownloadServiceManager;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 222
    const-string v0, "Download_Service"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService;->mBinder:Lcom/tudou/service/download/IDownloadService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 228
    const-string v0, "Download_Service"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "firstToCache"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 230
    invoke-static {}, Lcom/tudou/service/download/DownloadServiceManager;->getInstance()Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/download/DownloadService;->manager:Lcom/tudou/service/download/DownloadServiceManager;

    .line 231
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 232
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 271
    const-string v0, "Download_Service"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService;->manager:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->destroy()V

    .line 273
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 274
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    const/4 v2, 0x2

    .line 259
    :goto_0
    return v2

    .line 239
    :cond_0
    const-string v2, "Download_Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onStartCommand():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v2, "create"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 243
    .local v14, "now":J
    sget-wide v6, Lcom/tudou/service/download/DownloadService;->time:J

    sub-long v6, v14, v6

    const-wide/16 v16, 0x3e8

    cmp-long v2, v6, v16

    if-lez v2, :cond_1

    .line 244
    sput-wide v14, Lcom/tudou/service/download/DownloadService;->time:J

    .line 245
    const-string/jumbo v2, "videoId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "videoId":Ljava/lang/String;
    const-string/jumbo v2, "videoName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "videoName":Ljava/lang/String;
    const-string v2, "format"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 248
    .local v8, "format":I
    const-string v2, "language"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 249
    .local v9, "language":Ljava/lang/String;
    const-string v2, "fromto"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 250
    .local v10, "fromto":Ljava/lang/String;
    const-string/jumbo v2, "showid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 251
    .local v11, "showid":Ljava/lang/String;
    const-string v2, "imgurl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 252
    .local v12, "imgurl":Ljava/lang/String;
    const-string/jumbo v2, "showName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, "showName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/service/download/DownloadService;->manager:Lcom/tudou/service/download/DownloadServiceManager;

    const-string v6, ""

    const-string v7, ""

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/tudou/service/download/DownloadServiceManager;->createDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 255
    .end local v3    # "videoId":Ljava/lang/String;
    .end local v4    # "videoName":Ljava/lang/String;
    .end local v5    # "showName":Ljava/lang/String;
    .end local v8    # "format":I
    .end local v9    # "language":Ljava/lang/String;
    .end local v10    # "fromto":Ljava/lang/String;
    .end local v11    # "showid":Ljava/lang/String;
    .end local v12    # "imgurl":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x2

    goto/16 :goto_0

    .line 256
    .end local v14    # "now":J
    :cond_2
    const-string/jumbo v2, "startNewTask"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/service/download/DownloadService;->manager:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadServiceManager;->startNewTask()V

    .line 259
    :cond_3
    const/4 v2, 0x2

    goto/16 :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 264
    const-string v0, "Download_Service"

    const-string v1, "onTaskRemoved()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService;->manager:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->destroy()V

    .line 266
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 267
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 278
    const-string v0, "Download_Service"

    const-string v1, "onUnbind()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
