.class public Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;
.super Landroid/app/Fragment;
.source "FullScreenFragmenQuality.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality$OnVideoQualityChangedListener;
    }
.end annotation


# static fields
.field public static final ANIMATION_NO:I = 0x0

.field public static final ANIMATION_SLIDE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBtnHigh:Landroid/widget/TextView;

.field private mBtnHighEnable:Z

.field private mBtnStand:Landroid/widget/TextView;

.field private mBtnStandEnable:Z

.field private mBtnSuper:Landroid/widget/TextView;

.field private mBtnSuperEnable:Z

.field private mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field private mOnCloseListener:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 0
    .param p1, "mediaPlayer"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 60
    return-void
.end method

.method private setHighEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mBtnHigh:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 109
    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mBtnHigh:Landroid/widget/TextView;

    const-string v1, "#8CCCCCCC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mBtnHigh:Landroid/widget/TextView;

    const-string v1, "#666666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setStdEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 117
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mBtnStand:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 118
    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mBtnStand:Landroid/widget/TextView;

    const-string v1, "#8CCCCCCC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mBtnStand:Landroid/widget/TextView;

    const-string v1, "#666666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setSuperEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mBtnSuper:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mBtnSuper:Landroid/widget/TextView;

    const-string v1, "#8CCCCCCC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mBtnSuper:Landroid/widget/TextView;

    const-string v1, "#666666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setupDefinitionRadioBtn()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->hasSegHD2()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mBtnSuperEnable:Z

    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->hasSegHD()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mBtnHighEnable:Z

    .line 81
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->hasSegSD()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mBtnStandEnable:Z

    .line 86
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->videoQualitySetting()V

    .line 87
    return-void
.end method

.method private videoQualitySetting()V
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mBtnSuperEnable:Z

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->setSuperEnable(Z)V

    .line 92
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mBtnHighEnable:Z

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->setHighEnable(Z)V

    .line 93
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mBtnStandEnable:Z

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->setStdEnable(Z)V

    .line 94
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 167
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->setupDefinitionRadioBtn()V

    .line 170
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 76
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 8
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x43820000    # 260.0f

    const/4 v3, 0x0

    .line 149
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateAnimator enter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "o":Landroid/animation/ObjectAnimator;
    if-nez p3, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    if-ne p3, v7, :cond_0

    .line 154
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 155
    .local v1, "values":[F
    const/4 v4, 0x0

    if-eqz p2, :cond_2

    invoke-static {v6}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    int-to-float v2, v2

    :goto_1
    aput v2, v1, v4

    .line 156
    if-eqz p2, :cond_3

    :goto_2
    aput v3, v1, v7

    .line 157
    const-string v2, "translationX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 158
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 159
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 155
    goto :goto_1

    .line 156
    :cond_3
    invoke-static {v6}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    int-to-float v3, v2

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const v1, 0x7f0300d4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 208
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 200
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 202
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 212
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 214
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->TAG:Ljava/lang/String;

    const-string v1, "onInflate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 190
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 183
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 175
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 177
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 196
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 140
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 141
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const v0, 0x7f0c03f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mBtnStand:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0c03f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mBtnHigh:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0c03fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mBtnSuper:Landroid/widget/TextView;

    .line 145
    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmenQuality;->mOnCloseListener:Ljava/lang/Runnable;

    .line 64
    return-void
.end method
