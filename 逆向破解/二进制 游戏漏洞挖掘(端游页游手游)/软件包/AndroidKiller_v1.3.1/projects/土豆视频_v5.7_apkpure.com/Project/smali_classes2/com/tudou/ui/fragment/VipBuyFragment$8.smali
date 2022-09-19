.class Lcom/tudou/ui/fragment/VipBuyFragment$8;
.super Ljava/lang/Object;
.source "VipBuyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/VipBuyFragment;->setVipInfoData(Lcom/youku/vo/ListVipPayInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

.field final synthetic val$info:Lcom/youku/vo/ListVipPayInfo;

.field final synthetic val$pi:Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/VipBuyFragment;Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;Lcom/youku/vo/ListVipPayInfo;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$8;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/VipBuyFragment$8;->val$pi:Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

    iput-object p3, p0, Lcom/tudou/ui/fragment/VipBuyFragment$8;->val$info:Lcom/youku/vo/ListVipPayInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 300
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 325
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$8;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/VipBuyFragment$8;->val$pi:Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$902(Lcom/tudou/ui/fragment/VipBuyFragment;Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;)Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

    .line 306
    iget-object v2, p0, Lcom/tudou/ui/fragment/VipBuyFragment$8;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$8;->val$info:Lcom/youku/vo/ListVipPayInfo;

    iget-object v1, v1, Lcom/youku/vo/ListVipPayInfo;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ListVipPayInfo$Result;

    iget-object v1, v1, Lcom/youku/vo/ListVipPayInfo$Result;->vip_id:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$1002(Lcom/tudou/ui/fragment/VipBuyFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    const-string v2, "\u4f1a\u5458\u8be6\u60c5\u9875\u8d2d\u4e70\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/VipBuyActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u4f1a\u5458\u8be6\u60c5\u9875\u8d2d\u4e70\u6309\u94ae"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VipDetail|Buy&Key="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment$8;->val$pi:Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

    iget-object v5, v5, Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;->sale_price:Ljava/lang/String;

    invoke-static {v5}, Lcom/tudou/ui/fragment/VipBuyFragment;->convertPriceYuan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "&"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/tudou/ui/fragment/VipBuyFragment$8;->val$pi:Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;

    iget-object v5, v5, Lcom/youku/vo/ListVipPayInfo$Result$PriceInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "&"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$8;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$1100(Lcom/tudou/ui/fragment/VipBuyFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u7eed\u8d39"

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$8;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-virtual {v1, v6}, Lcom/tudou/ui/fragment/VipBuyFragment;->showVipBuyDialog(Z)V

    goto :goto_0

    .line 309
    :cond_1
    const-string v1, "\u9996\u6b21"

    goto :goto_1

    .line 317
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 318
    .local v0, "goLoginIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$8;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/VipBuyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 320
    const-string v1, "TAG"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$8;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/VipBuyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
