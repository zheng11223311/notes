.class Lcom/tudou/ui/fragment/VipBuyFragment$10;
.super Ljava/lang/Object;
.source "VipBuyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/VipBuyFragment;->setTips()V
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
    .line 530
    iput-object p1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$10;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 533
    const-string v1, "\u4f1a\u5458\u8be6\u60c5\u9875\u767b\u9646\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/VipBuyActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u4f1a\u5458\u8be6\u60c5\u9875\u767b\u9646\u6309\u94ae"

    const-string v4, "VipDetail|login"

    invoke-static {v1, v2, v3, v4}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tudou/ui/fragment/VipBuyFragment;->mRefreshKey:Z

    .line 537
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 538
    .local v0, "goLoginIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$10;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/VipBuyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 540
    const-string v1, "TAG"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$10;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/VipBuyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 542
    return-void
.end method
