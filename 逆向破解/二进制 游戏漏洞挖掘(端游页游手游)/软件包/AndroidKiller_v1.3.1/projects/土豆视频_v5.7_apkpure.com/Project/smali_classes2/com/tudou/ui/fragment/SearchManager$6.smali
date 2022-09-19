.class Lcom/tudou/ui/fragment/SearchManager$6;
.super Lcom/tudou/service/attention/IAttention$GetCallBack;
.source "SearchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchManager;->checkAttentions(Ljava/util/ArrayList;Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchManager;

.field final synthetic val$icheck:Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;

.field final synthetic val$result:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchManager;Ljava/util/ArrayList;Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchManager$6;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iput-object p2, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$result:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$icheck:Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$GetCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "errinfo"    # Ljava/lang/String;

    .prologue
    .line 817
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$icheck:Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$result:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;->onFinishVideo(Ljava/util/ArrayList;)V

    .line 818
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
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 782
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$result:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 783
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$icheck:Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$result:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;->onFinishVideo(Ljava/util/ArrayList;)V

    .line 813
    :goto_0
    return-void

    .line 786
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 787
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 788
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_4

    .line 789
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->id:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v3, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/attention/IAttention$Results;

    iget v2, v2, Lcom/tudou/service/attention/IAttention$Results;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 792
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/attention/IAttention$Results;

    iget v2, v2, Lcom/tudou/service/attention/IAttention$Results;->code:I

    if-ne v2, v4, :cond_3

    .line 793
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iput v5, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    .line 787
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 795
    :cond_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iput v4, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    goto :goto_3

    .line 798
    :cond_4
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget v2, v2, Lcom/youku/vo/SearchDirectDaoSources;->is_tudou:I

    if-ne v2, v4, :cond_2

    .line 800
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoSources;->aid:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v3, v2, Lcom/youku/vo/SearchDirectDaoSources;->aid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/attention/IAttention$Results;

    iget v2, v2, Lcom/tudou/service/attention/IAttention$Results;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 803
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/attention/IAttention$Results;

    iget v2, v2, Lcom/tudou/service/attention/IAttention$Results;->code:I

    if-ne v2, v4, :cond_5

    .line 804
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iput v5, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    goto :goto_3

    .line 806
    :cond_5
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iput v4, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    goto :goto_3

    .line 786
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 812
    .end local v1    # "j":I
    :cond_7
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$icheck:Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$6;->val$result:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;->onFinishVideo(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
