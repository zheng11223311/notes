.class public Lcom/tudou/detail/fragment/VideoPointFragment;
.super Landroid/app/Fragment;
.source "VideoPointFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/fragment/VideoPointFragment$OnPointItemClickListener;
    }
.end annotation


# static fields
.field public static final ANIMATION_NO:I = 0x0

.field public static final ANIMATION_SLIDE:I = 0x1

.field public static final BUNDLE_VIDEOURLINFO:Ljava/lang/String; = "bundle.videourlinfo"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public isDescExpand:Z

.field public mDesc:Landroid/widget/TextView;

.field public mDescGetHeight:Landroid/widget/TextView;

.field public mDescLayout:Landroid/view/ViewGroup;

.field public mExpandIcon:Landroid/widget/ImageView;

.field public mExpandText:Landroid/widget/TextView;

.field public mItemLayout:Landroid/view/ViewGroup;

.field public mLastAnimator:Landroid/animation/ValueAnimator;

.field private mOnCloseListener:Ljava/lang/Runnable;

.field public mOriDescHeight:I

.field public mPointItemClickLis:Lcom/tudou/detail/fragment/VideoPointFragment$OnPointItemClickListener;

.field public mScrollView:Landroid/widget/ScrollView;

.field public mTitle:Landroid/widget/TextView;

.field private mTitleLayout:Landroid/view/View;

.field public mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/tudou/detail/fragment/VideoPointFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/fragment/VideoPointFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->isDescExpand:Z

    .line 53
    iput v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mOriDescHeight:I

    .line 74
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/fragment/VideoPointFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoPointFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mOnCloseListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method private fillPointItem(Ljava/lang/String;Lcom/youku/player/goplay/Point;)V
    .locals 8
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "p"    # Lcom/youku/player/goplay/Point;

    .prologue
    .line 227
    if-eqz p2, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoPointFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300c7

    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mItemLayout:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 230
    .local v0, "layout":Landroid/widget/FrameLayout;
    const v3, 0x7f0c03be

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 231
    .local v2, "title":Landroid/widget/TextView;
    const v3, 0x7f0c03bf

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 233
    .local v1, "startTime":Landroid/widget/TextView;
    iget-object v3, p2, Lcom/youku/player/goplay/Point;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-wide v4, p2, Lcom/youku/player/goplay/Point;->start:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Lcom/youku/util/Util;->formatDuration(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    new-instance v3, Lcom/tudou/detail/fragment/VideoPointFragment$4;

    invoke-direct {v3, p0, p1, p2}, Lcom/tudou/detail/fragment/VideoPointFragment$4;-><init>(Lcom/tudou/detail/fragment/VideoPointFragment;Ljava/lang/String;Lcom/youku/player/goplay/Point;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 259
    .end local v0    # "layout":Landroid/widget/FrameLayout;
    .end local v1    # "startTime":Landroid/widget/TextView;
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public collapseDesc(Z)V
    .locals 11
    .param p1, "animate"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 262
    iput-boolean v9, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->isDescExpand:Z

    .line 263
    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mLastAnimator:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mLastAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 264
    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mLastAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->end()V

    .line 266
    :cond_0
    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    .line 267
    .local v6, "startScrollY":I
    const/4 v2, 0x0

    .line 269
    .local v2, "endScrollY":I
    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    .line 270
    .local v4, "startHeight":I
    iget v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mOriDescHeight:I

    .line 272
    .local v0, "endHeight":I
    const/16 v5, 0xb4

    .line 273
    .local v5, "startRotate":I
    const/4 v1, 0x0

    .line 275
    .local v1, "endRotate":I
    if-eqz p1, :cond_1

    .line 276
    new-array v7, v10, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    const-wide/16 v8, 0x15e

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 277
    .local v3, "scale":Landroid/animation/ValueAnimator;
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 278
    new-instance v7, Lcom/tudou/detail/fragment/VideoPointFragment$5;

    invoke-direct {v7, p0, v4, v0, v6}, Lcom/tudou/detail/fragment/VideoPointFragment$5;-><init>(Lcom/tudou/detail/fragment/VideoPointFragment;III)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 294
    new-instance v7, Lcom/tudou/detail/fragment/VideoPointFragment$6;

    invoke-direct {v7, p0}, Lcom/tudou/detail/fragment/VideoPointFragment$6;-><init>(Lcom/tudou/detail/fragment/VideoPointFragment;)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 311
    iput-object v3, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mLastAnimator:Landroid/animation/ValueAnimator;

    .line 312
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 321
    .end local v3    # "scale":Landroid/animation/ValueAnimator;
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mExpandIcon:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setRotation(F)V

    .line 315
    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 316
    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7, v9}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 317
    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 318
    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mExpandText:Landroid/widget/TextView;

    const-string v8, "\u5c55\u5f00"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 276
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public expandDesc()V
    .locals 10

    .prologue
    .line 324
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->isDescExpand:Z

    .line 325
    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mLastAnimator:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mLastAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 326
    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mLastAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->end()V

    .line 329
    :cond_0
    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    .line 330
    .local v4, "startHeight":I
    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mDescGetHeight:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 332
    .local v0, "endHeight":I
    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    .line 333
    .local v6, "startScrollY":I
    const/4 v2, 0x0

    .line 335
    .local v2, "endScrollY":I
    const/4 v5, 0x0

    .line 336
    .local v5, "startRotate":I
    const/16 v1, 0xb4

    .line 338
    .local v1, "endRotate":I
    iget v7, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mOriDescHeight:I

    if-nez v7, :cond_1

    .line 339
    iput v4, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mOriDescHeight:I

    .line 342
    :cond_1
    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    const-wide/16 v8, 0x15e

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 343
    .local v3, "scale":Landroid/animation/ValueAnimator;
    new-instance v7, Lcom/tudou/detail/fragment/VideoPointFragment$7;

    invoke-direct {v7, p0, v4, v0, v6}, Lcom/tudou/detail/fragment/VideoPointFragment$7;-><init>(Lcom/tudou/detail/fragment/VideoPointFragment;III)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 359
    new-instance v7, Lcom/tudou/detail/fragment/VideoPointFragment$8;

    invoke-direct {v7, p0}, Lcom/tudou/detail/fragment/VideoPointFragment$8;-><init>(Lcom/tudou/detail/fragment/VideoPointFragment;)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 376
    iput-object v3, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mLastAnimator:Landroid/animation/ValueAnimator;

    .line 377
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 378
    return-void

    .line 342
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    sget-object v0, Lcom/tudou/detail/fragment/VideoPointFragment;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 169
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {p0, v0}, Lcom/tudou/detail/fragment/VideoPointFragment;->setData(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 170
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    sget-object v0, Lcom/tudou/detail/fragment/VideoPointFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 87
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    sget-object v0, Lcom/tudou/detail/fragment/VideoPointFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 7
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 150
    sget-object v2, Lcom/tudou/detail/fragment/VideoPointFragment;->TAG:Ljava/lang/String;

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

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "o":Landroid/animation/ObjectAnimator;
    if-nez p3, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object v0

    .line 154
    :cond_1
    if-ne p3, v6, :cond_0

    .line 155
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 156
    .local v1, "values":[F
    const/4 v4, 0x0

    if-eqz p2, :cond_2

    sget v2, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    int-to-float v2, v2

    :goto_1
    aput v2, v1, v4

    .line 157
    if-eqz p2, :cond_3

    :goto_2
    aput v3, v1, v6

    .line 158
    const-string v2, "translationY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 159
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 160
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 156
    goto :goto_1

    .line 157
    :cond_3
    sget v2, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    int-to-float v3, v2

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    sget-object v1, Lcom/tudou/detail/fragment/VideoPointFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const v1, 0x7f0300c6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 404
    sget-object v0, Lcom/tudou/detail/fragment/VideoPointFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 406
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 398
    sget-object v0, Lcom/tudou/detail/fragment/VideoPointFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 400
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 410
    sget-object v0, Lcom/tudou/detail/fragment/VideoPointFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 412
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    sget-object v0, Lcom/tudou/detail/fragment/VideoPointFragment;->TAG:Ljava/lang/String;

    const-string v1, "onInflate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 386
    sget-object v0, Lcom/tudou/detail/fragment/VideoPointFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 388
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 181
    sget-object v0, Lcom/tudou/detail/fragment/VideoPointFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lcom/tudou/detail/fragment/VideoPointFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 176
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 392
    sget-object v0, Lcom/tudou/detail/fragment/VideoPointFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 394
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 105
    sget-object v0, Lcom/tudou/detail/fragment/VideoPointFragment;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const v0, 0x7f0c03b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 107
    const v0, 0x7f0c03b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mDescLayout:Landroid/view/ViewGroup;

    .line 108
    const v0, 0x7f0c03bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mItemLayout:Landroid/view/ViewGroup;

    .line 109
    const v0, 0x7f0c03b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mTitle:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0c03ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mDesc:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0c03b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mDescGetHeight:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0c03bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mExpandIcon:Landroid/widget/ImageView;

    .line 114
    const v0, 0x7f0c03bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mExpandText:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0c03b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mTitleLayout:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mTitleLayout:Landroid/view/View;

    new-instance v1, Lcom/tudou/detail/fragment/VideoPointFragment$1;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoPointFragment$1;-><init>(Lcom/tudou/detail/fragment/VideoPointFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mDesc:Landroid/widget/TextView;

    new-instance v1, Lcom/tudou/detail/fragment/VideoPointFragment$2;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoPointFragment$2;-><init>(Lcom/tudou/detail/fragment/VideoPointFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method

.method public setData(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 9
    .param p1, "info"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    const/4 v8, 0x0

    .line 185
    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mScrollView:Landroid/widget/ScrollView;

    const/16 v7, 0x21

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 186
    if-eqz p1, :cond_4

    .line 187
    iget-boolean v6, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->isDescExpand:Z

    if-eqz v6, :cond_0

    .line 188
    invoke-virtual {p0, v8}, Lcom/tudou/detail/fragment/VideoPointFragment;->collapseDesc(Z)V

    .line 190
    :cond_0
    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getItemDesc()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 193
    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mDescLayout:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 198
    :goto_0
    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mDescGetHeight:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getItemDesc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 201
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getPoints()Ljava/util/ArrayList;

    move-result-object v3

    .line 202
    .local v3, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/Point;>;"
    if-eqz v3, :cond_2

    .line 203
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/goplay/Point;

    .line 204
    .local v2, "p":Lcom/youku/player/goplay/Point;
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lcom/tudou/detail/fragment/VideoPointFragment;->fillPointItem(Ljava/lang/String;Lcom/youku/player/goplay/Point;)V

    goto :goto_1

    .line 195
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Lcom/youku/player/goplay/Point;
    .end local v3    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/Point;>;"
    :cond_1
    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mDescLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 196
    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 207
    .restart local v3    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/Point;>;"
    :cond_2
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/tudou/detail/fragment/VideoPointFragment$3;

    invoke-direct {v7, p0}, Lcom/tudou/detail/fragment/VideoPointFragment$3;-><init>(Lcom/tudou/detail/fragment/VideoPointFragment;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    .end local v0    # "desc":Ljava/lang/String;
    .end local v3    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/Point;>;"
    :cond_3
    :goto_2
    return-void

    .line 217
    :cond_4
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoPointFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 218
    .local v4, "tFm":Landroid/app/FragmentManager;
    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 219
    .local v5, "tTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v5, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I

    .line 220
    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mOnCloseListener:Ljava/lang/Runnable;

    if-eqz v6, :cond_3

    .line 221
    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mOnCloseListener:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mOnCloseListener:Ljava/lang/Runnable;

    .line 71
    return-void
.end method

.method public setOnPointItemClickListener(Lcom/tudou/detail/fragment/VideoPointFragment$OnPointItemClickListener;)V
    .locals 0
    .param p1, "lis"    # Lcom/tudou/detail/fragment/VideoPointFragment$OnPointItemClickListener;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mPointItemClickLis:Lcom/tudou/detail/fragment/VideoPointFragment$OnPointItemClickListener;

    .line 382
    return-void
.end method

.method public showExpandBtn(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 144
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mExpandIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment;->mExpandText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    return-void

    :cond_0
    move v0, v2

    .line 144
    goto :goto_0

    :cond_1
    move v1, v2

    .line 145
    goto :goto_1
.end method
