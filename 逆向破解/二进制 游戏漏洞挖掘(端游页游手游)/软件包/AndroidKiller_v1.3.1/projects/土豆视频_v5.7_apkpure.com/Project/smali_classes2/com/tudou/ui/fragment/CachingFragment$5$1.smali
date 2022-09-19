.class Lcom/tudou/ui/fragment/CachingFragment$5$1;
.super Ljava/lang/Object;
.source "CachingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CachingFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/CachingFragment$5;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFragment$5;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFragment$5$1;->this$1:Lcom/tudou/ui/fragment/CachingFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 377
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$5$1;->this$1:Lcom/tudou/ui/fragment/CachingFragment$5;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CachingFragment$5;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/CacheFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CacheFragment;->outEditState()V

    .line 378
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$5$1;->this$1:Lcom/tudou/ui/fragment/CachingFragment$5;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CachingFragment$5;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFragment;->access$100(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/tudou/ui/fragment/CachingFragment$CachingHandler;

    move-result-object v0

    const/16 v1, 0x6e

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/tudou/ui/fragment/CachingFragment$CachingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 380
    return-void
.end method
