.class public Lcom/tudou/ui/fragment/SelectedListFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "SelectedListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/SelectedListFragment$MyHandler;
    }
.end annotation


# static fields
.field private static final GET_SELECTED_LIST_FAILED:I = 0x2

.field private static final GET_SELECTED_LIST_NO_DATA:I = 0x3

.field private static final GET_SELECTED_LIST_SUCCESS:I = 0x1


# instance fields
.field private mAdapter:Lcom/tudou/adapter/SelectedListAdapter;

.field private mErrorLayout:Lcom/youku/widget/ErrorLayout;

.field private mHandler:Lcom/tudou/ui/fragment/SelectedListFragment$MyHandler;

.field private mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field mRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 52
    new-instance v0, Lcom/tudou/ui/fragment/SelectedListFragment$MyHandler;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SelectedListFragment$MyHandler;-><init>(Lcom/tudou/ui/fragment/SelectedListFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mHandler:Lcom/tudou/ui/fragment/SelectedListFragment$MyHandler;

    .line 165
    new-instance v0, Lcom/tudou/ui/fragment/SelectedListFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SelectedListFragment$1;-><init>(Lcom/tudou/ui/fragment/SelectedListFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SelectedListFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/tudou/adapter/SelectedListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SelectedListFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mAdapter:Lcom/tudou/adapter/SelectedListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/youku/widget/ErrorLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SelectedListFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mErrorLayout:Lcom/youku/widget/ErrorLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/SelectedListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SelectedListFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/tudou/ui/fragment/SelectedListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SelectedListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/SelectedListFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SelectedListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/SelectedListFragment;->refreshUI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/tudou/ui/fragment/SelectedListFragment$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SelectedListFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mHandler:Lcom/tudou/ui/fragment/SelectedListFragment$MyHandler;

    return-object v0
.end method

.method private initViews(Landroid/view/View;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 150
    const v2, 0x7f0c0093

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/ErrorLayout;

    iput-object v2, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mErrorLayout:Lcom/youku/widget/ErrorLayout;

    .line 151
    const v2, 0x7f0c00a7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 152
    .local v0, "backImg":Landroid/widget/ImageView;
    const v2, 0x7f0c0cce

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 153
    new-instance v2, Lcom/tudou/adapter/SelectedListAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SelectedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tudou/adapter/SelectedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mAdapter:Lcom/tudou/adapter/SelectedListAdapter;

    .line 154
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mAdapter:Lcom/tudou/adapter/SelectedListAdapter;

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v2, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 156
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 158
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v2, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 159
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 161
    const v2, 0x7f0c0094

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 162
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 163
    return-void
.end method

.method private refreshUI(Ljava/lang/String;)V
    .locals 4
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 242
    const-class v2, Lcom/youku/vo/SelectedListBean;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SelectedListBean;

    .line 243
    .local v1, "selectedListBean":Lcom/youku/vo/SelectedListBean;
    iget-object v2, v1, Lcom/youku/vo/SelectedListBean;->modules_inf:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/youku/vo/SelectedListBean;->modules_inf:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mHandler:Lcom/tudou/ui/fragment/SelectedListFragment$MyHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/tudou/ui/fragment/SelectedListFragment$MyHandler;->sendEmptyMessage(I)Z

    .line 251
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 247
    .local v0, "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 248
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 249
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mHandler:Lcom/tudou/ui/fragment/SelectedListFragment$MyHandler;

    invoke-virtual {v2, v0}, Lcom/tudou/ui/fragment/SelectedListFragment$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public initData()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 208
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SelectedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 209
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    const/4 v1, 0x0

    .line 210
    .local v1, "cid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 212
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "cid"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v1, "-1"

    .line 215
    :cond_1
    const-string v5, "SelectedListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initData(): cid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-class v5, Lcom/youku/network/IHttpRequest;

    invoke-static {v5, v8}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/network/IHttpRequest;

    .line 217
    .local v3, "httpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {v1}, Lcom/youku/http/TudouURLContainer;->getSelectedList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mUrl:Ljava/lang/String;

    .line 218
    new-instance v2, Lcom/youku/network/HttpIntent;

    iget-object v5, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v5, v8}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 219
    .local v2, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v5, Lcom/tudou/ui/fragment/SelectedListFragment$2;

    invoke-direct {v5, p0}, Lcom/tudou/ui/fragment/SelectedListFragment$2;-><init>(Lcom/tudou/ui/fragment/SelectedListFragment;)V

    invoke-interface {v3, v2, v5}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 239
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 59
    :sswitch_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SelectedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 62
    :sswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mErrorLayout:Lcom/youku/widget/ErrorLayout;

    invoke-virtual {v0}, Lcom/youku/widget/ErrorLayout;->dismiss()V

    .line 63
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0093 -> :sswitch_1
        0x7f0c00a7 -> :sswitch_0
    .end sparse-switch
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
    .line 143
    const v1, 0x7f0302d3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "root":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/SelectedListFragment;->initViews(Landroid/view/View;)V

    .line 145
    iget-object v1, p0, Lcom/tudou/ui/fragment/SelectedListFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 146
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
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
    .line 70
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SelectedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const-class v10, Lcom/tudou/ui/activity/SelectedDetailActivity;

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v6, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 73
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SelectedListBean$Data;

    .line 74
    .local v3, "data":Lcom/youku/vo/SelectedListBean$Data;
    iget-object v2, v3, Lcom/youku/vo/SelectedListBean$Data;->channel_id:Ljava/lang/String;

    .line 75
    .local v2, "channelId":Ljava/lang/String;
    iget-object v7, v3, Lcom/youku/vo/SelectedListBean$Data;->module_id:Ljava/lang/String;

    .line 76
    .local v7, "moduleId":Ljava/lang/String;
    iget-object v8, v3, Lcom/youku/vo/SelectedListBean$Data;->title:Ljava/lang/String;

    .line 77
    .local v8, "title":Ljava/lang/String;
    iget-object v5, v3, Lcom/youku/vo/SelectedListBean$Data;->module_cover_image:Ljava/lang/String;

    .line 78
    .local v5, "imgUrl":Ljava/lang/String;
    iget-object v4, v3, Lcom/youku/vo/SelectedListBean$Data;->sub_title:Ljava/lang/String;

    .line 79
    .local v4, "desc":Ljava/lang/String;
    const-string v9, "channelId"

    invoke-virtual {v1, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v9, "moduleId"

    invoke-virtual {v1, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v9, "title"

    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v9, "imgUrl"

    invoke-virtual {v1, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v9, "desc"

    invoke-virtual {v1, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v6, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SelectedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 86
    return-void
.end method
