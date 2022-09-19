.class public abstract Lcom/youku/ui/ChannelSquareItemBaseFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "ChannelSquareItemBaseFragment.java"


# instance fields
.field protected isVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract lazyLoad()V
.end method

.method protected onInvisible()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method protected onVisible()V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/youku/ui/ChannelSquareItemBaseFragment;->lazyLoad()V

    .line 32
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->setUserVisibleHint(Z)V

    .line 17
    invoke-virtual {p0}, Lcom/youku/ui/ChannelSquareItemBaseFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/ui/ChannelSquareItemBaseFragment;->isVisible:Z

    .line 19
    invoke-virtual {p0}, Lcom/youku/ui/ChannelSquareItemBaseFragment;->onVisible()V

    .line 24
    :goto_0
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/ui/ChannelSquareItemBaseFragment;->isVisible:Z

    .line 22
    invoke-virtual {p0}, Lcom/youku/ui/ChannelSquareItemBaseFragment;->onInvisible()V

    goto :goto_0
.end method
