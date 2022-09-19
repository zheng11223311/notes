.class Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$1;
.super Landroid/os/Handler;
.source "ClassifyFeatureInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->access$400(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->access$400(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 94
    :cond_0
    return-void

    .line 81
    :pswitch_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/ChannelFeatureBean;

    invoke-static {v1, v0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->access$002(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;Lcom/youku/vo/ChannelFeatureBean;)Lcom/youku/vo/ChannelFeatureBean;

    .line 82
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->access$100(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->access$200(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->access$300(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    goto :goto_0

    .line 88
    :cond_1
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x2719
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
