.class public Lcom/youku/gamecenter/fragment/GameRankFragment;
.super Lcom/youku/gamecenter/fragment/GameListFragment;
.source "GameRankFragment.java"


# instance fields
.field private first_load:Z

.field private mOnlineGameTextView:Landroid/widget/TextView;

.field private mRankTopLayout:Landroid/widget/LinearLayout;

.field private mSingleGameTextView:Landroid/widget/TextView;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 18
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;-><init>()V

    .line 25
    iput v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->type:I

    .line 26
    iput-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->first_load:Z

    return-void
.end method

.method private getTextViewBg(Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "focused"    # Z

    .prologue
    .line 138
    if-eqz p1, :cond_0

    sget v0, Lcom/youku/gamecenter/R$drawable;->game_tag_gridview_item_pressed:I

    .line 140
    .local v0, "resId":I
    :goto_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 138
    .end local v0    # "resId":I
    :cond_0
    sget v0, Lcom/youku/gamecenter/R$drawable;->game_tag_gridview_item_normal_tudou:I

    goto :goto_0
.end method

.method private updateRankTopUI()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    const v4, -0x777778

    const/4 v1, 0x1

    .line 124
    iget-object v3, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->mOnlineGameTextView:Landroid/widget/TextView;

    iget v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->type:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/fragment/GameRankFragment;->getTextViewBg(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->mSingleGameTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->type:I

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-direct {p0, v1}, Lcom/youku/gamecenter/fragment/GameRankFragment;->getTextViewBg(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->type:I

    if-nez v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->mOnlineGameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->mSingleGameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 124
    goto :goto_0

    :cond_1
    move v1, v2

    .line 125
    goto :goto_1

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->mOnlineGameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->mSingleGameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method


# virtual methods
.method protected addHeader(Landroid/widget/ListView;Landroid/view/LayoutInflater;)V
    .locals 2
    .param p1, "listview"    # Landroid/widget/ListView;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->first_load:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/youku/gamecenter/fragment/GameListFragment;->addHeader(Landroid/widget/ListView;Landroid/view/LayoutInflater;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->first_load:Z

    .line 69
    :cond_0
    return-void
.end method

.method public getFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "rank_fragment"

    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/youku/gamecenter/R$layout;->fragment_game_rankpage:I

    return v0
.end method

.method protected getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "10"

    return-object v0
.end method

.method protected getTabId()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x3

    return v0
.end method

.method protected getURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 40
    iget v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->type:I

    if-ltz v0, :cond_0

    .line 41
    iget v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->type:I

    invoke-static {p1, v0}, Lcom/youku/gamecenter/services/URLContainer;->getGameRankUrlByPageAndType(II)Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/youku/gamecenter/services/URLContainer;->getGameRankUrlByPage(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected initViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/youku/gamecenter/fragment/GameListFragment;->initViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "v":Landroid/view/View;
    sget v1, Lcom/youku/gamecenter/R$id;->layout_rank_top:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->mRankTopLayout:Landroid/widget/LinearLayout;

    .line 82
    sget v1, Lcom/youku/gamecenter/R$id;->rank_online_game:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->mOnlineGameTextView:Landroid/widget/TextView;

    .line 83
    sget v1, Lcom/youku/gamecenter/R$id;->rank_single_game:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->mSingleGameTextView:Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->mRankTopLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->mOnlineGameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->mSingleGameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameRankFragment;->updateRankTopUI()V

    .line 89
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameListFragment;->onClick(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->mOnlineGameTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 97
    iget-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->isLoaddingDatas:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->type:I

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->type:I

    .line 101
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRankFragment;->clearCurrentDatas()V

    .line 102
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameRankFragment;->updateRankTopUI()V

    .line 103
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRankFragment;->updateFooterView()V

    .line 104
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRankFragment;->loadDatas()V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->mSingleGameTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 109
    iget-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->isLoaddingDatas:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->type:I

    if-eq v0, v1, :cond_0

    .line 112
    iput v1, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->type:I

    .line 113
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRankFragment;->clearCurrentDatas()V

    .line 114
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameRankFragment;->updateRankTopUI()V

    .line 115
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRankFragment;->updateFooterView()V

    .line 116
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameRankFragment;->loadDatas()V

    goto :goto_0
.end method

.method protected trackPageLoad()V
    .locals 9

    .prologue
    .line 48
    const/4 v2, 0x0

    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "pltype":Ljava/lang/String;
    const/4 v8, 0x0

    .line 49
    .local v8, "page":Ljava/lang/String;
    const-string/jumbo v2, "\u6392\u884c\u699c\u9875\u52a0\u8f7d"

    .line 50
    const-string v3, "gameTopLoad"

    .line 51
    const-string/jumbo v8, "\u6e38\u620f\u6392\u884c\u699c"

    .line 52
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-wide v4, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static/range {v1 .. v8}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackPageLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/youku/gamecenter/fragment/GameRankFragment;->mStartTime:J

    .line 55
    return-void
.end method
