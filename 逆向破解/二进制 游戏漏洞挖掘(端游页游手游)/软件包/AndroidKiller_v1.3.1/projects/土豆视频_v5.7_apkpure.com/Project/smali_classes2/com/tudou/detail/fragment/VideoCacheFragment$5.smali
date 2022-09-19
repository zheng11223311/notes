.class Lcom/tudou/detail/fragment/VideoCacheFragment$5;
.super Ljava/lang/Object;
.source "VideoCacheFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoCacheFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 325
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 328
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->showFloatIcon()V

    .line 329
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/CacheActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "cache_tab"

    const-string v2, "caching_tab"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-virtual {v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x1fd

    invoke-static {v1, v0, v2}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 333
    return-void
.end method
