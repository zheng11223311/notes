.class Lcom/tudou/ui/fragment/CachingFragment$3;
.super Ljava/lang/Thread;
.source "CachingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CachingFragment;->allStartThread()V
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
    .line 321
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFragment$3;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 325
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$3;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFragment;->access$400(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->startAllTask()V

    .line 326
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$3;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CachingFragment;->onAllFinish:Lcom/tudou/ui/fragment/CachingFragment$OnAllPauseOrStartFinish;

    invoke-interface {v0}, Lcom/tudou/ui/fragment/CachingFragment$OnAllPauseOrStartFinish;->onFinish()V

    .line 327
    return-void
.end method
