.class public Lcom/youku/gamecenter/fragment/GameNetNewestFragment;
.super Lcom/youku/gamecenter/fragment/GameListFragment;
.source "GameNetNewestFragment.java"


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
    const-string v0, "newest_fragment"

    return-object v0
.end method

.method protected getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "45"

    return-object v0
.end method

.method protected getTabId()I
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x18

    return v0
.end method

.method protected getURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 24
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/youku/gamecenter/services/URLContainer;->getGameNetUrlByPageAndType(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected trackPageLoad()V
    .locals 9

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameNetNewestFragment;->trackedPageLoad:Z

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameNetNewestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "\u7f51\u6e38\u6700\u65b0\u9875\u52a0\u8f7d"

    const-string v3, "gameOperationLoad"

    iget-wide v4, p0, Lcom/youku/gamecenter/fragment/GameNetNewestFragment;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "\u6e38\u620f\u8fd0\u8425\u9875"

    invoke-static/range {v1 .. v8}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackPageLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameNetNewestFragment;->trackedPageLoad:Z

    goto :goto_0
.end method
