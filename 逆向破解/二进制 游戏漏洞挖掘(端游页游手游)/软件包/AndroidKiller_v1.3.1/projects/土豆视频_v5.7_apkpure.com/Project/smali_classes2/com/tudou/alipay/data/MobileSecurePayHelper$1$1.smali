.class Lcom/tudou/alipay/data/MobileSecurePayHelper$1$1;
.super Ljava/lang/Object;
.source "MobileSecurePayHelper.java"

# interfaces
.implements Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/alipay/data/MobileSecurePayHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/alipay/data/MobileSecurePayHelper$1;


# direct methods
.method constructor <init>(Lcom/tudou/alipay/data/MobileSecurePayHelper$1;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$1$1;->this$1:Lcom/tudou/alipay/data/MobileSecurePayHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadFail()V
    .locals 4

    .prologue
    .line 99
    iget-object v1, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$1$1;->this$1:Lcom/tudou/alipay/data/MobileSecurePayHelper$1;

    iget-object v1, v1, Lcom/tudou/alipay/data/MobileSecurePayHelper$1;->this$0:Lcom/tudou/alipay/data/MobileSecurePayHelper;

    invoke-static {v1}, Lcom/tudou/alipay/data/MobileSecurePayHelper;->access$000(Lcom/tudou/alipay/data/MobileSecurePayHelper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$1$1;->this$1:Lcom/tudou/alipay/data/MobileSecurePayHelper$1;

    iget-object v3, v3, Lcom/tudou/alipay/data/MobileSecurePayHelper$1;->val$cachePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 100
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$1$1;->this$1:Lcom/tudou/alipay/data/MobileSecurePayHelper$1;

    iget-object v1, v1, Lcom/tudou/alipay/data/MobileSecurePayHelper$1;->this$0:Lcom/tudou/alipay/data/MobileSecurePayHelper;

    invoke-static {v1}, Lcom/tudou/alipay/data/MobileSecurePayHelper;->access$000(Lcom/tudou/alipay/data/MobileSecurePayHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    return-void
.end method

.method public downloadProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 95
    return-void
.end method

.method public downloadSucess()V
    .locals 4

    .prologue
    .line 88
    iget-object v1, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$1$1;->this$1:Lcom/tudou/alipay/data/MobileSecurePayHelper$1;

    iget-object v1, v1, Lcom/tudou/alipay/data/MobileSecurePayHelper$1;->this$0:Lcom/tudou/alipay/data/MobileSecurePayHelper;

    invoke-static {v1}, Lcom/tudou/alipay/data/MobileSecurePayHelper;->access$000(Lcom/tudou/alipay/data/MobileSecurePayHelper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$1$1;->this$1:Lcom/tudou/alipay/data/MobileSecurePayHelper$1;

    iget-object v3, v3, Lcom/tudou/alipay/data/MobileSecurePayHelper$1;->val$downloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 89
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$1$1;->this$1:Lcom/tudou/alipay/data/MobileSecurePayHelper$1;

    iget-object v1, v1, Lcom/tudou/alipay/data/MobileSecurePayHelper$1;->this$0:Lcom/tudou/alipay/data/MobileSecurePayHelper;

    invoke-static {v1}, Lcom/tudou/alipay/data/MobileSecurePayHelper;->access$000(Lcom/tudou/alipay/data/MobileSecurePayHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 90
    return-void
.end method
