.class Lcom/tudou/ui/fragment/ClassifyFeatureFragment$1;
.super Landroid/os/Handler;
.source "ClassifyFeatureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/ClassifyFeatureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 80
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$000(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 70
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/ChannelListV5;

    invoke-static {v2, v0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$200(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;Lcom/youku/vo/ChannelListV5;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$102(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;Ljava/util/List;)Ljava/util/List;

    .line 71
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$300(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$300(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$400(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)V

    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyFeatureFragment;->access$000(Lcom/tudou/ui/fragment/ClassifyFeatureFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x271b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
