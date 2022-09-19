.class Lcom/tudou/ui/fragment/CacheFragment$1;
.super Ljava/lang/Object;
.source "CacheFragment.java"

# interfaces
.implements Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;


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
    .line 78
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFragment$1;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(II)V
    .locals 2
    .param p1, "tab"    # I
    .param p2, "count"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$1;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$1;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CacheFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/tudou/ui/fragment/CacheFragment$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/tudou/ui/fragment/CacheFragment$1$1;-><init>(Lcom/tudou/ui/fragment/CacheFragment$1;II)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
