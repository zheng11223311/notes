.class Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;
.super Lcom/tudou/service/attention/IAttention$GetCallBack;
.source "DiscoveryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DiscoveryFragment$7;->onSucess(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DiscoveryFragment$7;

.field final synthetic val$data:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DiscoveryFragment$7;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment$7;

    iput-object p2, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;->val$data:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$GetCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 4
    .param p1, "errinfo"    # Ljava/lang/String;

    .prologue
    .line 913
    const/4 v0, 0x0

    .local v0, "m":I
    :goto_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;->val$data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 914
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;->val$data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/GuideSubResult;

    iget-object v2, v2, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 915
    iget-object v2, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;->val$data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/GuideSubResult;

    iget-object v2, v2, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/GuideTab;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/youku/vo/GuideTab;->isSubed:Z

    .line 914
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 913
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 918
    .end local v1    # "n":I
    :cond_1
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
    .line 884
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/attention/IAttention$Results;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 885
    const/4 v1, 0x0

    .local v1, "m":I
    :goto_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;->val$data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 886
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;->val$data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/GuideSubResult;

    iget-object v3, v3, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 888
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/service/attention/IAttention$Results;

    iget v4, v3, Lcom/tudou/service/attention/IAttention$Results;->id:I

    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;->val$data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/GuideSubResult;

    iget-object v3, v3, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/GuideTab;

    iget-object v3, v3, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 889
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/service/attention/IAttention$Results;

    iget v3, v3, Lcom/tudou/service/attention/IAttention$Results;->code:I

    if-nez v3, :cond_1

    .line 890
    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;->val$data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/GuideSubResult;

    iget-object v3, v3, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/GuideTab;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/youku/vo/GuideTab;->isSubed:Z

    .line 891
    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment$7;

    iget-object v4, v3, Lcom/tudou/ui/fragment/DiscoveryFragment$7;->val$manager:Lcom/tudou/guide/SplashSubManager;

    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;->val$data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/GuideSubResult;

    iget-object v3, v3, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/GuideTab;

    iget-object v3, v3, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/tudou/guide/SplashSubManager;->setResultTabs(Ljava/lang/String;Z)V

    .line 896
    :goto_3
    const/4 v4, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/service/attention/IAttention$Results;

    iget v3, v3, Lcom/tudou/service/attention/IAttention$Results;->code:I

    if-ne v4, v3, :cond_0

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-nez v3, :cond_0

    .line 899
    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;->val$data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/GuideSubResult;

    iget-object v3, v3, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/GuideTab;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/youku/vo/GuideTab;->isSubed:Z

    .line 900
    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment$7;

    iget-object v4, v3, Lcom/tudou/ui/fragment/DiscoveryFragment$7;->val$manager:Lcom/tudou/guide/SplashSubManager;

    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;->val$data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/GuideSubResult;

    iget-object v3, v3, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/GuideTab;

    iget-object v3, v3, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/tudou/guide/SplashSubManager;->setResultTabs(Ljava/lang/String;Z)V

    .line 886
    :cond_0
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 893
    :cond_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;->val$data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/GuideSubResult;

    iget-object v3, v3, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/GuideTab;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/youku/vo/GuideTab;->isSubed:Z

    .line 894
    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment$7;

    iget-object v4, v3, Lcom/tudou/ui/fragment/DiscoveryFragment$7;->val$manager:Lcom/tudou/guide/SplashSubManager;

    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$7$1;->val$data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/GuideSubResult;

    iget-object v3, v3, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/GuideTab;

    iget-object v3, v3, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/tudou/guide/SplashSubManager;->setResultTabs(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 903
    :catch_0
    move-exception v3

    goto :goto_4

    .line 885
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 884
    .end local v2    # "n":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 909
    .end local v1    # "m":I
    :cond_4
    return-void
.end method
