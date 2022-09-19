.class public Lcom/youku/gamecenter/fragment/GameNetSelectedFragment;
.super Lcom/youku/gamecenter/fragment/GameListFragment;
.source "GameNetSelectedFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "selected_fragment"

    return-object v0
.end method

.method protected getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "45"

    return-object v0
.end method

.method protected getTabId()I
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x16

    return v0
.end method

.method protected getURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/youku/gamecenter/services/URLContainer;->getGameNetUrlByPageAndType(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const-string v0, "45"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/fragment/GameNetSelectedFragment;->setSliderSource(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method protected trackPageLoad()V
    .locals 9

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameNetSelectedFragment;->trackedPageLoad:Z

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameNetSelectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "\u7f51\u6e38\u7cbe\u9009\u9875\u52a0\u8f7d"

    const-string v3, "gameOperationLoad"

    iget-wide v4, p0, Lcom/youku/gamecenter/fragment/GameNetSelectedFragment;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "\u6e38\u620f\u8fd0\u8425\u9875"

    invoke-static/range {v1 .. v8}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackPageLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameNetSelectedFragment;->trackedPageLoad:Z

    goto :goto_0
.end method
