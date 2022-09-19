.class Lcom/youku/adapter/SearchResultAdapter$25;
.super Lcom/tudou/service/attention/IAttention$CallBack;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter;->cancelAttention(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;I)V
    .locals 0

    .prologue
    .line 1887
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$25;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput p2, p0, Lcom/youku/adapter/SearchResultAdapter$25;->val$position:I

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$25;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$25;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    const/4 v1, 0x3

    iput v1, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    .line 1904
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$25;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/youku/adapter/SearchResultAdapter$25$2;

    invoke-direct {v1, p0}, Lcom/youku/adapter/SearchResultAdapter$25$2;-><init>(Lcom/youku/adapter/SearchResultAdapter$25;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1911
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$25;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$25;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    const/4 v1, 0x1

    iput v1, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    .line 1892
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$25;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/youku/adapter/SearchResultAdapter$25$1;

    invoke-direct {v1, p0}, Lcom/youku/adapter/SearchResultAdapter$25$1;-><init>(Lcom/youku/adapter/SearchResultAdapter$25;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1899
    return-void
.end method
