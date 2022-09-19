.class Lcom/tudou/alipay/data/MobileSecurePayHelper$1;
.super Ljava/lang/Object;
.source "MobileSecurePayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/alipay/data/MobileSecurePayHelper;->detectMobile_sp()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/alipay/data/MobileSecurePayHelper;

.field final synthetic val$cachePath:Ljava/lang/String;

.field final synthetic val$downloadPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/alipay/data/MobileSecurePayHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$1;->this$0:Lcom/tudou/alipay/data/MobileSecurePayHelper;

    iput-object p2, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$1;->val$cachePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$1;->val$downloadPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 76
    iget-object v4, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$1;->this$0:Lcom/tudou/alipay/data/MobileSecurePayHelper;

    iget-object v4, v4, Lcom/tudou/alipay/data/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$1;->val$cachePath:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/tudou/alipay/data/MobileSecurePayHelper;->getApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 77
    .local v0, "apkInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$1;->this$0:Lcom/tudou/alipay/data/MobileSecurePayHelper;

    invoke-virtual {v4, v0}, Lcom/tudou/alipay/data/MobileSecurePayHelper;->checkNewUpdate(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "newApkdlUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 82
    new-instance v1, Lcom/tudou/alipay/data/FileDownloader;

    invoke-direct {v1}, Lcom/tudou/alipay/data/FileDownloader;-><init>()V

    .line 83
    .local v1, "fd":Lcom/tudou/alipay/data/FileDownloader;
    invoke-virtual {v1, v3}, Lcom/tudou/alipay/data/FileDownloader;->setFileUrl(Ljava/lang/String;)V

    .line 84
    iget-object v4, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$1;->val$downloadPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/tudou/alipay/data/FileDownloader;->setSavePath(Ljava/lang/String;)V

    .line 85
    new-instance v4, Lcom/tudou/alipay/data/MobileSecurePayHelper$1$1;

    invoke-direct {v4, p0}, Lcom/tudou/alipay/data/MobileSecurePayHelper$1$1;-><init>(Lcom/tudou/alipay/data/MobileSecurePayHelper$1;)V

    invoke-virtual {v1, v4}, Lcom/tudou/alipay/data/FileDownloader;->setProgressOutput(Lcom/tudou/alipay/data/FileDownloader$IDownloadProgress;)V

    .line 103
    invoke-virtual {v1}, Lcom/tudou/alipay/data/FileDownloader;->start()V

    .line 112
    .end local v1    # "fd":Lcom/tudou/alipay/data/FileDownloader;
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v4, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$1;->this$0:Lcom/tudou/alipay/data/MobileSecurePayHelper;

    invoke-static {v4}, Lcom/tudou/alipay/data/MobileSecurePayHelper;->access$000(Lcom/tudou/alipay/data/MobileSecurePayHelper;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$1;->val$cachePath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 106
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$1;->this$0:Lcom/tudou/alipay/data/MobileSecurePayHelper;

    invoke-static {v4}, Lcom/tudou/alipay/data/MobileSecurePayHelper;->access$000(Lcom/tudou/alipay/data/MobileSecurePayHelper;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
