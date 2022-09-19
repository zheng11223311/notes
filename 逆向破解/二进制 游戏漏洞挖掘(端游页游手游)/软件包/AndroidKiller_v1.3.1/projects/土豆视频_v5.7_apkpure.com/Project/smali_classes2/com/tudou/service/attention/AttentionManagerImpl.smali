.class public Lcom/tudou/service/attention/AttentionManagerImpl;
.super Lcom/tudou/service/attention/AttentionManager;
.source "AttentionManagerImpl.java"


# static fields
.field public static isFirstAccess:Z


# instance fields
.field protected mActivity:Lcom/tudou/ui/activity/BaseActivity;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/service/attention/AttentionManagerImpl;->isFirstAccess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tudou/service/attention/AttentionManager;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/service/attention/AttentionManagerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/attention/AttentionManagerImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/service/attention/AttentionManagerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/service/attention/AttentionManagerImpl;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/service/attention/AttentionManagerImpl;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/tudou/service/attention/AttentionManagerImpl;->delete(Ljava/util/ArrayList;)V

    return-void
.end method

.method private attentionLogin(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 699
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 700
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 701
    const-string v1, "TAG"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 702
    const/16 v1, 0x7d0

    const v2, 0x7f040005

    const v3, 0x7f040004

    invoke-static {p1, v0, v1, v2, v3}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;III)V

    .line 704
    return-void
.end method

.method private declared-synchronized delete(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 523
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/data/SQLiteManagerTudou;->deleteAttention(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_0
    monitor-exit p0

    return-void

    .line 522
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public addAttention(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "upic"    # Ljava/lang/String;
    .param p4, "uploadcount"    # Ljava/lang/String;
    .param p5, "isVuser"    # Z
    .param p6, "uname"    # Ljava/lang/String;
    .param p7, "type"    # I
    .param p8, "callback"    # Lcom/tudou/service/attention/IAttention$CallBack;

    .prologue
    .line 50
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/tudou/service/attention/AttentionManagerImpl;->addAttention(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V

    .line 51
    return-void
.end method

.method public addAttention(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "upic"    # Ljava/lang/String;
    .param p4, "uploadcount"    # Ljava/lang/String;
    .param p5, "isVuser"    # Z
    .param p6, "uname"    # Ljava/lang/String;
    .param p7, "type"    # I
    .param p8, "lastItemTitle"    # Ljava/lang/String;
    .param p9, "callback"    # Lcom/tudou/service/attention/IAttention$CallBack;

    .prologue
    .line 804
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 805
    const/4 v2, 0x1

    sput-boolean v2, Lcom/tudou/ui/fragment/AttentionFragment;->mRefreshkey:Z

    .line 806
    const/4 v2, 0x1

    sput-boolean v2, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 807
    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/youku/http/TudouURLContainer;->getAddAttention(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 808
    .local v14, "url":Ljava/lang/String;
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/youku/network/IHttpRequest;

    .line 810
    .local v13, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v12, Lcom/youku/network/HttpIntent;

    const-string v2, "POST"

    const/4 v3, 0x1

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/youku/http/TudouURLContainer;->getAttentionMapString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v14, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 813
    .local v12, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/service/attention/AttentionManagerImpl$15;

    move-object/from16 v0, p9

    move-object/from16 v1, p2

    invoke-direct {v2, p0, v0, v1}, Lcom/tudou/service/attention/AttentionManagerImpl$15;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl;Lcom/tudou/service/attention/IAttention$CallBack;Ljava/lang/String;)V

    invoke-interface {v13, v12, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 888
    .end local v12    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v13    # "httpRequest":Lcom/youku/network/IHttpRequest;
    .end local v14    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 855
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/tudou/ui/fragment/AttentionFragment;->mRefreshkey:Z

    .line 856
    const/4 v2, 0x1

    sput-boolean v2, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 857
    const-wide/16 v2, 0x1e

    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getLocalSubCount()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 859
    const-string v2, "\u672c\u5730\u8ba2\u9605\u5df2\u6ee1\uff0c\u767b\u5f55\u540e\u53ef\u8ba2\u9605\u66f4\u591a"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 860
    const-string v2, "LIMIT"

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Lcom/tudou/service/attention/IAttention$CallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0

    .line 863
    :cond_1
    new-instance v2, Lcom/tudou/service/attention/AttentionManagerImpl$16;

    move-object v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lcom/tudou/service/attention/AttentionManagerImpl$16;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V

    invoke-virtual {v2}, Lcom/tudou/service/attention/AttentionManagerImpl$16;->start()V

    goto :goto_0
.end method

.method public addAttention(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p7, "callback"    # Lcom/tudou/service/attention/IAttention$GetCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/tudou/service/attention/IAttention$GetCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "upics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "uploadcounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    .line 622
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 623
    invoke-static {p2, p6}, Lcom/youku/http/TudouURLContainer;->getAddAttention(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 624
    .local v2, "url":Ljava/lang/String;
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 626
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v3, "POST"

    invoke-static {p2, p6}, Lcom/youku/http/TudouURLContainer;->getAttentionMapString(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 629
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/service/attention/AttentionManagerImpl$13;

    invoke-direct {v3, p0, p7}, Lcom/tudou/service/attention/AttentionManagerImpl$13;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl;Lcom/tudou/service/attention/IAttention$GetCallBack;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 696
    .end local v0    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v1    # "httpRequest":Lcom/youku/network/IHttpRequest;
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 658
    :cond_0
    invoke-direct {p0, p1}, Lcom/tudou/service/attention/AttentionManagerImpl;->attentionLogin(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public addSQLAttention(Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V
    .locals 1
    .param p2, "callback"    # Lcom/tudou/service/attention/IAttention$GetCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideTab;",
            ">;",
            "Lcom/tudou/service/attention/IAttention$GetCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 750
    .local p1, "attentionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/GuideTab;>;"
    new-instance v0, Lcom/tudou/service/attention/AttentionManagerImpl$14;

    invoke-direct {v0, p0, p2, p1}, Lcom/tudou/service/attention/AttentionManagerImpl$14;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl;Lcom/tudou/service/attention/IAttention$GetCallBack;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/tudou/service/attention/AttentionManagerImpl$14;->start()V

    .line 791
    return-void
.end method

.method public cancelAttention(Landroid/content/Context;Ljava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "callback"    # Lcom/tudou/service/attention/IAttention$CallBack;

    .prologue
    const/4 v5, 0x1

    .line 105
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    sput-boolean v5, Lcom/tudou/ui/fragment/AttentionFragment;->mRefreshkey:Z

    .line 107
    sput-boolean v5, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 108
    invoke-static {p2, p3}, Lcom/youku/http/TudouURLContainer;->getDeleteAttention(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "url":Ljava/lang/String;
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 111
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v3, "POST"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/youku/http/TudouURLContainer;->getDeleteAttentionMapString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 114
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/service/attention/AttentionManagerImpl$3;

    invoke-direct {v3, p0, p4, p2}, Lcom/tudou/service/attention/AttentionManagerImpl$3;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl;Lcom/tudou/service/attention/IAttention$CallBack;Ljava/lang/String;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 165
    .end local v0    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v1    # "httpRequest":Lcom/youku/network/IHttpRequest;
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 141
    :cond_0
    sput-boolean v5, Lcom/tudou/ui/fragment/AttentionFragment;->mRefreshkey:Z

    .line 142
    sput-boolean v5, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 143
    new-instance v3, Lcom/tudou/service/attention/AttentionManagerImpl$4;

    invoke-direct {v3, p0, p2, p4}, Lcom/tudou/service/attention/AttentionManagerImpl$4;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl;Ljava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V

    invoke-virtual {v3}, Lcom/tudou/service/attention/AttentionManagerImpl$4;->start()V

    goto :goto_0
.end method

.method public cancelAttention(Landroid/content/Context;Ljava/util/ArrayList;ILcom/tudou/service/attention/IAttention$CallBack;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "type"    # I
    .param p4, "callback"    # Lcom/tudou/service/attention/IAttention$CallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/tudou/service/attention/IAttention$CallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 169
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    invoke-static {p2, p3}, Lcom/youku/http/TudouURLContainer;->getDeleteAttention(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "url":Ljava/lang/String;
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 174
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v3, "POST"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/youku/http/TudouURLContainer;->getDeleteAttentionMapString(Ljava/util/ArrayList;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 177
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/service/attention/AttentionManagerImpl$5;

    invoke-direct {v3, p0, p4}, Lcom/tudou/service/attention/AttentionManagerImpl$5;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl;Lcom/tudou/service/attention/IAttention$CallBack;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 206
    .end local v0    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v1    # "httpRequest":Lcom/youku/network/IHttpRequest;
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-direct {p0, p1}, Lcom/tudou/service/attention/AttentionManagerImpl;->attentionLogin(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public deleteLocalAttention()V
    .locals 0

    .prologue
    .line 539
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->deleteAllAttention()V

    .line 540
    return-void
.end method

.method public deleteLocalAttention(Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$DeleteCallBack;)V
    .locals 1
    .param p2, "callback"    # Lcom/tudou/service/attention/IAttention$DeleteCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tudou/service/attention/IAttention$DeleteCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 893
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/tudou/service/attention/AttentionManagerImpl$17;

    invoke-direct {v0, p0, p1, p2}, Lcom/tudou/service/attention/AttentionManagerImpl$17;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$DeleteCallBack;)V

    invoke-virtual {v0}, Lcom/tudou/service/attention/AttentionManagerImpl$17;->start()V

    .line 906
    return-void
.end method

.method public deleteLocalAttention(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 795
    invoke-static {p1}, Lcom/youku/data/SQLiteManagerTudou;->deleteAttention(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAttentionList(ILcom/tudou/service/attention/IAttention$GetListCallBack;)V
    .locals 6
    .param p1, "pg"    # I
    .param p2, "callback"    # Lcom/tudou/service/attention/IAttention$GetListCallBack;

    .prologue
    const/4 v5, 0x1

    .line 280
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    .line 283
    .local v3, "userbean":Lcom/youku/vo/UserBean;
    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/youku/http/TudouURLContainer;->getAttentionListUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "url":Ljava/lang/String;
    const-class v4, Lcom/youku/network/IHttpRequest;

    invoke-static {v4, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 287
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v4, "GET"

    invoke-direct {v0, v2, v4, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 289
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v4, Lcom/tudou/service/attention/AttentionManagerImpl$8;

    invoke-direct {v4, p0, p2}, Lcom/tudou/service/attention/AttentionManagerImpl$8;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl;Lcom/tudou/service/attention/IAttention$GetListCallBack;)V

    invoke-interface {v1, v0, v4}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 319
    .end local v0    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v1    # "httpRequest":Lcom/youku/network/IHttpRequest;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "userbean":Lcom/youku/vo/UserBean;
    :goto_0
    return-void

    .line 303
    :cond_0
    new-instance v4, Lcom/tudou/service/attention/AttentionManagerImpl$9;

    invoke-direct {v4, p0, p2}, Lcom/tudou/service/attention/AttentionManagerImpl$9;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl;Lcom/tudou/service/attention/IAttention$GetListCallBack;)V

    invoke-virtual {v4}, Lcom/tudou/service/attention/AttentionManagerImpl$9;->start()V

    goto :goto_0
.end method

.method public getAttentionListByAtt(ILcom/tudou/service/attention/IAttention$GetListCallBack;)V
    .locals 11
    .param p1, "pg"    # I
    .param p2, "callback"    # Lcom/tudou/service/attention/IAttention$GetListCallBack;

    .prologue
    const/4 v10, 0x1

    .line 212
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 213
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v7

    .line 214
    .local v7, "userbean":Lcom/youku/vo/UserBean;
    invoke-virtual {v7}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/youku/http/TudouURLContainer;->getAttentionListUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6, v10}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "formatUri":Ljava/lang/String;
    sget-boolean v8, Lcom/tudou/service/attention/AttentionManagerImpl;->isFirstAccess:Z

    if-eqz v8, :cond_1

    .line 220
    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 222
    :try_start_0
    invoke-static {v2}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "cacheDataStr":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 224
    new-instance v5, Lcom/youku/vo/Podcast;

    invoke-direct {v5}, Lcom/youku/vo/Podcast;-><init>()V

    .line 225
    .local v5, "podcast":Lcom/youku/vo/Podcast;
    invoke-static {v0, v5}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "podcast":Lcom/youku/vo/Podcast;
    check-cast v5, Lcom/youku/vo/Podcast;

    .line 227
    .restart local v5    # "podcast":Lcom/youku/vo/Podcast;
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/youku/vo/Podcast;->isFirstAccess:Z

    .line 228
    iget-object v8, v5, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v8, v8, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 229
    const-string v8, "testcacheAttention"

    const-string v9, "favour success"

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2, v5}, Lcom/tudou/service/attention/IAttention$GetListCallBack;->onSucess(Lcom/youku/vo/Podcast;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0    # "cacheDataStr":Ljava/lang/String;
    .end local v5    # "podcast":Lcom/youku/vo/Podcast;
    :cond_0
    :goto_0
    const/4 v8, 0x0

    sput-boolean v8, Lcom/tudou/service/attention/AttentionManagerImpl;->isFirstAccess:Z

    .line 240
    :cond_1
    const-class v8, Lcom/youku/network/IHttpRequest;

    invoke-static {v8, v10}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/network/IHttpRequest;

    .line 242
    .local v4, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v3, Lcom/youku/network/HttpIntent;

    const-string v8, "GET"

    invoke-direct {v3, v6, v8, v10}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 244
    .local v3, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v8, Lcom/tudou/service/attention/AttentionManagerImpl$6;

    invoke-direct {v8, p0, p2}, Lcom/tudou/service/attention/AttentionManagerImpl$6;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl;Lcom/tudou/service/attention/IAttention$GetListCallBack;)V

    invoke-interface {v4, v3, v8}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 276
    .end local v2    # "formatUri":Ljava/lang/String;
    .end local v3    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v4    # "httpRequest":Lcom/youku/network/IHttpRequest;
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "userbean":Lcom/youku/vo/UserBean;
    :goto_1
    return-void

    .line 233
    .restart local v2    # "formatUri":Ljava/lang/String;
    .restart local v6    # "url":Ljava/lang/String;
    .restart local v7    # "userbean":Lcom/youku/vo/UserBean;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 261
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "formatUri":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "userbean":Lcom/youku/vo/UserBean;
    :cond_2
    new-instance v8, Lcom/tudou/service/attention/AttentionManagerImpl$7;

    invoke-direct {v8, p0, p2}, Lcom/tudou/service/attention/AttentionManagerImpl$7;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl;Lcom/tudou/service/attention/IAttention$GetListCallBack;)V

    invoke-virtual {v8}, Lcom/tudou/service/attention/AttentionManagerImpl$7;->start()V

    goto :goto_1
.end method

.method public getLoaclAttentionCount()J
    .locals 2

    .prologue
    .line 915
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getLocalSubCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAttention(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p4, "callback"    # Lcom/tudou/service/attention/IAttention$GetCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tudou/service/attention/IAttention$GetCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 551
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 552
    invoke-static {p2, p3}, Lcom/youku/http/TudouURLContainer;->getAskAttention(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, "url":Ljava/lang/String;
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 555
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v3, "GET"

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 558
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/service/attention/AttentionManagerImpl$11;

    invoke-direct {v3, p0, p4}, Lcom/tudou/service/attention/AttentionManagerImpl$11;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl;Lcom/tudou/service/attention/IAttention$GetCallBack;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 613
    .end local v0    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v1    # "httpRequest":Lcom/youku/network/IHttpRequest;
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 587
    :cond_0
    new-instance v3, Lcom/tudou/service/attention/AttentionManagerImpl$12;

    invoke-direct {v3, p0, p2, p4, p1}, Lcom/tudou/service/attention/AttentionManagerImpl$12;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;Landroid/app/Activity;)V

    invoke-virtual {v3}, Lcom/tudou/service/attention/AttentionManagerImpl$12;->start()V

    goto :goto_0
.end method

.method public isAttention(Ljava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/tudou/service/attention/IAttention$CallBack;

    .prologue
    const/4 v4, 0x1

    .line 55
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getAttentionInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "url":Ljava/lang/String;
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 59
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v3, "GET"

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/service/attention/AttentionManagerImpl$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/tudou/service/attention/AttentionManagerImpl$1;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl;Lcom/tudou/service/attention/IAttention$CallBack;Ljava/lang/String;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 100
    .end local v0    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v1    # "httpRequest":Lcom/youku/network/IHttpRequest;
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v3, Lcom/tudou/service/attention/AttentionManagerImpl$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/tudou/service/attention/AttentionManagerImpl$2;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl;Ljava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V

    invoke-virtual {v3}, Lcom/tudou/service/attention/AttentionManagerImpl$2;->start()V

    goto :goto_0
.end method

.method public isAttention(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V
    .locals 1
    .param p3, "callback"    # Lcom/tudou/service/attention/IAttention$GetCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tudou/service/attention/IAttention$GetCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/tudou/service/attention/AttentionManagerImpl;->isAttention(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V

    .line 546
    return-void
.end method

.method public isContainAttention(J)Z
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 910
    invoke-static {p1, p2}, Lcom/youku/data/SQLiteManagerTudou;->isContainAttention(J)Z

    move-result v0

    return v0
.end method

.method public onUserLoginCallBack(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 323
    new-instance v0, Lcom/tudou/service/attention/AttentionManagerImpl$10;

    invoke-direct {v0, p0, p1}, Lcom/tudou/service/attention/AttentionManagerImpl$10;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/tudou/service/attention/AttentionManagerImpl$10;->start()V

    .line 519
    return-void
.end method

.method public onUserQuitCallBack()V
    .locals 0

    .prologue
    .line 530
    return-void
.end method

.method public uploadLocalAttention()V
    .locals 0

    .prologue
    .line 535
    return-void
.end method
