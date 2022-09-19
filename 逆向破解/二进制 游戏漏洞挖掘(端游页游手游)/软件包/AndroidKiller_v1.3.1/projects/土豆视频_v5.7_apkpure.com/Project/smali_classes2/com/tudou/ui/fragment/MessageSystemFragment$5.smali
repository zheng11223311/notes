.class Lcom/tudou/ui/fragment/MessageSystemFragment$5;
.super Ljava/lang/Object;
.source "MessageSystemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MessageSystemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessageSystemFragment;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$5;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$5;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MessageSystemFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$5;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageSystemFragment;->access$600(Lcom/tudou/ui/fragment/MessageSystemFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 233
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$5;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MessageSystemFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_0
.end method
