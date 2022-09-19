.class public Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;
.super Landroid/widget/FrameLayout;
.source "FullScreenRightPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurFragment:Landroid/app/Fragment;

.field private mCurState:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mInnerView:Landroid/widget/FrameLayout;

.field private mOnSubFragmentCloseListener:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$1;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    .line 43
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mFragmentManager:Landroid/app/FragmentManager;

    .line 44
    return-void
.end method

.method static synthetic access$002(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;
    .param p1, "x1"    # Landroid/app/Fragment;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurFragment:Landroid/app/Fragment;

    return-object p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 76
    .local v0, "action":I
    sget-object v3, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchTouchEvent action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 79
    .local v1, "handle":Z
    if-nez v1, :cond_0

    .line 80
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    move v1, v2

    .line 88
    .end local v1    # "handle":Z
    :cond_0
    :goto_0
    return v1

    .line 82
    .restart local v1    # "handle":Z
    :cond_1
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_0

    if-ne v0, v2, :cond_0

    .line 83
    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->removeAllFragment(I)V

    move v1, v2

    .line 84
    goto :goto_0
.end method

.method public getCurrentState()Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurState:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    return-object v0
.end method

.method public initialize(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;Landroid/os/Bundle;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 5
    .param p1, "state"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;
    .param p2, "b"    # Landroid/os/Bundle;
    .param p3, "mediaPlayer"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    const/4 v4, 0x1

    .line 110
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 111
    .local v1, "tTransaction":Landroid/app/FragmentTransaction;
    const/4 v0, 0x0

    .line 112
    .local v0, "fragment":Landroid/app/Fragment;
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->GOODS:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    if-ne p1, v2, :cond_1

    .line 113
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;-><init>()V

    .restart local v0    # "fragment":Landroid/app/Fragment;
    move-object v2, v0

    .line 114
    check-cast v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 115
    invoke-virtual {v1, v4, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 116
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 146
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurState:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    .line 147
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurFragment:Landroid/app/Fragment;

    .line 148
    const v2, 0x7f0c0bc7

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 149
    return-void

    .line 117
    :cond_1
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->POINT:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    if-ne p1, v2, :cond_2

    .line 118
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;

    .end local v0    # "fragment":Landroid/app/Fragment;
    iget-object v2, p3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;-><init>(Lcom/youku/player/module/VideoUrlInfo;)V

    .restart local v0    # "fragment":Landroid/app/Fragment;
    move-object v2, v0

    .line 119
    check-cast v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 120
    invoke-virtual {v1, v4, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 121
    :cond_2
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    if-ne p1, v2, :cond_3

    .line 122
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;-><init>()V

    .restart local v0    # "fragment":Landroid/app/Fragment;
    move-object v2, v0

    .line 123
    check-cast v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 124
    invoke-virtual {v1, v4, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 125
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 126
    :cond_3
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->MORE:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    if-ne p1, v2, :cond_4

    .line 127
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-direct {v0, p3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .restart local v0    # "fragment":Landroid/app/Fragment;
    move-object v2, v0

    .line 128
    check-cast v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {v1, v4, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 130
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 131
    :cond_4
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->PLAYLIST:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    if-ne p1, v2, :cond_5

    .line 132
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-direct {v0, p3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .restart local v0    # "fragment":Landroid/app/Fragment;
    move-object v2, v0

    .line 133
    check-cast v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 134
    invoke-virtual {v1, v4, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 135
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 136
    :cond_5
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    if-ne p1, v2, :cond_6

    .line 137
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;-><init>()V

    .restart local v0    # "fragment":Landroid/app/Fragment;
    move-object v2, v0

    .line 138
    check-cast v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {v1, v4, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 140
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 141
    :cond_6
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->QUALITY:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    if-ne p1, v2, :cond_0

    .line 142
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-direct {v0, p3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .restart local v0    # "fragment":Landroid/app/Fragment;
    move-object v2, v0

    .line 143
    check-cast v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 144
    invoke-virtual {v1, v4, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 58
    const v0, 0x7f0c0bc7

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mInnerView:Landroid/widget/FrameLayout;

    .line 59
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 52
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 53
    return-void
.end method

.method public onVideoChanged()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurState:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurState:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurState:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->POINT:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurState:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->GOODS:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    if-ne v0, v1, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->removeAllFragment(I)V

    .line 71
    :cond_1
    return-void
.end method

.method public onVolumnChange(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurState:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->MORE:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->updateVolumeView()V

    .line 156
    :cond_0
    return-void
.end method

.method public removeAllFragment()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->removeAllFragment(I)V

    .line 93
    return-void
.end method

.method public removeAllFragment(I)V
    .locals 4
    .param p1, "anim"    # I

    .prologue
    .line 96
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 99
    .local v1, "tTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v1, p1, p1}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 100
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 101
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurState:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    .line 102
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurFragment:Landroid/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "tTransaction":Landroid/app/FragmentTransaction;
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setCurrentVid(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "setSelectionOnly"    # Z

    .prologue
    .line 62
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurState:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->PLAYLIST:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->mCurFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->setCurrenVid(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 65
    :cond_0
    return-void
.end method
