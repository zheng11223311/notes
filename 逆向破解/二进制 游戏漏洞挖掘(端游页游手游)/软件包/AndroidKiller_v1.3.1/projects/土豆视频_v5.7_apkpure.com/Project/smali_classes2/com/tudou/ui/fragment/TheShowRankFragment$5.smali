.class Lcom/tudou/ui/fragment/TheShowRankFragment$5;
.super Ljava/lang/Object;
.source "TheShowRankFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/TheShowRankFragment;->setListViewHeader(Landroid/view/View;Lcom/youku/vo/TheShowRankResults$TheShowRankResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

.field final synthetic val$item:Lcom/youku/vo/TheShowRankResults$TheShowRankResult;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/TheShowRankFragment;Lcom/youku/vo/TheShowRankResults$TheShowRankResult;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$5;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$5;->val$item:Lcom/youku/vo/TheShowRankResults$TheShowRankResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 425
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, ""

    .line 426
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$5;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1900(Lcom/tudou/ui/fragment/TheShowRankFragment;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 427
    const-string v1, "\u76f4\u64ad"

    .line 429
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$5;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1900(Lcom/tudou/ui/fragment/TheShowRankFragment;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 430
    const-string v1, "\u70b9\u64ad"

    .line 432
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$5;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1900(Lcom/tudou/ui/fragment/TheShowRankFragment;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 433
    const-string v1, "\u5386\u53f2"

    .line 435
    :cond_2
    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v2, "title"

    iget-object v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$5;->val$item:Lcom/youku/vo/TheShowRankResults$TheShowRankResult;

    iget-object v3, v3, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->description:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t1.find_theshow.videoclick.1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$5;->val$item:Lcom/youku/vo/TheShowRankResults$TheShowRankResult;

    iget v3, v3, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->itemId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 438
    const/4 v2, 0x0

    sput-boolean v2, Lcom/tudou/ui/fragment/TheShowRankFragment;->mNeedRefresh:Z

    .line 439
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$5;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$2000(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$5;->val$item:Lcom/youku/vo/TheShowRankResults$TheShowRankResult;

    iget-object v3, v3, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->itemCode:Ljava/lang/String;

    sget-object v4, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v5, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$5;->val$item:Lcom/youku/vo/TheShowRankResults$TheShowRankResult;

    iget-object v5, v5, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->title:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    .line 440
    return-void
.end method
