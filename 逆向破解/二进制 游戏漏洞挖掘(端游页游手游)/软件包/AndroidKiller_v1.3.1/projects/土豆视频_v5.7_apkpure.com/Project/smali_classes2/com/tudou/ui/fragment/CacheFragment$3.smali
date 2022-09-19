.class Lcom/tudou/ui/fragment/CacheFragment$3;
.super Ljava/lang/Object;
.source "CacheFragment.java"

# interfaces
.implements Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CacheFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CacheFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CacheFragment;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "allpause"    # Z

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/tudou/ui/fragment/CacheFragment$3$1;

    invoke-direct {v1, p0, p1}, Lcom/tudou/ui/fragment/CacheFragment$3$1;-><init>(Lcom/tudou/ui/fragment/CacheFragment$3;Z)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
