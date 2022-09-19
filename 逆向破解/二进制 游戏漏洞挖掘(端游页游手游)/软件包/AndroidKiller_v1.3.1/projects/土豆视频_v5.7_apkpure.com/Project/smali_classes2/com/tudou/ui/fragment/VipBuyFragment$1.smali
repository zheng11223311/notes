.class Lcom/tudou/ui/fragment/VipBuyFragment$1;
.super Landroid/os/Handler;
.source "VipBuyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/VipBuyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/VipBuyFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/VipBuyFragment;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$1;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 99
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 134
    :goto_0
    :sswitch_0
    return-void

    .line 101
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/ListVipPayInfo;

    .line 102
    .local v0, "lst":Lcom/youku/vo/ListVipPayInfo;
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$1;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-static {v1, v0}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$000(Lcom/tudou/ui/fragment/VipBuyFragment;Lcom/youku/vo/ListVipPayInfo;)V

    .line 103
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$1;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$100(Lcom/tudou/ui/fragment/VipBuyFragment;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 104
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto :goto_0

    .line 107
    .end local v0    # "lst":Lcom/youku/vo/ListVipPayInfo;
    :sswitch_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$1;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$200(Lcom/tudou/ui/fragment/VipBuyFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    sget-object v2, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 108
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto :goto_0

    .line 112
    :sswitch_3
    sput-boolean v2, Lcom/tudou/ui/fragment/AccountFragment;->isNeedRefresh:Z

    .line 113
    sput-boolean v2, Lcom/tudou/ui/activity/HomePageActivity;->isNeedRefreshMyIcon:Z

    .line 114
    sput-boolean v2, Lcom/tudou/ui/fragment/MyTudouFragment;->mNeedToRefresh:Z

    .line 115
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$1;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$300(Lcom/tudou/ui/fragment/VipBuyFragment;)V

    .line 116
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$1;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    iput-boolean v2, v1, Lcom/tudou/ui/fragment/VipBuyFragment;->isneedfesh:Z

    .line 117
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto :goto_0

    .line 121
    :sswitch_4
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$1;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    iput-boolean v3, v1, Lcom/tudou/ui/fragment/VipBuyFragment;->isneedfesh:Z

    .line 122
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$1;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-virtual {v1, v2}, Lcom/tudou/ui/fragment/VipBuyFragment;->showVipBuyDialog(Z)V

    goto :goto_0

    .line 125
    :sswitch_5
    const-string v1, "\u9ec4\u91d1\u4f1a\u5458\u8d2d\u4e70\u6210\u529f!"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$1;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$400(Lcom/tudou/ui/fragment/VipBuyFragment;)V

    .line 127
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$1;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$500(Lcom/tudou/ui/fragment/VipBuyFragment;)V

    goto :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x44c -> :sswitch_3
        0x44d -> :sswitch_4
        0x186a1 -> :sswitch_1
        0x186a2 -> :sswitch_2
        0x493e3 -> :sswitch_5
        0x493e4 -> :sswitch_0
    .end sparse-switch
.end method
