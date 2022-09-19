.class Lcom/tudou/detail/fragment/VideoCacheFragment$4;
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
    .line 311
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 314
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$500(Lcom/tudou/detail/fragment/VideoCacheFragment;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$500(Lcom/tudou/detail/fragment/VideoCacheFragment;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$600(Lcom/tudou/detail/fragment/VideoCacheFragment;Lcom/youku/vo/NewVideoDetail;)Z

    goto :goto_0
.end method
