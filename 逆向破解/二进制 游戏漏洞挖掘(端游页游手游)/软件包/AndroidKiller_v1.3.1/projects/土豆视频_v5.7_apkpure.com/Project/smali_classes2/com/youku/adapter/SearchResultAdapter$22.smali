.class Lcom/youku/adapter/SearchResultAdapter$22;
.super Lcom/tudou/service/attention/IAttention$CallBack;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter;->addAttention(ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;

.field final synthetic val$position:I

.field final synthetic val$results:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;Ljava/util/ArrayList;I)V
    .locals 0

    .prologue
    .line 1765
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$22;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput-object p2, p0, Lcom/youku/adapter/SearchResultAdapter$22;->val$results:Ljava/util/ArrayList;

    iput p3, p0, Lcom/youku/adapter/SearchResultAdapter$22;->val$position:I

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1781
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$22;->val$results:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$22;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$22;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/youku/adapter/SearchResultAdapter$22;->val$position:I

    if-le v1, v2, :cond_0

    .line 1783
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$22;->val$results:Ljava/util/ArrayList;

    iget v2, p0, Lcom/youku/adapter/SearchResultAdapter$22;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowItem;

    const/4 v2, 0x1

    iput v2, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    .line 1785
    :cond_0
    move-object v0, p1

    .line 1786
    .local v0, "u":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$22;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v1}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/youku/adapter/SearchResultAdapter$22$2;

    invoke-direct {v2, p0}, Lcom/youku/adapter/SearchResultAdapter$22$2;-><init>(Lcom/youku/adapter/SearchResultAdapter$22;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1797
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$22;->val$results:Ljava/util/ArrayList;

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$22;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    const/4 v1, 0x3

    iput v1, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    .line 1770
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$22;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/youku/adapter/SearchResultAdapter$22$1;

    invoke-direct {v1, p0}, Lcom/youku/adapter/SearchResultAdapter$22$1;-><init>(Lcom/youku/adapter/SearchResultAdapter$22;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1777
    return-void
.end method
