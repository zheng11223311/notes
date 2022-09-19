.class Lcom/tudou/ui/fragment/CachingFragment$18;
.super Ljava/lang/Object;
.source "CachingFragment.java"

# interfaces
.implements Lcom/tudou/service/download/OnChangeListener;


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
    .line 652
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFragment$18;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$18;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFragment;->isEdit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$18;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-virtual {v0, p1}, Lcom/tudou/ui/fragment/CachingFragment;->setUpdate(Lcom/tudou/service/download/DownloadInfo;)V

    .line 664
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 656
    const-string v0, "dazhu_cachingFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    return-void
.end method
