.class public Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;
.super Landroid/app/Fragment;
.source "FullScreenFragmentPoint.java"


# static fields
.field public static final ANIMATION_NO:I = 0x0

.field public static final ANIMATION_SLIDE:I = 0x1

.field public static final BUNDLE_POINT:Ljava/lang/String; = "bundle.point"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mList:Landroid/widget/ListView;

.field private mOnCloseListener:Ljava/lang/Runnable;

.field mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->mPoints:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->mOnCloseListener:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->mPoints:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/tudou/detail/adapter/FullscreenFragmentPointAdapter;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->mPoints:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/tudou/detail/adapter/FullscreenFragmentPointAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint$1;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 166
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 66
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
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

    .line 90
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->TAG:Ljava/lang/String;

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

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "o":Landroid/animation/ObjectAnimator;
    if-nez p3, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 94
    :cond_1
    if-ne p3, v7, :cond_0

    .line 95
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 96
    .local v1, "values":[F
    const/4 v4, 0x0

    if-eqz p2, :cond_2

    invoke-static {v6}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    int-to-float v2, v2

    :goto_1
    aput v2, v1, v4

    .line 97
    if-eqz p2, :cond_3

    :goto_2
    aput v3, v1, v7

    .line 98
    const-string v2, "translationX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 99
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 100
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 96
    goto :goto_1

    .line 97
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
    .line 76
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const v1, 0x7f0300d2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 201
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 203
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 197
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 209
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->TAG:Ljava/lang/String;

    const-string v1, "onInflate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 185
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 178
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 170
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 172
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 191
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const v0, 0x7f0c03f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->mList:Landroid/widget/ListView;

    .line 86
    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->mOnCloseListener:Ljava/lang/Runnable;

    .line 54
    return-void
.end method
