.class Lcom/tudou/alipay/data/FileDownloader$1;
.super Ljava/lang/Object;
.source "FileDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/alipay/data/FileDownloader;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/alipay/data/FileDownloader;

.field final synthetic val$output:Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;


# direct methods
.method constructor <init>(Lcom/tudou/alipay/data/FileDownloader;Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tudou/alipay/data/FileDownloader$1;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    iput-object p2, p0, Lcom/tudou/alipay/data/FileDownloader$1;->val$output:Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 98
    sget-object v1, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileDownloader...start:showProgress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/alipay/data/FileDownloader$1;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v5}, Lcom/tudou/alipay/data/FileDownloader;->access$000(Lcom/tudou/alipay/data/FileDownloader;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/tudou/alipay/data/FileDownloader$1;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    new-instance v4, Lcom/tudou/alipay/data/FileFetch;

    iget-object v5, p0, Lcom/tudou/alipay/data/FileDownloader$1;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v5}, Lcom/tudou/alipay/data/FileDownloader;->access$200(Lcom/tudou/alipay/data/FileDownloader;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/alipay/data/FileDownloader$1;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v6}, Lcom/tudou/alipay/data/FileDownloader;->access$300(Lcom/tudou/alipay/data/FileDownloader;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/tudou/alipay/data/FileDownloader$1;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-direct {v4, v5, v6, v7}, Lcom/tudou/alipay/data/FileFetch;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tudou/alipay/data/FileDownloader;)V

    invoke-static {v1, v4}, Lcom/tudou/alipay/data/FileDownloader;->access$102(Lcom/tudou/alipay/data/FileDownloader;Lcom/tudou/alipay/data/FileFetch;)Lcom/tudou/alipay/data/FileFetch;

    .line 101
    const-wide/16 v2, -0x1

    .line 102
    .local v2, "fileLen":J
    iget-object v1, p0, Lcom/tudou/alipay/data/FileDownloader$1;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v1}, Lcom/tudou/alipay/data/FileDownloader;->access$000(Lcom/tudou/alipay/data/FileDownloader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/tudou/alipay/data/FileDownloader$1;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v1}, Lcom/tudou/alipay/data/FileDownloader;->access$400(Lcom/tudou/alipay/data/FileDownloader;)J

    move-result-wide v2

    .line 104
    cmp-long v1, v2, v10

    if-gtz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/tudou/alipay/data/FileDownloader$1;->val$output:Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;

    invoke-virtual {v1, v8}, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->sendEmptyMessage(I)Z

    .line 135
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/tudou/alipay/data/FileDownloader$1;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v1}, Lcom/tudou/alipay/data/FileDownloader;->access$500(Lcom/tudou/alipay/data/FileDownloader;)V

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/tudou/alipay/data/FileDownloader$1;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v1}, Lcom/tudou/alipay/data/FileDownloader;->access$000(Lcom/tudou/alipay/data/FileDownloader;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/tudou/alipay/data/FileDownloader$1;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v1}, Lcom/tudou/alipay/data/FileDownloader;->access$600(Lcom/tudou/alipay/data/FileDownloader;)V

    .line 113
    iget-object v1, p0, Lcom/tudou/alipay/data/FileDownloader$1;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v1}, Lcom/tudou/alipay/data/FileDownloader;->access$100(Lcom/tudou/alipay/data/FileDownloader;)Lcom/tudou/alipay/data/FileFetch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/alipay/data/FileFetch;->getFileEnd()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/tudou/alipay/data/FileDownloader$1;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v1}, Lcom/tudou/alipay/data/FileDownloader;->access$500(Lcom/tudou/alipay/data/FileDownloader;)V

    .line 115
    iget-object v1, p0, Lcom/tudou/alipay/data/FileDownloader$1;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v1}, Lcom/tudou/alipay/data/FileDownloader;->access$100(Lcom/tudou/alipay/data/FileDownloader;)Lcom/tudou/alipay/data/FileFetch;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/tudou/alipay/data/FileFetch;->setFileStart(J)V

    .line 116
    iget-object v1, p0, Lcom/tudou/alipay/data/FileDownloader$1;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v1}, Lcom/tudou/alipay/data/FileDownloader;->access$100(Lcom/tudou/alipay/data/FileDownloader;)Lcom/tudou/alipay/data/FileFetch;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/tudou/alipay/data/FileFetch;->setFileEnd(J)V

    .line 119
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/tudou/alipay/data/FileDownloader$1;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v4}, Lcom/tudou/alipay/data/FileDownloader;->access$100(Lcom/tudou/alipay/data/FileDownloader;)Lcom/tudou/alipay/data/FileFetch;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 121
    :goto_1
    iget-object v1, p0, Lcom/tudou/alipay/data/FileDownloader$1;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v1}, Lcom/tudou/alipay/data/FileDownloader;->access$100(Lcom/tudou/alipay/data/FileDownloader;)Lcom/tudou/alipay/data/FileFetch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/alipay/data/FileFetch;->isStop()Z

    move-result v1

    if-nez v1, :cond_3

    .line 122
    sget-object v1, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v4, "FileDownloader...while (!fetch.isStop())Thread.sleep(1500);"

    invoke-static {v1, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-wide/16 v4, 0x5dc

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 130
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v1, p0, Lcom/tudou/alipay/data/FileDownloader$1;->val$output:Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;

    iget-object v4, p0, Lcom/tudou/alipay/data/FileDownloader$1;->this$0:Lcom/tudou/alipay/data/FileDownloader;

    invoke-static {v4}, Lcom/tudou/alipay/data/FileDownloader;->access$100(Lcom/tudou/alipay/data/FileDownloader;)Lcom/tudou/alipay/data/FileFetch;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tudou/alipay/data/FileFetch;->isFinished()Z

    move-result v4

    invoke-static {v1, v4}, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->access$702(Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;Z)Z

    .line 132
    sget-object v1, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new Thread(fetch).end......output.isFinished:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/alipay/data/FileDownloader$1;->val$output:Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;

    invoke-static {v5}, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->access$700(Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/tudou/alipay/data/FileDownloader$1;->val$output:Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;

    invoke-virtual {v1, v8}, Lcom/tudou/alipay/data/FileDownloader$ProgressOutput;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
