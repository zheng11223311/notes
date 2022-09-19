.class Lcom/youku/adapter/SearchResultAdapter$24;
.super Lcom/tudou/service/attention/IAttention$CallBack;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter;->addAttention(I)V
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
    .line 1844
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$24;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput p2, p0, Lcom/youku/adapter/SearchResultAdapter$24;->val$position:I

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1860
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$24;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v1}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/youku/adapter/SearchResultAdapter$24;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowItem;

    const/4 v2, 0x1

    iput v2, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    .line 1861
    move-object v0, p1

    .line 1862
    .local v0, "u":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$24;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v1}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/youku/adapter/SearchResultAdapter$24$2;

    invoke-direct {v2, p0}, Lcom/youku/adapter/SearchResultAdapter$24$2;-><init>(Lcom/youku/adapter/SearchResultAdapter$24;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1873
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$24;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$24;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    const/4 v1, 0x3

    iput v1, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    .line 1849
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$24;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/youku/adapter/SearchResultAdapter$24$1;

    invoke-direct {v1, p0}, Lcom/youku/adapter/SearchResultAdapter$24$1;-><init>(Lcom/youku/adapter/SearchResultAdapter$24;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1856
    return-void
.end method
