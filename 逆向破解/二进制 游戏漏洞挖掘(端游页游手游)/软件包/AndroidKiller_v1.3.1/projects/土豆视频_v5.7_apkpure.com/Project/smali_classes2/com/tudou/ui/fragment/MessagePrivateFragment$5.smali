.class Lcom/tudou/ui/fragment/MessagePrivateFragment$5;
.super Ljava/lang/Object;
.source "MessagePrivateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MessagePrivateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessagePrivateFragment;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$5;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 282
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 289
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$5;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$5;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->access$1000(Lcom/tudou/ui/fragment/MessagePrivateFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 288
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment$5;->this$0:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_0
.end method
