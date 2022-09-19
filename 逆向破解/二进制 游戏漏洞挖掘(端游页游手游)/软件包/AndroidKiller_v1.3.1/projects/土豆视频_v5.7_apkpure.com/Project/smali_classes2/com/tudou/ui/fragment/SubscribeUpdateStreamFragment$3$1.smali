.class Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3$1;
.super Ljava/lang/Object;
.source "SubscribeUpdateStreamFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3$1;->this$1:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 428
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 437
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3$1;->this$1:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 434
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 435
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3$1;->this$1:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3$1;->this$1:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_0
.end method
