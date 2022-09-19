.class Lcom/tudou/ui/fragment/SearchManager$7;
.super Lcom/tudou/service/attention/IAttention$GetCallBack;
.source "SearchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchManager;->checkAttentions(Lcom/youku/vo/SokuPodcast;Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchManager;

.field final synthetic val$icheck:Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;

.field final synthetic val$result:Lcom/youku/vo/SokuPodcast;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchManager;Lcom/youku/vo/SokuPodcast;Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchManager$7;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iput-object p2, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$result:Lcom/youku/vo/SokuPodcast;

    iput-object p3, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$icheck:Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$GetCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "errinfo"    # Ljava/lang/String;

    .prologue
    .line 871
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$icheck:Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$result:Lcom/youku/vo/SokuPodcast;

    invoke-interface {v0, v1}, Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;->onFinishChannel(Lcom/youku/vo/SokuPodcast;)V

    .line 872
    return-void
.end method

.method public onSucess(Ljava/util/ArrayList;)V
    .locals 6
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
    const/4 v5, 0x1

    .line 840
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$result:Lcom/youku/vo/SokuPodcast;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$result:Lcom/youku/vo/SokuPodcast;

    iget-object v3, v3, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 841
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$icheck:Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$result:Lcom/youku/vo/SokuPodcast;

    invoke-interface {v3, v4}, Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;->onFinishChannel(Lcom/youku/vo/SokuPodcast;)V

    .line 867
    :goto_0
    return-void

    .line 844
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$result:Lcom/youku/vo/SokuPodcast;

    iget-object v3, v3, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 845
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 846
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$result:Lcom/youku/vo/SokuPodcast;

    iget-object v3, v3, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SokuPodcast$User;

    iget v4, v3, Lcom/youku/vo/SokuPodcast$User;->userId:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/service/attention/IAttention$Results;

    iget v3, v3, Lcom/tudou/service/attention/IAttention$Results;->id:I

    if-ne v4, v3, :cond_2

    .line 847
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/service/attention/IAttention$Results;

    iget v3, v3, Lcom/tudou/service/attention/IAttention$Results;->code:I

    if-ne v3, v5, :cond_3

    .line 848
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$result:Lcom/youku/vo/SokuPodcast;

    iget-object v3, v3, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SokuPodcast$User;

    const/4 v4, 0x2

    iput v4, v3, Lcom/youku/vo/SokuPodcast$User;->ATTENTION_STATE:I

    .line 849
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$result:Lcom/youku/vo/SokuPodcast;

    iget-object v3, v3, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SokuPodcast$User;

    iput-boolean v5, v3, Lcom/youku/vo/SokuPodcast$User;->isAttention:Z

    .line 845
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 851
    :cond_3
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$result:Lcom/youku/vo/SokuPodcast;

    iget-object v3, v3, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SokuPodcast$User;

    const/4 v4, 0x3

    iput v4, v3, Lcom/youku/vo/SokuPodcast$User;->ATTENTION_STATE:I

    .line 852
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$result:Lcom/youku/vo/SokuPodcast;

    iget-object v3, v3, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SokuPodcast$User;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/youku/vo/SokuPodcast$User;->isAttention:Z

    goto :goto_3

    .line 844
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 857
    .end local v1    # "j":I
    :cond_5
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 858
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 859
    .local v2, "uid":Ljava/lang/String;
    const/4 v0, 0x0

    :goto_4
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$result:Lcom/youku/vo/SokuPodcast;

    iget-object v3, v3, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 860
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$result:Lcom/youku/vo/SokuPodcast;

    iget-object v3, v3, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SokuPodcast$User;

    iget v3, v3, Lcom/youku/vo/SokuPodcast$User;->userId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 862
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$result:Lcom/youku/vo/SokuPodcast;

    iget-object v3, v3, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SokuPodcast$User;

    iput-boolean v5, v3, Lcom/youku/vo/SokuPodcast$User;->isSelf:Z

    .line 859
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 866
    .end local v2    # "uid":Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$icheck:Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchManager$7;->val$result:Lcom/youku/vo/SokuPodcast;

    invoke-interface {v3, v4}, Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;->onFinishChannel(Lcom/youku/vo/SokuPodcast;)V

    goto/16 :goto_0
.end method
