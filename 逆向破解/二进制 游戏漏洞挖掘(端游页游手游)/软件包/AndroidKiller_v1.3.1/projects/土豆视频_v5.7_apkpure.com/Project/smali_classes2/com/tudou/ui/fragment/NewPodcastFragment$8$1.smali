.class Lcom/tudou/ui/fragment/NewPodcastFragment$8$1;
.super Lcom/tudou/service/attention/IAttention$GetCallBack;
.source "NewPodcastFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/NewPodcastFragment$8;->onSuccess(Lcom/youku/network/HttpRequestManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/NewPodcastFragment$8;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/NewPodcastFragment$8;)V
    .locals 0

    .prologue
    .line 772
    iput-object p1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8$1;->this$1:Lcom/tudou/ui/fragment/NewPodcastFragment$8;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$GetCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "errinfo"    # Ljava/lang/String;

    .prologue
    .line 787
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8$1;->this$1:Lcom/tudou/ui/fragment/NewPodcastFragment$8;

    iget-object v0, v0, Lcom/tudou/ui/fragment/NewPodcastFragment$8;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->is_sub:I

    .line 788
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8$1;->this$1:Lcom/tudou/ui/fragment/NewPodcastFragment$8;

    iget-object v0, v0, Lcom/tudou/ui/fragment/NewPodcastFragment$8;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xfa6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 789
    return-void
.end method

.method public onSucess(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/attention/IAttention$Results;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/attention/IAttention$Results;>;"
    const/4 v2, 0x0

    .line 776
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8$1;->this$1:Lcom/tudou/ui/fragment/NewPodcastFragment$8;

    iget-object v1, v0, Lcom/tudou/ui/fragment/NewPodcastFragment$8;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/service/attention/IAttention$Results;

    iget v0, v0, Lcom/tudou/service/attention/IAttention$Results;->code:I

    iput v0, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->is_sub:I

    .line 777
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8$1;->this$1:Lcom/tudou/ui/fragment/NewPodcastFragment$8;

    iget-object v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment$8;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->is_sub:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8$1;->this$1:Lcom/tudou/ui/fragment/NewPodcastFragment$8;

    iget-object v0, v0, Lcom/tudou/ui/fragment/NewPodcastFragment$8;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iput v2, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->is_sub:I

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$8$1;->this$1:Lcom/tudou/ui/fragment/NewPodcastFragment$8;

    iget-object v0, v0, Lcom/tudou/ui/fragment/NewPodcastFragment$8;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xfa6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 783
    return-void
.end method
