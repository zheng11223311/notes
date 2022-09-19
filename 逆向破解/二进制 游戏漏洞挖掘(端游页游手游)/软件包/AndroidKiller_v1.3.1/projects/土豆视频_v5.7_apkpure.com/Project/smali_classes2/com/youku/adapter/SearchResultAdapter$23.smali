.class Lcom/youku/adapter/SearchResultAdapter$23;
.super Lcom/tudou/service/attention/IAttention$CallBack;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter;->cancelAttention(ILjava/util/ArrayList;)V
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
    .line 1804
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$23;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput-object p2, p0, Lcom/youku/adapter/SearchResultAdapter$23;->val$results:Ljava/util/ArrayList;

    iput p3, p0, Lcom/youku/adapter/SearchResultAdapter$23;->val$position:I

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$23;->val$results:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$23;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$23;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$23;->val$position:I

    if-le v0, v1, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$23;->val$results:Ljava/util/ArrayList;

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$23;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    const/4 v1, 0x3

    iput v1, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    .line 1824
    :cond_0
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$23;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/youku/adapter/SearchResultAdapter$23$2;

    invoke-direct {v1, p0}, Lcom/youku/adapter/SearchResultAdapter$23$2;-><init>(Lcom/youku/adapter/SearchResultAdapter$23;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1831
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$23;->val$results:Ljava/util/ArrayList;

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$23;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    const/4 v1, 0x1

    iput v1, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    .line 1809
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$23;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/youku/adapter/SearchResultAdapter$23$1;

    invoke-direct {v1, p0}, Lcom/youku/adapter/SearchResultAdapter$23$1;-><init>(Lcom/youku/adapter/SearchResultAdapter$23;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1816
    return-void
.end method
