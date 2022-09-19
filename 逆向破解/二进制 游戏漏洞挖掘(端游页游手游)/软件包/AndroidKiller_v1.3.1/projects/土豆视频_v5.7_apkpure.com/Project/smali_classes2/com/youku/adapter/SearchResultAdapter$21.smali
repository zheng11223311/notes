.class Lcom/youku/adapter/SearchResultAdapter$21;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter;->setSearchTudouAttention(ILcom/youku/adapter/SearchResultAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;

.field final synthetic val$position:I

.field final synthetic val$viewHolder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;ILcom/youku/adapter/SearchResultAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$21;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput p2, p0, Lcom/youku/adapter/SearchResultAdapter$21;->val$position:I

    iput-object p3, p0, Lcom/youku/adapter/SearchResultAdapter$21;->val$viewHolder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1728
    const-string v0, "btnSearchSubscribe"

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1759
    :goto_0
    return-void

    .line 1730
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 1731
    const-string v0, "\u641c\u7d22\u9875\u76f4\u8fbe\u533a\u8ba2\u9605\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u641c\u7d22\u9875-\u76f4\u8fbe\u533a\u8ba2\u9605\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$21;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$21;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v0, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1735
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1736
    const v0, 0x7f0d00a7

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 1739
    :cond_1
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$21;->val$viewHolder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1740
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$21;->val$viewHolder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1741
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$21;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$21;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iput v5, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    .line 1742
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$21;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$21;->val$position:I

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$21;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v2}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/youku/adapter/SearchResultAdapter;->access$7800(Lcom/youku/adapter/SearchResultAdapter;ILjava/util/ArrayList;)V

    goto :goto_0

    .line 1744
    :cond_2
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$21;->val$viewHolder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1745
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$21;->val$viewHolder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1746
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$21;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$21;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iput v5, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    .line 1747
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$21;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$21;->val$position:I

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$21;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v2}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/youku/adapter/SearchResultAdapter;->access$7900(Lcom/youku/adapter/SearchResultAdapter;ILjava/util/ArrayList;)V

    goto/16 :goto_0
.end method
