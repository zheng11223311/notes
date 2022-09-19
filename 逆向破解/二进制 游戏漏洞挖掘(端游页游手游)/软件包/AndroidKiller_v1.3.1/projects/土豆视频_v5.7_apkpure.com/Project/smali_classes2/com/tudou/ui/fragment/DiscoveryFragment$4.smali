.class Lcom/tudou/ui/fragment/DiscoveryFragment$4;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DiscoveryFragment;->setRankingCellData(Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;Lcom/youku/vo/DiscoveryItemRankingListCell;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

.field final synthetic val$aItem:Lcom/youku/vo/DiscoveryItemRankingListCell;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DiscoveryFragment;Lcom/youku/vo/DiscoveryItemRankingListCell;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$4;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$4;->val$aItem:Lcom/youku/vo/DiscoveryItemRankingListCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 457
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 458
    const v3, 0x7f0d02c3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    .line 507
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$4;->val$aItem:Lcom/youku/vo/DiscoveryItemRankingListCell;

    iget v3, v3, Lcom/youku/vo/DiscoveryItemRankingListCell;->channel_id:I

    sparse-switch v3, :sswitch_data_0

    .line 498
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 499
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 500
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "cid"

    iget-object v4, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$4;->val$aItem:Lcom/youku/vo/DiscoveryItemRankingListCell;

    iget v4, v4, Lcom/youku/vo/DiscoveryItemRankingListCell;->channel_id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v3, "cname"

    iget-object v4, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$4;->val$aItem:Lcom/youku/vo/DiscoveryItemRankingListCell;

    iget-object v4, v4, Lcom/youku/vo/DiscoveryItemRankingListCell;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 503
    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$4;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/tudou/ui/activity/RankingListDetailActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 504
    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$4;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 464
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 465
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "ct"

    const-string v4, "\u7535\u89c6\u5267"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string v3, "t1.find_sfind.topcategory"

    invoke-static {v3, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    .line 472
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 473
    .restart local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "ct"

    const-string v4, "\u7535\u5f71"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v3, "t1.find_sfind.topcategory"

    invoke-static {v3, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    .line 480
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 481
    .restart local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "ct"

    const-string v4, "\u52a8\u6f2b"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string v3, "t1.find_sfind.topcategory"

    invoke-static {v3, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    .line 488
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 489
    .restart local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "ct"

    const-string v4, "\u7efc\u827a"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v3, "t1.find_sfind.topcategory"

    invoke-static {v3, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    .line 461
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0x16 -> :sswitch_1
        0x1e -> :sswitch_0
        0x1f -> :sswitch_3
    .end sparse-switch
.end method
