.class Lcom/tudou/ui/fragment/TheShowRankFragment$6;
.super Ljava/lang/Object;
.source "TheShowRankFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/TheShowRankFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/TheShowRankFragment;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$6;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x3

    .line 491
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 492
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, ""

    .line 493
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$6;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1900(Lcom/tudou/ui/fragment/TheShowRankFragment;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 494
    const-string v1, "\u76f4\u64ad"

    .line 496
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$6;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1900(Lcom/tudou/ui/fragment/TheShowRankFragment;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 497
    const-string v1, "\u70b9\u64ad"

    .line 499
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$6;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1900(Lcom/tudou/ui/fragment/TheShowRankFragment;)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 500
    const-string v1, "\u5386\u53f2"

    .line 502
    :cond_2
    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$6;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1900(Lcom/tudou/ui/fragment/TheShowRankFragment;)I

    move-result v2

    if-ne v4, v2, :cond_3

    .line 504
    const-string v2, "title"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$6;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1500(Lcom/tudou/ui/fragment/TheShowRankFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :goto_0
    const-string v2, "t1.find_theshow.gift"

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 509
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$6;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    iget-object v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$6;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$2100(Lcom/tudou/ui/fragment/TheShowRankFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tudou/ui/fragment/TheShowRankFragment;->showGiftFragment(Ljava/lang/String;)V

    .line 510
    return-void

    .line 506
    :cond_3
    const-string v2, "title"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$6;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$200(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/youku/vo/TheShowRankResults;

    move-result-object v4

    iget v4, v4, Lcom/youku/vo/TheShowRankResults;->wno:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
