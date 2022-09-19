.class Lcom/tudou/ui/fragment/SearchResultFragment$2;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchResultFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishChannel(Lcom/youku/vo/SokuPodcast;)V
    .locals 0
    .param p1, "result"    # Lcom/youku/vo/SokuPodcast;

    .prologue
    .line 345
    return-void
.end method

.method public onFinishVideo(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowItem;>;"
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$100(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v1

    iput-object p1, v1, Lcom/tudou/ui/fragment/SearchManager;->AllDirectItem:Ljava/util/ArrayList;

    .line 321
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 322
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchResultFragment;->mhandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$100(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v1

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchManager;->AllDirectItem:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$100(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v1

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchManager;->showableDirectItem:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$100(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v1

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchManager;->AllDirectItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$100(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v2

    iget-object v2, v2, Lcom/tudou/ui/fragment/SearchManager;->showableDirectItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 327
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 329
    :cond_0
    const/16 v1, 0x378

    iput v1, v0, Landroid/os/Message;->what:I

    .line 330
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1600(Lcom/tudou/ui/fragment/SearchResultFragment;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 332
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 333
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/tudou/ui/fragment/SearchResultFragment$2$1;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/SearchResultFragment$2$1;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment$2;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 341
    :cond_1
    return-void
.end method
