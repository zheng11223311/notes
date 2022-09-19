.class public abstract Lcom/youku/gamecenter/fragment/GameRequestFragment;
.super Lcom/youku/gamecenter/fragment/GameBaseFragment;
.source "GameRequestFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG_PLAYFLOW:Ljava/lang/String;

.field protected isLoaddingDatas:Z

.field protected mEndPage:I

.field protected mIsAutoLoad:Z

.field private mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

.field private mNoResultView:Landroid/widget/RelativeLayout;

.field protected mPageCount:I

.field protected mStartTime:J

.field protected trackedPageLoad:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameBaseFragment;-><init>()V

    .line 19
    const-string v0, "PlayFlow"

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->TAG_PLAYFLOW:Ljava/lang/String;

    .line 21
    iput v2, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mEndPage:I

    .line 22
    iput v2, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mPageCount:I

    .line 24
    iput-boolean v2, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mIsAutoLoad:Z

    .line 25
    iput-boolean v2, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->isLoaddingDatas:Z

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mStartTime:J

    .line 28
    iput-boolean v2, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->trackedPageLoad:Z

    return-void
.end method

.method private fetchResponseDelay(I)V
    .locals 4
    .param p1, "page"    # I

    .prologue
    .line 122
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->doRequest(I)V

    .line 135
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mHander:Landroid/os/Handler;

    new-instance v1, Lcom/youku/gamecenter/fragment/GameRequestFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/gamecenter/fragment/GameRequestFragment$1;-><init>(Lcom/youku/gamecenter/fragment/GameRequestFragment;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method protected abstract addHeader(Landroid/widget/ListView;Landroid/view/LayoutInflater;)V
.end method

.method protected abstract contains(Ljava/lang/String;)Z
.end method

.method protected abstract doRequest(I)V
.end method

.method protected dumpLogs(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string v0, "GameCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method protected dumpPlayFlow(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->TAG_PLAYFLOW:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public fetchGameListByPage(I)V
    .locals 4
    .param p1, "page"    # I

    .prologue
    const/4 v1, 0x1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchGameListByPage("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->dumpPlayFlow(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    const-string v0, "fetchGameListByPage    getActivity=null , return!"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->dumpPlayFlow(Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->isNetWorkAvaliable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    iput-boolean v1, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mIsAutoLoad:Z

    .line 79
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->setLoadingFailedView()V

    goto :goto_0

    .line 83
    :cond_2
    iget-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->isLoaddingDatas:Z

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->hasNextPage()Z

    move-result v0

    if-nez v0, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->handleLastPageRefresh()V

    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    iget-boolean v0, v0, Lcom/youku/gamecenter/widgets/LoadingView;->isAniStart:Z

    if-eqz v0, :cond_4

    .line 95
    const-string v0, "fetchGameListByPage    mLoadingView.isAniStart=true , return!"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->dumpPlayFlow(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mStartTime:J

    .line 101
    if-ne p1, v1, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->setLoadingView(Z)V

    .line 103
    iput-boolean v1, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->isLoaddingDatas:Z

    .line 105
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->fetchResponseDelay(I)V

    goto :goto_0

    .line 101
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getPageCount(Lcom/youku/gamecenter/data/IResponseable;)I
    .locals 1
    .param p1, "data"    # Lcom/youku/gamecenter/data/IResponseable;

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method protected getSimpleClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getSource()Ljava/lang/String;
.end method

.method protected abstract getTabId()I
.end method

.method protected abstract getURL(I)Ljava/lang/String;
.end method

.method protected handleLastPageRefresh()V
    .locals 1

    .prologue
    .line 190
    sget v0, Lcom/youku/gamecenter/R$string;->tab_last_page_prompt:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->showToast(I)V

    .line 191
    return-void
.end method

.method protected hasNextPage()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 202
    iget v1, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mEndPage:I

    if-nez v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mEndPage:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mPageCount:I

    if-le v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initBaseViews(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "parentLayout"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    sget v0, Lcom/youku/gamecenter/R$id;->no_result_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mNoResultView:Landroid/widget/RelativeLayout;

    .line 62
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mNoResultView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    new-instance v0, Lcom/youku/gamecenter/widgets/LoadingView;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-direct {v0, v1, p2}, Lcom/youku/gamecenter/widgets/LoadingView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    .line 65
    return-void
.end method

.method protected abstract initViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract isGamesValid()Z
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mEndPage:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadDatas()V
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mEndPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->fetchGameListByPage(I)V

    .line 57
    return-void
.end method

.method public notifyFragmentFocused()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mNoResultView:Landroid/widget/RelativeLayout;

    if-ne v0, p1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->loadDatas()V

    .line 199
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mId:I

    .line 52
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->getTabId()I

    move-result v0

    goto :goto_0
.end method

.method public onNetworkAvailable()V
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->hasNextPage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mIsAutoLoad:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->loadDatas()V

    goto :goto_0
.end method

.method protected setLoadingFailedDatas()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->isLoaddingDatas:Z

    .line 156
    return-void
.end method

.method protected setLoadingFailedView()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 110
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mNoResultView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->isGamesValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameBaseActivity;->showNetTipsAutomatic()V

    .line 112
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setLoadingView(Z)V
    .locals 2
    .param p1, "showLoading"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mNoResultView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->startAnimation()V

    .line 119
    :cond_0
    return-void
.end method

.method protected abstract trackPageLoad()V
.end method

.method protected updateDatas(Lcom/youku/gamecenter/data/IResponseable;)V
    .locals 1
    .param p1, "data"    # Lcom/youku/gamecenter/data/IResponseable;

    .prologue
    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mIsAutoLoad:Z

    .line 146
    iput-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->isLoaddingDatas:Z

    .line 148
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->getPageCount(Lcom/youku/gamecenter/data/IResponseable;)I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mPageCount:I

    .line 150
    iget v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mEndPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mEndPage:I

    .line 152
    return-void
.end method

.method protected updateUI()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 140
    return-void
.end method
