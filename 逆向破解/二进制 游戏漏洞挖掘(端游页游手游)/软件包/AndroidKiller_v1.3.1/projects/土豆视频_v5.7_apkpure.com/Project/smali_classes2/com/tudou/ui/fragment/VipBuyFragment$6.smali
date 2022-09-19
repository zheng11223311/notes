.class Lcom/tudou/ui/fragment/VipBuyFragment$6;
.super Ljava/lang/Object;
.source "VipBuyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/VipBuyFragment;->buildView()V
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
    .line 224
    iput-object p1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$6;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 228
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const-string v0, "vip_agreement_dialog"

    const-wide/16 v2, 0x320

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "\u4f1a\u5458\u8be6\u60c5\u9875\u4f1a\u5458\u534f\u8bae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/VipBuyActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4f1a\u5458\u8be6\u60c5\u9875\u4f1a\u5458\u534f\u8bae\u94fe\u63a5"

    const-string v3, "VipDetail|VipAgreement"

    invoke-static {v0, v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment$6;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/VipBuyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tudou/ui/fragment/VipBuyFragment$6;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/VipBuyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/PayAgreementActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
