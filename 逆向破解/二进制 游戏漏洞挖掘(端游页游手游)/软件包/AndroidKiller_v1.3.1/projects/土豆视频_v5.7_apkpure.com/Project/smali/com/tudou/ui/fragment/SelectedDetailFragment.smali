.class public Lcom/tudou/ui/fragment/SelectedDetailFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "SelectedDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;
    }
.end annotation


# static fields
.field private static final GET_SELECTED_DETAIL_FAILED:I = 0x2

.field private static final GET_SELECTED_DETAIL_NO_DATA:I = 0x3

.field private static final GET_SELECTED_DETAIL_SUCCESS:I = 0x1


# instance fields
.field private isPause:Z

.field private mAdapter:Lcom/tudou/adapter/SelectedDetailAdapter;

.field private mErrorLayout:Lcom/youku/widget/ErrorLayout;

.field private mHandler:Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;

.field private mHeader:Landroid/view/View;

.field private mHeaderDescTv:Landroid/widget/TextView;

.field private mHeaderPosterImg:Lcom/youku/widget/YoukuImageView;

.field private mHeaderTitleTv:Landroid/widget/TextView;

.field private mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field mRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

.field private mTitleTv:Landroid/widget/TextView;

.field private mUrl:Ljava/lang/String;

.field private mYaofengView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 64
    new-instance v0, Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;-><init>(Lcom/tudou/ui/fragment/SelectedDetailFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHandler:Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mUrl:Ljava/lang/String;

    .line 305
    new-instance v0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;-><init>(Lcom/tudou/ui/fragment/SelectedDetailFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SelectedDetailFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->isPause:Z

    return v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SelectedDetailFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/tudou/adapter/SelectedDetailAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SelectedDetailFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mAdapter:Lcom/tudou/adapter/SelectedDetailAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/SelectedDetailFragment;Lcom/youku/vo/SelectedListBean$Data;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SelectedDetailFragment;
    .param p1, "x1"    # Lcom/youku/vo/SelectedListBean$Data;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->refreshTileLayout(Lcom/youku/vo/SelectedListBean$Data;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/youku/widget/ErrorLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SelectedDetailFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mErrorLayout:Lcom/youku/widget/ErrorLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SelectedDetailFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tudou/ui/fragment/SelectedDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SelectedDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/SelectedDetailFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SelectedDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->refreshUI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SelectedDetailFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHandler:Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/SelectedDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SelectedDetailFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->initData()V

    return-void
.end method

.method private initData()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 199
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-nez v7, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 203
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 204
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "channelId"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "channelId":Ljava/lang/String;
    const-string v7, "moduleId"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "moduleId":Ljava/lang/String;
    const-string/jumbo v7, "title"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, "title":Ljava/lang/String;
    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v8, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHeader:Landroid/view/View;

    invoke-virtual {v7, v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeHeaderView(Landroid/view/View;)Z

    .line 209
    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v8, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHeader:Landroid/view/View;

    invoke-virtual {v7, v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 210
    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const-class v7, Lcom/youku/network/IHttpRequest;

    invoke-static {v7, v9}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/network/IHttpRequest;

    .line 212
    .local v3, "httpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {v1, v5}, Lcom/youku/http/TudouURLContainer;->getSelectedDetail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mUrl:Ljava/lang/String;

    .line 213
    new-instance v2, Lcom/youku/network/HttpIntent;

    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v7, v9}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 214
    .local v2, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v7, Lcom/tudou/ui/fragment/SelectedDetailFragment$1;

    invoke-direct {v7, p0, v3}, Lcom/tudou/ui/fragment/SelectedDetailFragment$1;-><init>(Lcom/tudou/ui/fragment/SelectedDetailFragment;Lcom/youku/network/IHttpRequest;)V

    invoke-interface {v3, v2, v7}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method private initViews(Landroid/view/View;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0c00a8

    .line 282
    const v2, 0x7f0c00a7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 283
    .local v0, "backImg":Landroid/widget/ImageView;
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mTitleTv:Landroid/widget/TextView;

    .line 284
    const v2, 0x7f0c0cce

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 285
    const v2, 0x7f0c0093

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/ErrorLayout;

    iput-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mErrorLayout:Lcom/youku/widget/ErrorLayout;

    .line 286
    new-instance v2, Lcom/tudou/adapter/SelectedDetailAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tudou/adapter/SelectedDetailAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mAdapter:Lcom/tudou/adapter/SelectedDetailAdapter;

    .line 287
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mAdapter:Lcom/tudou/adapter/SelectedDetailAdapter;

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 288
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 290
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v2, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 291
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 292
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHeader:Landroid/view/View;

    if-nez v2, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0302d4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHeader:Landroid/view/View;

    .line 294
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHeader:Landroid/view/View;

    const v3, 0x7f0c0ccf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/YoukuImageView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHeaderPosterImg:Lcom/youku/widget/YoukuImageView;

    .line 295
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHeader:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHeaderTitleTv:Landroid/widget/TextView;

    .line 296
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHeader:Landroid/view/View;

    const v3, 0x7f0c0cd0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHeaderDescTv:Landroid/widget/TextView;

    .line 297
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHeader:Landroid/view/View;

    const v3, 0x7f0c0cd4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mYaofengView:Landroid/view/View;

    .line 298
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mYaofengView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 301
    :cond_0
    const v2, 0x7f0c0094

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 302
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 303
    return-void
.end method

.method private refreshTileLayout(Lcom/youku/vo/SelectedListBean$Data;)V
    .locals 2
    .param p1, "base_module_inf"    # Lcom/youku/vo/SelectedListBean$Data;

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p1, Lcom/youku/vo/SelectedListBean$Data;->module_cover_image:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeHeaderView(Landroid/view/View;)Z

    .line 166
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 167
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHeaderPosterImg:Lcom/youku/widget/YoukuImageView;

    iget-object v1, p1, Lcom/youku/vo/SelectedListBean$Data;->module_cover_image:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->setImg(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHeaderTitleTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/youku/vo/SelectedListBean$Data;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mTitleTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/youku/vo/SelectedListBean$Data;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHeaderDescTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/youku/vo/SelectedListBean$Data;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mYaofengView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshUI(Ljava/lang/String;)V
    .locals 4
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 237
    const-class v2, Lcom/youku/vo/SelectedDetailBean;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SelectedDetailBean;

    .line 238
    .local v0, "bean":Lcom/youku/vo/SelectedDetailBean;
    iget-object v2, v0, Lcom/youku/vo/SelectedDetailBean;->module_inf:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/youku/vo/SelectedDetailBean;->module_inf:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHandler:Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;->sendEmptyMessage(I)Z

    .line 246
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 242
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 243
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 244
    iget-object v2, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHandler:Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;

    invoke-virtual {v2, v1}, Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setImg(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "posterImg"    # Landroid/widget/ImageView;
    .param p2, "cover_image"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 250
    const v1, 0x7f02087d

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    .line 255
    .local v0, "imageLoader":Lcom/nostra13/universalimageloader/core/ImageLoader;
    new-instance v1, Lcom/tudou/ui/fragment/SelectedDetailFragment$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/tudou/ui/fragment/SelectedDetailFragment$2;-><init>(Lcom/tudou/ui/fragment/SelectedDetailFragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 358
    :goto_0
    return-void

    .line 351
    :sswitch_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 354
    :sswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mErrorLayout:Lcom/youku/widget/ErrorLayout;

    invoke-virtual {v0}, Lcom/youku/widget/ErrorLayout;->dismiss()V

    .line 355
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_0

    .line 349
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
    .line 176
    const v1, 0x7f0302cf

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 177
    .local v0, "root":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->initViews(Landroid/view/View;)V

    .line 178
    iget-object v1, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mErrorLayout:Lcom/youku/widget/ErrorLayout;

    invoke-virtual {v1}, Lcom/youku/widget/ErrorLayout;->dismiss()V

    .line 179
    iget-object v1, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 180
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 69
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 70
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SelectedDetailBean$Data;

    .line 71
    .local v1, "data":Lcom/youku/vo/SelectedDetailBean$Data;
    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/youku/vo/SelectedDetailBean$Data;->skip_inf:Lcom/youku/vo/SkipInfo;

    if-nez v5, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v2, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v1, Lcom/youku/vo/SelectedDetailBean$Data;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v5, v5, Lcom/youku/vo/SkipInfo;->channel_id:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 76
    const-string/jumbo v5, "type"

    iget-object v6, v1, Lcom/youku/vo/SelectedDetailBean$Data;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v6, v6, Lcom/youku/vo/SkipInfo;->channel_id:Ljava/lang/String;

    invoke-static {v6}, Lcom/tudou/service/classify/ClassifyManager;->getChannelName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_2
    const-string v5, "ct"

    iget-object v6, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHeaderTitleTv:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "t1.cms_theme.videoclick.1_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v1, Lcom/youku/vo/SelectedDetailBean$Data;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v5, v5, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    if-nez v5, :cond_3

    const-string v5, ""

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 80
    iget-object v5, v1, Lcom/youku/vo/SelectedDetailBean$Data;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v4, v5, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    .line 81
    .local v4, "skipType":Ljava/lang/String;
    iget-object v3, v1, Lcom/youku/vo/SelectedDetailBean$Data;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 82
    .local v3, "skipInfo":Lcom/youku/vo/SkipInfo;
    iget-object v5, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v3, v5}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    goto :goto_0

    .line 79
    .end local v3    # "skipInfo":Lcom/youku/vo/SkipInfo;
    .end local v4    # "skipType":Ljava/lang/String;
    :cond_3
    iget-object v5, v1, Lcom/youku/vo/SelectedDetailBean$Data;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v5, v5, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 185
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 186
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->isPause:Z

    .line 187
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHandler:Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;->removeMessages(I)V

    .line 188
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHandler:Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;->removeMessages(I)V

    .line 189
    iget-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->mHandler:Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;->removeMessages(I)V

    .line 190
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment;->isPause:Z

    .line 196
    return-void
.end method
