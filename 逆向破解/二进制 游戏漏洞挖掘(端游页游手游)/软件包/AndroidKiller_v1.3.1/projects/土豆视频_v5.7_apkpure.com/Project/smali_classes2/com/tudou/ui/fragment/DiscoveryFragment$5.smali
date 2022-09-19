.class Lcom/tudou/ui/fragment/DiscoveryFragment$5;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DiscoveryFragment;->setLFData(Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;Lcom/youku/vo/DiscoveryItemLFCell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DiscoveryFragment;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$5;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 568
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 569
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    const-string v0, "t1.find.sfind.laifengrecommend"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 576
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$5;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->access$300(Lcom/tudou/ui/fragment/DiscoveryFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$5;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->access$300(Lcom/tudou/ui/fragment/DiscoveryFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$5;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/laifeng/lfJsObj;->goWebView(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0
.end method
