.class public Lcom/youku/gamecenter/fragment/GameExtendFragment;
.super Lcom/youku/gamecenter/fragment/GameListFragment;
.source "GameExtendFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "extent_fragment"

    return-object v0
.end method

.method protected getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "12"

    return-object v0
.end method

.method protected getTabId()I
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x4

    return v0
.end method

.method protected getURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 24
    invoke-static {p1}, Lcom/youku/gamecenter/services/URLContainer;->getGameExtendPageUrl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v0, "13"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/fragment/GameExtendFragment;->setSliderSource(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method protected trackPageLoad()V
    .locals 9

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameExtendFragment;->trackedPageLoad:Z

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameExtendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "\u8fd0\u8425\u9875\u52a0\u8f7d"

    const-string v3, "gameOperationLoad"

    iget-wide v4, p0, Lcom/youku/gamecenter/fragment/GameExtendFragment;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "\u6e38\u620f\u8fd0\u8425\u9875"

    invoke-static/range {v1 .. v8}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackPageLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameExtendFragment;->trackedPageLoad:Z

    goto :goto_0
.end method
