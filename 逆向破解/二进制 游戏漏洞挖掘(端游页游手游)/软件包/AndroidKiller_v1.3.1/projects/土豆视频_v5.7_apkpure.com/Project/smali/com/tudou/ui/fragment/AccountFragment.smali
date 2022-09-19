.class public Lcom/tudou/ui/fragment/AccountFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "AccountFragment.java"

# interfaces
.implements Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;
    }
.end annotation


# static fields
.field public static final ACTION_DELETE_HISTORY:Ljava/lang/String; = "action_delete_history"

.field private static final MESSAGE_GONE:I = 0x4

.field private static final MESSAGE_VISBILE:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final USERINFO_FAILED:I = 0x0

.field private static final USERINFO_SUCESS:I = 0x1

.field public static isNeedRefresh:Z

.field private static sFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tudou/ui/fragment/AccountFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountHeadView:Lcom/youku/widget/AccountHeadView;

.field private mAdapter:Lcom/youku/adapter/AccountAdapter;

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mErrorLayout:Lcom/youku/widget/ErrorLayout;

.field private mHandler:Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/tudou/ui/fragment/AccountFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/ui/fragment/AccountFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 73
    new-instance v0, Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;-><init>(Lcom/tudou/ui/fragment/AccountFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mHandler:Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;

    .line 390
    new-instance v0, Lcom/tudou/ui/fragment/AccountFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/AccountFragment$3;-><init>(Lcom/tudou/ui/fragment/AccountFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/youku/widget/AccountHeadView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AccountFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAccountHeadView:Lcom/youku/widget/AccountHeadView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/youku/widget/ErrorLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AccountFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mErrorLayout:Lcom/youku/widget/ErrorLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/AccountFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AccountFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountFragment;->getVipStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/AccountFragment;Ljava/lang/String;)Lcom/youku/vo/UserBean;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AccountFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/AccountFragment;->parseAndSaveUserBean(Ljava/lang/String;)Lcom/youku/vo/UserBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/youku/adapter/AccountAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AccountFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AccountFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mHandler:Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/AccountFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AccountFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountFragment;->getHistory()V

    return-void
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/AccountFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AccountFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountFragment;->getDownLoadInfo()V

    return-void
.end method

.method private checkMessage()V
    .locals 3

    .prologue
    .line 437
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    invoke-static {}, Lcom/youku/util/MessageManager;->getInstance()Lcom/youku/util/MessageManager;

    move-result-object v0

    .line 439
    .local v0, "msgManager":Lcom/youku/util/MessageManager;
    new-instance v1, Lcom/tudou/ui/fragment/AccountFragment$4;

    invoke-direct {v1, p0, v0}, Lcom/tudou/ui/fragment/AccountFragment$4;-><init>(Lcom/tudou/ui/fragment/AccountFragment;Lcom/youku/util/MessageManager;)V

    invoke-virtual {v0, v1}, Lcom/youku/util/MessageManager;->getRefreshCount(Lcom/youku/util/IMessageFinish;)V

    .line 461
    .end local v0    # "msgManager":Lcom/youku/util/MessageManager;
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-static {}, Lcom/youku/util/MessageManager;->clearMessage()V

    .line 459
    iget-object v1, p0, Lcom/tudou/ui/fragment/AccountFragment;->mHandler:Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private getDownLoadInfo()V
    .locals 7

    .prologue
    .line 211
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    .line 212
    .local v0, "downloadManager":Lcom/tudou/service/download/DownloadManager;
    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->loadAlbumOpenedInfo()V

    .line 213
    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->getDownloadedListForAccount()Ljava/util/ArrayList;

    move-result-object v1

    .line 214
    .local v1, "downloadedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v2

    .line 215
    .local v2, "downloadingData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-direct {p0, v2}, Lcom/tudou/ui/fragment/AccountFragment;->hasDownloadingData(Ljava/util/HashMap;)Z

    move-result v3

    .line 216
    .local v3, "hasDownloadingData":Z
    iget-object v4, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {v4, v3}, Lcom/youku/adapter/AccountAdapter;->setDownloadingAnimationToggle(Z)V

    .line 217
    iget-object v4, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/youku/adapter/AccountAdapter;->setDownloadingCount(I)V

    .line 218
    iget-object v4, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {v4, v1}, Lcom/youku/adapter/AccountAdapter;->setCacheData(Ljava/util/ArrayList;)V

    .line 220
    :try_start_0
    const-string v4, "byron"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadedList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    iget-object v4, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->getAlbumMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/adapter/AccountAdapter;->setAlbumMap(Ljava/util/HashMap;)V

    .line 223
    iget-object v4, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {v4}, Lcom/youku/adapter/AccountAdapter;->notifyDataSetChanged()V

    .line 224
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountFragment;->getRecommendData()V

    .line 227
    :cond_0
    return-void

    .line 221
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getHistory()V
    .locals 3

    .prologue
    .line 247
    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->getInstance()Lcom/tudou/service/playhistory/PlayhistoryManagerImp;

    move-result-object v0

    .line 248
    .local v0, "historyManager":Lcom/tudou/service/playhistory/PlayhistoryManagerImp;
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p0}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->getPlayHistory(IILcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;)V

    .line 249
    return-void
.end method

.method private getRecommendData()V
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchManager;->getInstance(Landroid/app/Activity;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/AccountFragment;->mHandler:Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/SearchManager;->getAccountRecommend(Landroid/os/Handler;)V

    .line 244
    return-void
.end method

.method private getUserInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 313
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "userUrl":Ljava/lang/String;
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v5

    if-nez v5, :cond_1

    .line 315
    invoke-static {v4}, Lcom/tudou/android/TudouApi;->getLocalJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "localJson":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 317
    iget-object v5, p0, Lcom/tudou/ui/fragment/AccountFragment;->mHandler:Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;

    invoke-virtual {v5, v6}, Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;->sendEmptyMessage(I)Z

    .line 351
    .end local v2    # "localJson":Ljava/lang/String;
    :goto_0
    return-void

    .line 319
    .restart local v2    # "localJson":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/tudou/ui/fragment/AccountFragment;->mHandler:Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;

    invoke-virtual {v5, v6, v2}, Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 321
    .local v3, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/tudou/ui/fragment/AccountFragment;->mHandler:Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;

    invoke-virtual {v5, v3}, Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 325
    .end local v2    # "localJson":Ljava/lang/String;
    .end local v3    # "message":Landroid/os/Message;
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/widget/YoukuLoading;->showNoLimitTouchModel(Landroid/content/Context;)V

    .line 326
    iget-object v5, p0, Lcom/tudou/ui/fragment/AccountFragment;->mErrorLayout:Lcom/youku/widget/ErrorLayout;

    invoke-virtual {v5}, Lcom/youku/widget/ErrorLayout;->showLoadingLayout()V

    .line 327
    iget-object v5, p0, Lcom/tudou/ui/fragment/AccountFragment;->mErrorLayout:Lcom/youku/widget/ErrorLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/youku/widget/ErrorLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    const-class v5, Lcom/youku/network/IHttpRequest;

    invoke-static {v5, v7}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 329
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v7}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 330
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v5, Lcom/tudou/ui/fragment/AccountFragment$2;

    invoke-direct {v5, p0, v4}, Lcom/tudou/ui/fragment/AccountFragment$2;-><init>(Lcom/tudou/ui/fragment/AccountFragment;Ljava/lang/String;)V

    invoke-interface {v1, v0, v5}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method private getVipStatus()V
    .locals 3

    .prologue
    .line 149
    invoke-static {}, Lcom/youku/service/login/LoginManager;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v0

    new-instance v1, Lcom/tudou/ui/fragment/AccountFragment$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/AccountFragment$1;-><init>(Lcom/tudou/ui/fragment/AccountFragment;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/youku/service/login/ILogin;->updateMembership(Lcom/youku/service/login/ILogin$IMembershipCallBack;Z)V

    .line 156
    return-void
.end method

.method private hasDownloadingData(Ljava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "downloadingData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    const/4 v2, 0x0

    .line 231
    .local v2, "flag":I
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 232
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 234
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/service/download/DownloadInfo;

    .line 235
    .local v0, "downloadInfo":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v4

    if-nez v4, :cond_0

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "downloadInfo":Lcom/tudou/service/download/DownloadInfo;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_1
    if-eqz v2, :cond_2

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountFragment;->getUserInfo()V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAccountHeadView:Lcom/youku/widget/AccountHeadView;

    invoke-virtual {v0}, Lcom/youku/widget/AccountHeadView;->refreshLoginLayout()V

    goto :goto_0
.end method

.method private initViews(Landroid/view/View;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 253
    const v1, 0x7f0c0091

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/AccountHeadView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAccountHeadView:Lcom/youku/widget/AccountHeadView;

    .line 254
    const v1, 0x7f0c0092

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/AccountFragment;->mListView:Landroid/widget/ListView;

    .line 255
    const v1, 0x7f0c0093

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/ErrorLayout;

    iput-object v1, p0, Lcom/tudou/ui/fragment/AccountFragment;->mErrorLayout:Lcom/youku/widget/ErrorLayout;

    .line 256
    new-instance v1, Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/youku/adapter/AccountAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    .line 257
    iget-object v1, p0, Lcom/tudou/ui/fragment/AccountFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    iget-object v1, p0, Lcom/tudou/ui/fragment/AccountFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 259
    iget-object v1, p0, Lcom/tudou/ui/fragment/AccountFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 260
    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->getInstance()Lcom/tudou/service/playhistory/PlayhistoryManagerImp;

    move-result-object v0

    .line 261
    .local v0, "instance":Lcom/tudou/service/playhistory/PlayhistoryManagerImp;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->isGetCache:Z

    .line 262
    return-void
.end method

.method public static onActivityResult(ILandroid/content/Intent;)V
    .locals 5
    .param p0, "resultCode"    # I
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 472
    const/16 v4, 0x7d0

    if-ne p0, v4, :cond_0

    .line 473
    sget-object v4, Lcom/tudou/ui/fragment/AccountFragment;->sFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/AccountFragment;

    .line 474
    .local v0, "accountFragment":Lcom/tudou/ui/fragment/AccountFragment;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 475
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v4, "userIcon"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 476
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v4, "userName"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, "userName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/AccountFragment;->refreshUserIcon(Landroid/graphics/Bitmap;)V

    .line 478
    invoke-direct {v0, v3}, Lcom/tudou/ui/fragment/AccountFragment;->refreshUserName(Ljava/lang/String;)V

    .line 480
    .end local v0    # "accountFragment":Lcom/tudou/ui/fragment/AccountFragment;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "userName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private onHistoryClick()V
    .locals 5

    .prologue
    .line 300
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    const-string/jumbo v2, "\u6211\u7684\u7a7a\u95f4\u5386\u53f2\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v3, "\u89c2\u770b\u8bb0\u5f55"

    const-string v4, "myChannel|history"

    invoke-virtual {v1, v2, v3, v4}, Lcom/youku/adapter/AccountAdapter;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v0, "goHistory":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 307
    return-void
.end method

.method private parseAndSaveUserBean(Ljava/lang/String;)Lcom/youku/vo/UserBean;
    .locals 4
    .param p1, "userInfoJsonStr"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Lcom/youku/http/ParseJson;

    invoke-direct {v0, p1}, Lcom/youku/http/ParseJson;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "parsejson":Lcom/youku/http/ParseJson;
    invoke-virtual {v0}, Lcom/youku/http/ParseJson;->parseTudouUserInfo()Lcom/youku/vo/UserInfo;

    move-result-object v2

    .line 161
    .local v2, "userInfo":Lcom/youku/vo/UserInfo;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    .line 162
    .local v1, "userBean":Lcom/youku/vo/UserBean;
    iget-object v3, v2, Lcom/youku/vo/UserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/youku/vo/UserBean;->setNickName(Ljava/lang/String;)V

    .line 163
    iget-object v3, v2, Lcom/youku/vo/UserInfo;->userpicurl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/youku/vo/UserBean;->setUserPic(Ljava/lang/String;)V

    .line 164
    iget v3, v2, Lcom/youku/vo/UserInfo;->sub_count:I

    invoke-virtual {v1, v3}, Lcom/youku/vo/UserBean;->setSubed_count(I)V

    .line 165
    iget v3, v2, Lcom/youku/vo/UserInfo;->uploadCount:I

    invoke-virtual {v1, v3}, Lcom/youku/vo/UserBean;->setUploadCount(I)V

    .line 166
    iget-boolean v3, v2, Lcom/youku/vo/UserInfo;->isVuser:Z

    invoke-virtual {v1, v3}, Lcom/youku/vo/UserBean;->setVuser(Z)V

    .line 167
    iget-object v3, v2, Lcom/youku/vo/UserInfo;->about_myself:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/youku/vo/UserBean;->setAbout_myself(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->saveLocal()V

    .line 169
    return-object v1
.end method

.method private refreshUserName(Ljava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAccountHeadView:Lcom/youku/widget/AccountHeadView;

    invoke-virtual {v0, p1}, Lcom/youku/widget/AccountHeadView;->refreshUserName(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method private registerBroadCastReceiver()V
    .locals 3

    .prologue
    .line 403
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 404
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 406
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    const-string v1, "com.tudou.serivce.download.ACTION_DOWNLOAD_NEEDREFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_SDCRAD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    const-string v1, "com.tudou.service.download.ACTION_SDCARD_PATH_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    const-string v1, "action_delete_history"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountFragment;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 412
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 3

    .prologue
    .line 416
    :try_start_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountFragment;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mErrorLayout:Lcom/youku/widget/ErrorLayout;

    if-ne p1, v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountFragment;->initData()V

    .line 80
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 174
    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, "root":Landroid/view/View;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/tudou/ui/fragment/AccountFragment;->sFragment:Ljava/lang/ref/WeakReference;

    .line 176
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/AccountFragment;->initViews(Landroid/view/View;)V

    .line 177
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountFragment;->initData()V

    .line 178
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountFragment;->registerBroadCastReceiver()V

    .line 179
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountFragment;->checkMessage()V

    .line 180
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountFragment;->unregisterBroadcastReceiver()V

    .line 430
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 431
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v4, "account_click_key"

    const-wide/16 v6, 0x12c

    invoke-static {v4, v6, v7}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 297
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v4, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {v4, p3}, Lcom/youku/adapter/AccountAdapter;->getItemViewType(I)I

    move-result v3

    .line 270
    .local v3, "type":I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 294
    :pswitch_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountFragment;->onHistoryClick()V

    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v4, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {v4, p3}, Lcom/youku/adapter/AccountAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/HistoryVideo;

    .line 273
    .local v1, "historyVideo":Lcom/youku/vo/HistoryVideo;
    invoke-virtual {v1}, Lcom/youku/vo/HistoryVideo;->getPlaytype()I

    move-result v2

    .line 274
    .local v2, "playType":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, v1, Lcom/youku/vo/HistoryVideo;->showid:Ljava/lang/String;

    iget-object v6, v1, Lcom/youku/vo/HistoryVideo;->title:Ljava/lang/String;

    iget v7, v1, Lcom/youku/vo/HistoryVideo;->stage:I

    invoke-static {v4, v5, v6, v7}, Lcom/tudou/android/TudouApi;->goPlayerWithvideoStage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, v1, Lcom/youku/vo/HistoryVideo;->itemCode:Ljava/lang/String;

    sget-object v6, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v7, v1, Lcom/youku/vo/HistoryVideo;->title:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    .end local v1    # "historyVideo":Lcom/youku/vo/HistoryVideo;
    .end local v2    # "playType":I
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/tudou/ui/activity/CacheActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .local v0, "cacheIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onLoadCacheDataFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "failedReason"    # Ljava/lang/String;

    .prologue
    .line 355
    return-void
.end method

.method public onLoadCacheDataSuccess(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "totalCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideo;>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {v0, p2}, Lcom/youku/adapter/AccountAdapter;->setPlayHistoryData(Ljava/util/ArrayList;)V

    .line 360
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/AccountAdapter;->notifyDataSetChanged()V

    .line 361
    return-void
.end method

.method public onLoadLocalDataFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failedReason"    # Ljava/lang/String;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/adapter/AccountAdapter;->setPlayHistoryData(Ljava/util/ArrayList;)V

    .line 366
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/AccountAdapter;->notifyDataSetChanged()V

    .line 367
    return-void
.end method

.method public onLoadLocalDataSuccess(ILjava/util/ArrayList;)V
    .locals 3
    .param p1, "totalCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideo;>;"
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account history result==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {v0, p2}, Lcom/youku/adapter/AccountAdapter;->setPlayHistoryData(Ljava/util/ArrayList;)V

    .line 373
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/AccountAdapter;->notifyDataSetChanged()V

    .line 374
    return-void
.end method

.method public onLoadServerDataFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "failedReason"    # Ljava/lang/String;

    .prologue
    .line 382
    return-void
.end method

.method public onLoadServerDataSuccess(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "totalCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideo;>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {v0, p2}, Lcom/youku/adapter/AccountAdapter;->setPlayHistoryData(Ljava/util/ArrayList;)V

    .line 387
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAdapter:Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/AccountAdapter;->notifyDataSetChanged()V

    .line 388
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 424
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 425
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 185
    const-string v0, "account_click_key"

    invoke-static {v0}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    sget-boolean v0, Lcom/tudou/ui/fragment/AccountFragment;->isNeedRefresh:Z

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountFragment;->initData()V

    .line 188
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/AccountFragment;->isNeedRefresh:Z

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountFragment;->getHistory()V

    .line 191
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountFragment;->getDownLoadInfo()V

    .line 193
    :cond_1
    const-string v0, "TAG_TUDOU"

    const-string v1, "account onResume"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 195
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onStart()V

    .line 200
    return-void
.end method

.method public refreshNewMsgIcon(I)V
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 464
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAccountHeadView:Lcom/youku/widget/AccountHeadView;

    invoke-virtual {v0, p1}, Lcom/youku/widget/AccountHeadView;->refreshNewMsgIcon(I)V

    .line 465
    return-void
.end method

.method public refreshUserIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment;->mAccountHeadView:Lcom/youku/widget/AccountHeadView;

    invoke-virtual {v0, p1}, Lcom/youku/widget/AccountHeadView;->refreshUserIcon(Landroid/graphics/Bitmap;)V

    .line 469
    return-void
.end method
