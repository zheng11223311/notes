.class Lcom/tudou/adapter/RankingListAdapter$1;
.super Ljava/lang/Object;
.source "RankingListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/RankingListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/RankingListAdapter;

.field final synthetic val$r:Lcom/youku/vo/RankingList$Ranking;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/RankingListAdapter;Lcom/youku/vo/RankingList$Ranking;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/tudou/adapter/RankingListAdapter$1;->this$0:Lcom/tudou/adapter/RankingListAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/RankingListAdapter$1;->val$r:Lcom/youku/vo/RankingList$Ranking;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    const v3, 0x7f0d02c3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    .line 94
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v1, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "ct"

    iget-object v4, p0, Lcom/tudou/adapter/RankingListAdapter$1;->val$r:Lcom/youku/vo/RankingList$Ranking;

    iget-object v4, v4, Lcom/youku/vo/RankingList$Ranking;->title:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v3, "t1.find_toplist.category"

    invoke-static {v3, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 87
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "cid"

    iget-object v4, p0, Lcom/tudou/adapter/RankingListAdapter$1;->val$r:Lcom/youku/vo/RankingList$Ranking;

    iget-object v4, v4, Lcom/youku/vo/RankingList$Ranking;->channel_id:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v3, "cname"

    iget-object v4, p0, Lcom/tudou/adapter/RankingListAdapter$1;->val$r:Lcom/youku/vo/RankingList$Ranking;

    iget-object v4, v4, Lcom/youku/vo/RankingList$Ranking;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 92
    iget-object v3, p0, Lcom/tudou/adapter/RankingListAdapter$1;->this$0:Lcom/tudou/adapter/RankingListAdapter;

    invoke-static {v3}, Lcom/tudou/adapter/RankingListAdapter;->access$000(Lcom/tudou/adapter/RankingListAdapter;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/tudou/ui/activity/RankingListDetailActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 93
    iget-object v3, p0, Lcom/tudou/adapter/RankingListAdapter$1;->this$0:Lcom/tudou/adapter/RankingListAdapter;

    invoke-static {v3}, Lcom/tudou/adapter/RankingListAdapter;->access$000(Lcom/tudou/adapter/RankingListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
