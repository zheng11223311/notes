.class Lcom/tudou/ui/fragment/VideoRecommendFragment$1;
.super Landroid/os/Handler;
.source "VideoRecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/VideoRecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/VideoRecommendFragment;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$1;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$1;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->access$100(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$1;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->access$000(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 79
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$1;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->access$000(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$1;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->access$100(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$1;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->access$100(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$1;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->access$200(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_1
    :goto_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$1;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->access$200(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$1;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->access$300(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Lcom/tudou/adapter/VideoRecommendAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/VideoRecommendAdapter;->notifyDataSetChanged()V

    .line 87
    sget-boolean v0, Lcom/tudou/android/Youku;->isApp_market_control:Z

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$1;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->access$400(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 94
    :pswitch_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 95
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment$1;->this$0:Lcom/tudou/ui/fragment/VideoRecommendFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->access$200(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    const-string v0, "\u83b7\u53d6\u4fe1\u606f\u5931\u8d25!!"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
