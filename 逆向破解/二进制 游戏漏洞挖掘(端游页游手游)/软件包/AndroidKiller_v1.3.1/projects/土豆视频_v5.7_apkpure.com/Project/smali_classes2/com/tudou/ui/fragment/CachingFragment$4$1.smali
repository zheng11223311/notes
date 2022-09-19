.class Lcom/tudou/ui/fragment/CachingFragment$4$1;
.super Ljava/lang/Thread;
.source "CachingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CachingFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/CachingFragment$4;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFragment$4;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFragment$4$1;->this$1:Lcom/tudou/ui/fragment/CachingFragment$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 350
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 351
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$4$1;->this$1:Lcom/tudou/ui/fragment/CachingFragment$4;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CachingFragment$4;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFragment;->access$400(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->pauseAllTask(Z)V

    .line 352
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$4$1;->this$1:Lcom/tudou/ui/fragment/CachingFragment$4;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CachingFragment$4;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CachingFragment;->onAllFinish:Lcom/tudou/ui/fragment/CachingFragment$OnAllPauseOrStartFinish;

    invoke-interface {v0}, Lcom/tudou/ui/fragment/CachingFragment$OnAllPauseOrStartFinish;->onFinish()V

    .line 353
    return-void
.end method
