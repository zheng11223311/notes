.class public Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;
.super Landroid/app/Fragment;
.source "FullScreenFragmentAnno.java"


# static fields
.field public static final ANIMATION_NO:I = 0x0

.field public static final ANIMATION_SLIDE:I = 0x1

.field public static final BUNDLE_ANNO:Ljava/lang/String; = "bundle.anno"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAnnos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Landroid/widget/ListView;

.field private mOnCloseListener:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->TAG:Ljava/lang/String;

    const-string v2, "onActivityCreated"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 109
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 110
    const-string v1, "bundle.anno"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->mAnnos:Ljava/util/ArrayList;

    .line 111
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->mAnnos:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->mList:Landroid/widget/ListView;

    new-instance v2, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->mAnnos:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/tudou/detail/adapter/FullscreenFragmentAnnoAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 65
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
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

    .line 89
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->TAG:Ljava/lang/String;

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

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "o":Landroid/animation/ObjectAnimator;
    if-nez p3, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :cond_1
    if-ne p3, v7, :cond_0

    .line 94
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 95
    .local v1, "values":[F
    const/4 v4, 0x0

    if-eqz p2, :cond_2

    invoke-static {v6}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    int-to-float v2, v2

    :goto_1
    aput v2, v1, v4

    .line 96
    if-eqz p2, :cond_3

    :goto_2
    aput v3, v1, v7

    .line 97
    const-string v2, "translationX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 98
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 95
    goto :goto_1

    .line 96
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
    .line 75
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const v1, 0x7f0300cc

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 150
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 152
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 146
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 158
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->TAG:Ljava/lang/String;

    const-string v1, "onInflate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 134
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 127
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 121
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 138
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 140
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const v0, 0x7f0c03d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->mList:Landroid/widget/ListView;

    .line 85
    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentAnno;->mOnCloseListener:Ljava/lang/Runnable;

    .line 53
    return-void
.end method
