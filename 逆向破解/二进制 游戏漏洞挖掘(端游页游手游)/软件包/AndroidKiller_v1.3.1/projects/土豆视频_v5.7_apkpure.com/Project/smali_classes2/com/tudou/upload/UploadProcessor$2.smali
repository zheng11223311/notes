.class Lcom/tudou/upload/UploadProcessor$2;
.super Ljava/lang/Object;
.source "UploadProcessor.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/upload/UploadProcessor;->uploadGetServerInfoNew()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/upload/UploadProcessor;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$results:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/upload/UploadProcessor;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/tudou/upload/UploadProcessor$2;->this$0:Lcom/tudou/upload/UploadProcessor;

    iput-object p2, p0, Lcom/tudou/upload/UploadProcessor$2;->val$results:[Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/upload/UploadProcessor$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 695
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload info error======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u60a8\u7684\u5bc6\u7801\u5df2\u7ecf\u4fee\u6539\uff0c\u8bf7\u91cd\u65b0\u767b\u9646"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    invoke-static {p1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 702
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v3, 0x0

    .line 686
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$2;->val$results:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 687
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload info return======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor$2;->val$results:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 691
    return-void
.end method
