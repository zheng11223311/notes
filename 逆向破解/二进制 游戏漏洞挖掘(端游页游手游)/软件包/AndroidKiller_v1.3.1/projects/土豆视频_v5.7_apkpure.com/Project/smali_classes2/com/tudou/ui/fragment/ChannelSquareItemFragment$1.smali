.class Lcom/tudou/ui/fragment/ChannelSquareItemFragment$1;
.super Ljava/lang/Object;
.source "ChannelSquareItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->setNoContentTips(Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$1;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;

    .line 157
    .local v0, "tips":Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;
    sget-object v1, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$6;->$SwitchMap$com$tudou$ui$fragment$ChannelSquareItemFragment$NoContentTips:[I

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 159
    :pswitch_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$1;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$000(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$1;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$100(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 165
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$1;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$202(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;I)I

    .line 166
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$1;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$300(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
