.class Lcom/tudou/ui/fragment/SearchResultFragment$11;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchResultFragment;->checkPodcastAttention(Lcom/youku/vo/SokuPodcast;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

.field final synthetic val$resume:Z


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchResultFragment;Z)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$11;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iput-boolean p2, p0, Lcom/tudou/ui/fragment/SearchResultFragment$11;->val$resume:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishChannel(Lcom/youku/vo/SokuPodcast;)V
    .locals 2
    .param p1, "result"    # Lcom/youku/vo/SokuPodcast;

    .prologue
    .line 891
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$11;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v1, p1}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$802(Lcom/tudou/ui/fragment/SearchResultFragment;Lcom/youku/vo/SokuPodcast;)Lcom/youku/vo/SokuPodcast;

    .line 894
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 895
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 896
    iget-boolean v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$11;->val$resume:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 897
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$11;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchResultFragment;->mhandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 898
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$11;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchResultFragment;->mhandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 899
    :cond_1
    return-void
.end method

.method public onFinishVideo(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 903
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowItem;>;"
    return-void
.end method
