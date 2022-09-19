.class Lcom/tudou/detail/fragment/VideoCacheFragment$9;
.super Ljava/lang/Object;
.source "VideoCacheFragment.java"

# interfaces
.implements Lcom/tudou/service/download/OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/fragment/VideoCacheFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCacheFragment;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$9;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 441
    return-void
.end method

.method public onFinish(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$9;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/tudou/detail/fragment/VideoCacheFragment$9$1;

    invoke-direct {v1, p0, p1}, Lcom/tudou/detail/fragment/VideoCacheFragment$9$1;-><init>(Lcom/tudou/detail/fragment/VideoCacheFragment$9;Lcom/tudou/service/download/DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 465
    return-void
.end method
