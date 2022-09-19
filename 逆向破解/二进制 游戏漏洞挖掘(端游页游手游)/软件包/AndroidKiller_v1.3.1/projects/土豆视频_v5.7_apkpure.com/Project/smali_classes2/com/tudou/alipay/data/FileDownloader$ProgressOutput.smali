.class Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;
.super Landroid/os/Handler;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/alipay/data/FileDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressOutput"
.end annotation


# instance fields
.field private isFinished:Z

.field final synthetic this$0:Lcom/tudou/alipay/data/FileDownloader;


# direct methods
.method public constructor <init>(Lcom/tudou/alipay/data/FileDownloader;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 253
    iput-object p1, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    .line 254
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 250
    iput-boolean v0, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->isFinished:Z

    .line 255
    iput-boolean v0, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->isFinished:Z

    .line 256
    return-void
.end method

.method static synthetic access$700(Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->isFinished:Z

    return v0
.end method

.method static synthetic access$702(Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;
    .param p1, "x1"    # Z

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->isFinished:Z

    return p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    .line 260
    iget-object v2, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v2}, Lcom/tudou/alipay/data/FileDownloader;->access$800(Lcom/tudou/alipay/data/FileDownloader;)Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;

    move-result-object v2

    if-nez v2, :cond_1

    .line 261
    iget-object v2, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v2}, Lcom/tudou/alipay/data/FileDownloader;->access$500(Lcom/tudou/alipay/data/FileDownloader;)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const/high16 v1, 0x42480000    # 50.0f

    .line 266
    .local v1, "progress":F
    :try_start_0
    iget-object v2, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v2}, Lcom/tudou/alipay/data/FileDownloader;->access$000(Lcom/tudou/alipay/data/FileDownloader;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 267
    iget-object v2, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v2}, Lcom/tudou/alipay/data/FileDownloader;->access$100(Lcom/tudou/alipay/data/FileDownloader;)Lcom/tudou/alipay/data/FileFetch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/alipay/data/FileFetch;->getFileStart()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v4}, Lcom/tudou/alipay/data/FileDownloader;->access$100(Lcom/tudou/alipay/data/FileDownloader;)Lcom/tudou/alipay/data/FileFetch;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tudou/alipay/data/FileFetch;->getFileEnd()J

    move-result-wide v4

    div-long/2addr v2, v4

    long-to-float v1, v2

    .line 272
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v2}, Lcom/tudou/alipay/data/FileDownloader;->access$100(Lcom/tudou/alipay/data/FileDownloader;)Lcom/tudou/alipay/data/FileFetch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/alipay/data/FileFetch;->isStop()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 274
    sget-object v2, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage..stop......isFinished:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->isFinished:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",progress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    cmpl-float v2, v1, v6

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->isFinished:Z

    if-eqz v2, :cond_4

    .line 277
    iget-object v2, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v2}, Lcom/tudou/alipay/data/FileDownloader;->access$800(Lcom/tudou/alipay/data/FileDownloader;)Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;

    move-result-object v2

    invoke-interface {v2}, Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;->downloadSucess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v2}, Lcom/tudou/alipay/data/FileDownloader;->access$500(Lcom/tudou/alipay/data/FileDownloader;)V

    .line 290
    iget-object v2, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v2}, Lcom/tudou/alipay/data/FileDownloader;->access$800(Lcom/tudou/alipay/data/FileDownloader;)Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;

    move-result-object v2

    invoke-interface {v2}, Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;->downloadFail()V

    .line 291
    sget-object v2, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage...Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v2}, Lcom/tudou/alipay/data/FileDownloader;->access$100(Lcom/tudou/alipay/data/FileDownloader;)Lcom/tudou/alipay/data/FileFetch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/alipay/data/FileFetch;->isStop()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    const/high16 v1, 0x42c80000    # 100.0f

    goto :goto_1

    .line 278
    :cond_4
    cmpl-float v2, v1, v6

    if-lez v2, :cond_5

    .line 279
    iget-object v2, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v2}, Lcom/tudou/alipay/data/FileDownloader;->access$500(Lcom/tudou/alipay/data/FileDownloader;)V

    .line 280
    iget-object v2, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v2}, Lcom/tudou/alipay/data/FileDownloader;->access$800(Lcom/tudou/alipay/data/FileDownloader;)Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;

    move-result-object v2

    invoke-interface {v2}, Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;->downloadFail()V

    goto/16 :goto_0

    .line 281
    :cond_5
    iget-boolean v2, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->isFinished:Z

    if-nez v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v2}, Lcom/tudou/alipay/data/FileDownloader;->access$500(Lcom/tudou/alipay/data/FileDownloader;)V

    .line 283
    iget-object v2, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v2}, Lcom/tudou/alipay/data/FileDownloader;->access$800(Lcom/tudou/alipay/data/FileDownloader;)Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;

    move-result-object v2

    invoke-interface {v2}, Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;->downloadFail()V

    goto/16 :goto_0

    .line 286
    :cond_6
    iget-object v2, p0, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v2}, Lcom/tudou/alipay/data/FileDownloader;->access$800(Lcom/tudou/alipay/data/FileDownloader;)Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;->downloadProgress(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
