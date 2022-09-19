.class Lcom/tudou/ui/fragment/CachingFragment$2;
.super Ljava/lang/Object;
.source "CachingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CachingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CachingFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFragment;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 291
    const-string v0, "cache"

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_2

    .line 295
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 298
    :cond_2
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->canUse3GDownload()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    const v0, 0x7f0d0115

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 302
    :cond_3
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->canUse3GDownload()Z

    move-result v0

    if-nez v0, :cond_4

    .line 304
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFragment;->show2G3GDialog()V

    goto :goto_0

    .line 307
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFragment;->access$200(Lcom/tudou/ui/fragment/CachingFragment;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$2;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFragment;->access$300(Lcom/tudou/ui/fragment/CachingFragment;)V

    goto :goto_0
.end method
