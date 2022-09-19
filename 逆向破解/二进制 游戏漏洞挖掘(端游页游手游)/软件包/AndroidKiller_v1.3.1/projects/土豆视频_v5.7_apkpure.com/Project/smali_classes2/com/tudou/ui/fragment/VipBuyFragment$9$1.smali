.class Lcom/tudou/ui/fragment/VipBuyFragment$9$1;
.super Ljava/lang/Object;
.source "VipBuyFragment.java"

# interfaces
.implements Lcom/youku/service/login/ILogin$IMembershipCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/VipBuyFragment$9;->onSuccess(Lcom/youku/network/HttpRequestManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/VipBuyFragment$9;

.field final synthetic val$vipInfos:Lcom/youku/vo/ListVipPayInfo;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/VipBuyFragment$9;Lcom/youku/vo/ListVipPayInfo;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$9$1;->this$1:Lcom/tudou/ui/fragment/VipBuyFragment$9;

    iput-object p2, p0, Lcom/tudou/ui/fragment/VipBuyFragment$9$1;->val$vipInfos:Lcom/youku/vo/ListVipPayInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/youku/vo/UserBean;)V
    .locals 3
    .param p1, "bean"    # Lcom/youku/vo/UserBean;

    .prologue
    .line 424
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$9$1;->this$1:Lcom/tudou/ui/fragment/VipBuyFragment$9;

    iget-object v1, v1, Lcom/tudou/ui/fragment/VipBuyFragment$9;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    iget-boolean v2, p1, Lcom/youku/vo/UserBean;->isVip:Z

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$1102(Lcom/tudou/ui/fragment/VipBuyFragment;Z)Z

    .line 425
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 426
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$9$1;->this$1:Lcom/tudou/ui/fragment/VipBuyFragment$9;

    iget-object v1, v1, Lcom/tudou/ui/fragment/VipBuyFragment$9;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    iget-object v2, p1, Lcom/youku/vo/UserBean;->endTime:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$1302(Lcom/tudou/ui/fragment/VipBuyFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 427
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$9$1;->val$vipInfos:Lcom/youku/vo/ListVipPayInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 428
    const v1, 0x186a1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 429
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$9$1;->this$1:Lcom/tudou/ui/fragment/VipBuyFragment$9;

    iget-object v1, v1, Lcom/tudou/ui/fragment/VipBuyFragment$9;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$1200(Lcom/tudou/ui/fragment/VipBuyFragment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$9$1;->this$1:Lcom/tudou/ui/fragment/VipBuyFragment$9;

    iget-object v1, v1, Lcom/tudou/ui/fragment/VipBuyFragment$9;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$1200(Lcom/tudou/ui/fragment/VipBuyFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 431
    :cond_0
    return-void
.end method
