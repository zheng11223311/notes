.class Lcom/tudou/ui/fragment/CachedFragment$3$1;
.super Ljava/lang/Object;
.source "CachedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CachedFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/CachedFragment$3;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachedFragment$3;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachedFragment$3$1;->this$1:Lcom/tudou/ui/fragment/CachedFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 369
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment$3$1;->this$1:Lcom/tudou/ui/fragment/CachedFragment$3;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CachedFragment$3;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachedFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/CacheFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CacheFragment;->outEditState()V

    .line 370
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment$3$1;->this$1:Lcom/tudou/ui/fragment/CachedFragment$3;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CachedFragment$3;->this$0:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachedFragment;->access$100(Lcom/tudou/ui/fragment/CachedFragment;)Lcom/tudou/ui/fragment/CachedFragment$CachedHandler;

    move-result-object v0

    const/16 v1, 0x403

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/tudou/ui/fragment/CachedFragment$CachedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 372
    return-void
.end method
