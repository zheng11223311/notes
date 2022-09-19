.class Lcom/tudou/ui/fragment/DanmuPreviewFragment$4;
.super Ljava/lang/Object;
.source "DanmuPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/DanmuPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$4;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 234
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 236
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$4;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$000(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$4;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$000(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$4;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$600(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x186a2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 247
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$4;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$300(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$4;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$000(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$4;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$000(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$4;->this$0:Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->access$000(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_0
.end method
