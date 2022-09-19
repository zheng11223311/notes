.class Lcom/tudou/adapter/TheShowRankHistoryAdapter$1;
.super Ljava/lang/Object;
.source "TheShowRankHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/TheShowRankHistoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/TheShowRankHistoryAdapter;

.field final synthetic val$itemLeft:Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/TheShowRankHistoryAdapter;Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter$1;->this$0:Lcom/tudou/adapter/TheShowRankHistoryAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter$1;->val$itemLeft:Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter$1;->this$0:Lcom/tudou/adapter/TheShowRankHistoryAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->access$000(Lcom/tudou/adapter/TheShowRankHistoryAdapter;)Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/fragment/TheShowRankFragment;

    check-cast v2, Lcom/tudou/ui/fragment/TheShowRankFragment;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/tudou/ui/fragment/TheShowRankFragment;->mNeedRefresh:Z

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    const-string v3, "\u5386\u53f2"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v2, "title"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter$1;->val$itemLeft:Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;

    iget v4, v4, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;->wno:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v2, "t1.find_theshow.histroylistclick"

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 82
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "year"

    iget-object v3, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter$1;->val$itemLeft:Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;

    iget-object v3, v3, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;->year:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v2, "wno"

    iget-object v3, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter$1;->val$itemLeft:Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;

    iget v3, v3, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;->wno:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter$1;->this$0:Lcom/tudou/adapter/TheShowRankHistoryAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->access$100(Lcom/tudou/adapter/TheShowRankHistoryAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/TheShowRankActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 86
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter$1;->this$0:Lcom/tudou/adapter/TheShowRankHistoryAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->access$100(Lcom/tudou/adapter/TheShowRankHistoryAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 87
    return-void
.end method
