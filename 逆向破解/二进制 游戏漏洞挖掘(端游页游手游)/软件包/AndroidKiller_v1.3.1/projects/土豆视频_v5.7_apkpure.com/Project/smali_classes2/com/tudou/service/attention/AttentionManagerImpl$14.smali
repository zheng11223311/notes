.class Lcom/tudou/service/attention/AttentionManagerImpl$14;
.super Ljava/lang/Thread;
.source "AttentionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl;->addSQLAttention(Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

.field final synthetic val$attentionList:Ljava/util/ArrayList;

.field final synthetic val$callback:Lcom/tudou/service/attention/IAttention$GetCallBack;


# direct methods
.method constructor <init>(Lcom/tudou/service/attention/AttentionManagerImpl;Lcom/tudou/service/attention/IAttention$GetCallBack;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$14;->this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$14;->val$callback:Lcom/tudou/service/attention/IAttention$GetCallBack;

    iput-object p3, p0, Lcom/tudou/service/attention/AttentionManagerImpl$14;->val$attentionList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 752
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v5

    if-nez v5, :cond_0

    const-wide/16 v14, 0x1e

    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getLocalSubCount()J

    move-result-wide v16

    cmp-long v5, v14, v16

    if-gtz v5, :cond_0

    .line 754
    const-string v5, "\u672c\u5730\u8ba2\u9605\u5df2\u6ee1\uff0c\u767b\u5f55\u540e\u53ef\u8ba2\u9605\u66f4\u591a"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tudou/service/attention/AttentionManagerImpl$14;->val$callback:Lcom/tudou/service/attention/IAttention$GetCallBack;

    const-string v8, "LIMIT"

    invoke-virtual {v5, v8}, Lcom/tudou/service/attention/IAttention$GetCallBack;->onFail(Ljava/lang/String;)V

    .line 787
    :goto_0
    return-void

    .line 758
    :cond_0
    const/4 v13, 0x0

    .line 759
    .local v13, "resu":Z
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/attention/IAttention$Results;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tudou/service/attention/AttentionManagerImpl$14;->val$attentionList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v11, v5, :cond_3

    .line 761
    new-instance v9, Lcom/tudou/service/attention/IAttention$Results;

    invoke-direct {v9}, Lcom/tudou/service/attention/IAttention$Results;-><init>()V

    .line 763
    .local v9, "data":Lcom/tudou/service/attention/IAttention$Results;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tudou/service/attention/AttentionManagerImpl$14;->val$attentionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/GuideTab;

    iget-object v2, v5, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    .line 764
    .local v2, "uid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tudou/service/attention/AttentionManagerImpl$14;->val$attentionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/GuideTab;

    iget-object v3, v5, Lcom/youku/vo/GuideTab;->avatar:Ljava/lang/String;

    .line 765
    .local v3, "upic":Ljava/lang/String;
    const-string v4, ""

    .line 766
    .local v4, "uploadcount":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tudou/service/attention/AttentionManagerImpl$14;->val$attentionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/GuideTab;

    iget-object v6, v5, Lcom/youku/vo/GuideTab;->podcast_user_nick:Ljava/lang/String;

    .line 767
    .local v6, "title":Ljava/lang/String;
    const/4 v7, 0x2

    .line 768
    .local v7, "type":I
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tudou/service/attention/AttentionManagerImpl$14;->val$attentionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/GuideTab;

    iget v5, v5, Lcom/youku/vo/GuideTab;->v_user:I

    if-ne v8, v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/youku/data/SQLiteManagerTudou;->addToAttention(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)Z

    move-result v13

    .line 772
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v9, Lcom/tudou/service/attention/IAttention$Results;->id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_3
    if-eqz v13, :cond_1

    .line 778
    const/4 v5, 0x0

    iput v5, v9, Lcom/tudou/service/attention/IAttention$Results;->code:I

    .line 780
    :cond_1
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 768
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 773
    :catch_0
    move-exception v10

    .line 774
    .local v10, "e":Ljava/lang/Exception;
    const-string v5, "addAttentionList data.id **** Not Integer *** "

    invoke-static {v5}, Lcom/youku/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 784
    .end local v2    # "uid":Ljava/lang/String;
    .end local v3    # "upic":Ljava/lang/String;
    .end local v4    # "uploadcount":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v9    # "data":Lcom/tudou/service/attention/IAttention$Results;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tudou/service/attention/AttentionManagerImpl$14;->val$callback:Lcom/tudou/service/attention/IAttention$GetCallBack;

    invoke-virtual {v5, v12}, Lcom/tudou/service/attention/IAttention$GetCallBack;->onSucess(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
