.class public Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;
.super Landroid/app/Fragment;
.source "FullScreenFragmentGoods.java"


# static fields
.field public static final ANIMATION_NO:I = 0x0

.field public static final ANIMATION_SLIDE:I = 0x1

.field public static final BUNDLE_GOODS:Ljava/lang/String; = "bundle.goods"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isVerticalScreen:Z

.field private mGoods:Lcom/tudou/detail/vo/GoodsInfo;

.field private mList:Landroid/widget/ListView;

.field private mOnCloseListener:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 104
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->TAG:Ljava/lang/String;

    const-string v2, "onActivityCreated"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 107
    const-string v1, "bundle.goods"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/GoodsInfo;

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->mGoods:Lcom/tudou/detail/vo/GoodsInfo;

    .line 108
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->mGoods:Lcom/tudou/detail/vo/GoodsInfo;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->mList:Landroid/widget/ListView;

    new-instance v2, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->mGoods:Lcom/tudou/detail/vo/GoodsInfo;

    iget-boolean v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->isVerticalScreen:Z

    invoke-direct {v2, v3, v4, v5}, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;-><init>(Landroid/content/Context;Lcom/tudou/detail/vo/GoodsInfo;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 10
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x43a00000    # 320.0f

    const/high16 v7, 0x43820000    # 260.0f

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 79
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->TAG:Ljava/lang/String;

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

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "o":Landroid/animation/ObjectAnimator;
    if-nez p3, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-object v0

    .line 83
    :cond_1
    if-ne p3, v6, :cond_0

    .line 84
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 86
    .local v1, "values":[F
    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->isVerticalScreen:Z

    if-eqz v2, :cond_4

    .line 87
    if-eqz p2, :cond_2

    invoke-static {v8}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    int-to-float v2, v2

    :goto_1
    aput v2, v1, v9

    .line 88
    if-eqz p2, :cond_3

    :goto_2
    aput v3, v1, v6

    .line 89
    const-string v2, "translationY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 95
    :goto_3
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-static {v8}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    int-to-float v3, v2

    goto :goto_2

    .line 91
    :cond_4
    if-eqz p2, :cond_5

    invoke-static {v7}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    int-to-float v2, v2

    :goto_4
    aput v2, v1, v9

    .line 92
    if-eqz p2, :cond_6

    :goto_5
    aput v3, v1, v6

    .line 93
    const-string v2, "translationX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_3

    :cond_5
    move v2, v3

    .line 91
    goto :goto_4

    .line 92
    :cond_6
    invoke-static {v7}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    int-to-float v3, v2

    goto :goto_5
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const v1, 0x7f0300ce

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 149
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 141
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 143
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 155
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->TAG:Ljava/lang/String;

    const-string v1, "onInflate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 131
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 124
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 118
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 137
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 73
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const v0, 0x7f0c03d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->mList:Landroid/widget/ListView;

    .line 75
    return-void
.end method

.method public setIsVerticalScreen(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->isVerticalScreen:Z

    .line 159
    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->mOnCloseListener:Ljava/lang/Runnable;

    .line 43
    return-void
.end method
