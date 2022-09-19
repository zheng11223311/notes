.class Lcom/tudou/ui/fragment/MessageDetailFragment$8;
.super Ljava/lang/Object;
.source "MessageDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MessageDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessageDetailFragment;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$8;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 332
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 339
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$8;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$100(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$8;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$500(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 338
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$8;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->access$100(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_0
.end method
