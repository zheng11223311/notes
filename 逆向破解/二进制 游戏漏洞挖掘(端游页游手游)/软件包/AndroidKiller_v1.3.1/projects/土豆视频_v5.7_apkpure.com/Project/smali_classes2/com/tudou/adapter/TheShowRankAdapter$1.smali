.class Lcom/tudou/adapter/TheShowRankAdapter$1;
.super Ljava/lang/Object;
.source "TheShowRankAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/TheShowRankAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/TheShowRankAdapter;

.field final synthetic val$item:Lcom/youku/vo/TheShowRankResults$TheShowRankResult;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tudou/adapter/TheShowRankAdapter;Lcom/youku/vo/TheShowRankResults$TheShowRankResult;I)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/tudou/adapter/TheShowRankAdapter$1;->this$0:Lcom/tudou/adapter/TheShowRankAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/TheShowRankAdapter$1;->val$item:Lcom/youku/vo/TheShowRankResults$TheShowRankResult;

    iput p3, p0, Lcom/tudou/adapter/TheShowRankAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, ""

    .line 88
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter$1;->this$0:Lcom/tudou/adapter/TheShowRankAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/TheShowRankAdapter;->access$000(Lcom/tudou/adapter/TheShowRankAdapter;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 89
    const-string v1, "\u76f4\u64ad"

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter$1;->this$0:Lcom/tudou/adapter/TheShowRankAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/TheShowRankAdapter;->access$000(Lcom/tudou/adapter/TheShowRankAdapter;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 92
    const-string v1, "\u70b9\u64ad"

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter$1;->this$0:Lcom/tudou/adapter/TheShowRankAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/TheShowRankAdapter;->access$000(Lcom/tudou/adapter/TheShowRankAdapter;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 95
    const-string v1, "\u5386\u53f2"

    .line 97
    :cond_2
    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v2, "title"

    iget-object v3, p0, Lcom/tudou/adapter/TheShowRankAdapter$1;->val$item:Lcom/youku/vo/TheShowRankResults$TheShowRankResult;

    iget-object v3, v3, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->description:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t1.find_theshow.videoclick.1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/adapter/TheShowRankAdapter$1;->val$item:Lcom/youku/vo/TheShowRankResults$TheShowRankResult;

    iget v3, v3, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->itemId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tudou/adapter/TheShowRankAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 100
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter$1;->this$0:Lcom/tudou/adapter/TheShowRankAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/TheShowRankAdapter;->access$100(Lcom/tudou/adapter/TheShowRankAdapter;)Lcom/tudou/ui/fragment/TheShowRankFragment;

    const/4 v2, 0x0

    sput-boolean v2, Lcom/tudou/ui/fragment/TheShowRankFragment;->mNeedRefresh:Z

    .line 101
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter$1;->this$0:Lcom/tudou/adapter/TheShowRankAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/TheShowRankAdapter;->access$200(Lcom/tudou/adapter/TheShowRankAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/adapter/TheShowRankAdapter$1;->val$item:Lcom/youku/vo/TheShowRankResults$TheShowRankResult;

    iget-object v3, v3, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->itemCode:Ljava/lang/String;

    sget-object v4, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v5, p0, Lcom/tudou/adapter/TheShowRankAdapter$1;->val$item:Lcom/youku/vo/TheShowRankResults$TheShowRankResult;

    iget-object v5, v5, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->title:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    .line 102
    return-void
.end method
