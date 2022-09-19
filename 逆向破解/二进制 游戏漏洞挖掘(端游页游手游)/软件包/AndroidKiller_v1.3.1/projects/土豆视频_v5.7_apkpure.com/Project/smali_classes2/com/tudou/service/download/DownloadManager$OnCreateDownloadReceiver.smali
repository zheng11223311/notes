.class public abstract Lcom/tudou/service/download/DownloadManager$OnCreateDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OnCreateDownloadReceiver"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field final synthetic this$0:Lcom/tudou/service/download/DownloadManager;


# direct methods
.method public constructor <init>(Lcom/tudou/service/download/DownloadManager;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/tudou/service/download/DownloadManager$OnCreateDownloadReceiver;->this$0:Lcom/tudou/service/download/DownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onOneFailed(Ljava/lang/String;)V
.end method

.method public abstract onOneReady(Ljava/lang/String;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 545
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "action":Ljava/lang/String;
    const-string v2, "video_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/service/download/DownloadManager$OnCreateDownloadReceiver;->key:Ljava/lang/String;

    .line 547
    const-string v2, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ONE_READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    iget-object v2, p0, Lcom/tudou/service/download/DownloadManager$OnCreateDownloadReceiver;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/tudou/service/download/DownloadManager$OnCreateDownloadReceiver;->onOneReady(Ljava/lang/String;)V

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    const-string v2, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 552
    const-string v2, "isNeedRefresh"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 554
    .local v1, "value":Z
    invoke-virtual {p0, v1}, Lcom/tudou/service/download/DownloadManager$OnCreateDownloadReceiver;->onfinish(Z)V

    goto :goto_0

    .line 555
    .end local v1    # "value":Z
    :cond_2
    const-string v2, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ONE_FAILED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    iget-object v2, p0, Lcom/tudou/service/download/DownloadManager$OnCreateDownloadReceiver;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/tudou/service/download/DownloadManager$OnCreateDownloadReceiver;->onOneFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract onfinish(Z)V
.end method
