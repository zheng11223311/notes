.class Lcom/tudou/ui/fragment/VipBuyFragment$11;
.super Ljava/util/TimerTask;
.source "VipBuyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/VipBuyFragment;->startRequestTradeSchedule()V
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
    .line 581
    iput-object p1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$11;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 584
    invoke-static {}, Lcom/tudou/alipay/PayManager;->getInstance()Lcom/tudou/alipay/PayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$11;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/VipBuyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/VipBuyFragment$11;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$1200(Lcom/tudou/ui/fragment/VipBuyFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->getLastTradeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tudou/alipay/PayManager;->doRequestTrade(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)V

    .line 586
    return-void
.end method
