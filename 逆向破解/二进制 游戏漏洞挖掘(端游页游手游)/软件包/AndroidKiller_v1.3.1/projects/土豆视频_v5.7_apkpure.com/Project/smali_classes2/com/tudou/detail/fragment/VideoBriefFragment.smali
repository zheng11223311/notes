.class public Lcom/tudou/detail/fragment/VideoBriefFragment;
.super Landroid/app/Fragment;
.source "VideoBriefFragment.java"


# static fields
.field public static final ANIMATION_NO:I = 0x0

.field public static final ANIMATION_SLIDE:I = 0x1

.field public static final BUNDLE_VIDEODETAIL:Ljava/lang/String; = "bundle.videodetail"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActors:Landroid/widget/TextView;

.field private mArea:Landroid/widget/TextView;

.field private mBtnAddShortCut:Landroid/widget/TextView;

.field private mCategory:Landroid/widget/TextView;

.field private mDesc:Landroid/widget/TextView;

.field private mDirector:Landroid/widget/TextView;

.field private mHintActors:Landroid/widget/TextView;

.field private mHintArea:Landroid/widget/TextView;

.field private mHintCategory:Landroid/widget/TextView;

.field private mHintDirector:Landroid/widget/TextView;

.field private mHintShowDate:Landroid/widget/TextView;

.field private mOnCloseListener:Ljava/lang/Runnable;

.field private mPicBitmap:Landroid/graphics/Bitmap;

.field private mPlaytimes:Landroid/widget/TextView;

.field private mShowDate:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleLayout:Landroid/view/View;

.field private mVideoDetail:Lcom/youku/vo/NewVideoDetail;

.field private mVideoPic:Landroid/widget/ImageView;

.field private mVideoType:Lcom/tudou/android/Youku$VideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/fragment/VideoBriefFragment;)Lcom/youku/vo/NewVideoDetail;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoBriefFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/fragment/VideoBriefFragment;)Lcom/tudou/android/Youku$VideoType;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoBriefFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/detail/fragment/VideoBriefFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoBriefFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mPicBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/tudou/detail/fragment/VideoBriefFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoBriefFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mPicBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/tudou/detail/fragment/VideoBriefFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoBriefFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mBtnAddShortCut:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/detail/fragment/VideoBriefFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoBriefFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mOnCloseListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/detail/fragment/VideoBriefFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoBriefFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoPic:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoPic:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    sget-object v1, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    sget-object v1, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoPic:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mDirector:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mActors:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mCategory:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mShowDate:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mArea:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mDesc:Landroid/widget/TextView;

    const-string v1, "\u7b80\uff01\u4ecb\uff01\u8fd8\uff01\u6ca1\uff01\u5199\uff01 "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoPic:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mPlaytimes:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mDirector:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mDesc:Landroid/widget/TextView;

    const-string v1, "\u7b80\uff01\u4ecb\uff01\u8fd8\uff01\u6ca1\uff01\u5199\uff01 "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 211
    sget-object v0, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 213
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 87
    sget-object v0, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    sget-object v0, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
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

    .line 194
    sget-object v2, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

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

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "o":Landroid/animation/ObjectAnimator;
    if-nez p3, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-object v0

    .line 198
    :cond_1
    if-ne p3, v6, :cond_0

    .line 199
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 200
    .local v1, "values":[F
    const/4 v4, 0x0

    if-eqz p2, :cond_2

    sget v2, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    int-to-float v2, v2

    :goto_1
    aput v2, v1, v4

    .line 201
    if-eqz p2, :cond_3

    :goto_2
    aput v3, v1, v6

    .line 202
    const-string v2, "translationY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 203
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 204
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 200
    goto :goto_1

    .line 201
    :cond_3
    sget v2, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    int-to-float v3, v2

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 99
    sget-object v2, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

    const-string v3, "onCreateView"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoBriefFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, "b":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 102
    .local v1, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 103
    const-string v2, "bundle.videodetail"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/NewVideoDetail;

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 104
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    invoke-static {v2}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    .line 105
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    sget-object v3, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    sget-object v3, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    const-string v3, "album"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    :cond_0
    const v2, 0x7f0300be

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 113
    :cond_1
    :goto_0
    return-object v1

    .line 109
    :cond_2
    const v2, 0x7f0300bf

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 373
    sget-object v0, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 375
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 367
    sget-object v0, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 369
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 379
    sget-object v0, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 381
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    sget-object v0, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

    const-string v1, "onInflate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 83
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 355
    sget-object v0, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 357
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 241
    sget-object v3, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

    const-string v4, "onResume"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoBriefFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 243
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 245
    :try_start_0
    const-string v3, "bundle.videodetail"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/NewVideoDetail;

    .line 246
    .local v1, "detail":Lcom/youku/vo/NewVideoDetail;
    invoke-virtual {p0, v1}, Lcom/tudou/detail/fragment/VideoBriefFragment;->setBaseData(Lcom/youku/vo/NewVideoDetail;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v1    # "detail":Lcom/youku/vo/NewVideoDetail;
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 252
    return-void

    .line 247
    :catch_0
    move-exception v2

    .line 248
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 235
    sget-object v0, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 237
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 361
    sget-object v0, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 363
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0c038d

    const v4, 0x7f0c0386

    const v3, 0x7f0c0382

    const v2, 0x7f0c0380

    .line 118
    sget-object v0, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    sget-object v1, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    sget-object v1, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    const v0, 0x7f0c0383

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mHintActors:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0c0385

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mHintDirector:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0c0387

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mHintCategory:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0c0389

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mHintArea:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0c038b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mHintShowDate:Landroid/widget/TextView;

    .line 126
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoPic:Landroid/widget/ImageView;

    .line 127
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mTitle:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0c0384

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mActors:Landroid/widget/TextView;

    .line 129
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mDirector:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0c0388

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mCategory:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0c038a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mArea:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0c038c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mShowDate:Landroid/widget/TextView;

    .line 133
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mDesc:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0c0381

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mBtnAddShortCut:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mBtnAddShortCut:Landroid/widget/TextView;

    new-instance v1, Lcom/tudou/detail/fragment/VideoBriefFragment$1;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoBriefFragment$1;-><init>(Lcom/tudou/detail/fragment/VideoBriefFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoPic:Landroid/widget/ImageView;

    new-instance v1, Lcom/tudou/detail/fragment/VideoBriefFragment$2;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoBriefFragment$2;-><init>(Lcom/tudou/detail/fragment/VideoBriefFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    const v0, 0x7f0c037e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mTitleLayout:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mTitleLayout:Landroid/view/View;

    new-instance v1, Lcom/tudou/detail/fragment/VideoBriefFragment$3;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoBriefFragment$3;-><init>(Lcom/tudou/detail/fragment/VideoBriefFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 190
    return-void

    .line 163
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mTitle:Landroid/widget/TextView;

    .line 164
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoPic:Landroid/widget/ImageView;

    .line 165
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mDesc:Landroid/widget/TextView;

    .line 166
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mDirector:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f0c038f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mPlaytimes:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public refreshBtnAddShortcur(Lcom/youku/vo/NewVideoDetail;)V
    .locals 4
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    const/16 v3, 0x8

    .line 216
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mBtnAddShortCut:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 217
    invoke-static {}, Lcom/tudou/detail/Test;->isBlack()Z

    move-result v2

    if-nez v2, :cond_3

    .line 218
    invoke-static {p1}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v1

    .line 219
    .local v1, "type":Lcom/tudou/android/Youku$VideoType;
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mBtnAddShortCut:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    if-eqz v1, :cond_1

    sget-object v2, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    sget-object v3, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    const-string v3, "album"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    :cond_0
    invoke-static {}, Lcom/tudou/detail/Test;->isUserIntentValidShortcut()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoBriefFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/tudou/detail/Test;->makeVideoShortcutIntent(Landroid/content/Context;Lcom/youku/vo/NewVideoDetail;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tudou/detail/Test;->hasShortcut(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    .line 223
    .local v0, "tHasShortcut":Z
    :goto_0
    if-nez v0, :cond_1

    .line 224
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mBtnAddShortCut:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    .end local v0    # "tHasShortcut":Z
    .end local v1    # "type":Lcom/tudou/android/Youku$VideoType;
    :cond_1
    :goto_1
    return-void

    .line 221
    .restart local v1    # "type":Lcom/tudou/android/Youku$VideoType;
    :cond_2
    iget-object v2, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    invoke-static {v2}, Lcom/tudou/detail/Test;->hasShortcut(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 228
    .end local v1    # "type":Lcom/tudou/android/Youku$VideoType;
    :cond_3
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mBtnAddShortCut:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setBaseData(Lcom/youku/vo/NewVideoDetail;)V
    .locals 9
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 279
    sget-object v4, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBaseData detail = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 281
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoBriefFragment;->clear()V

    .line 282
    if-eqz p1, :cond_4

    .line 283
    const-string v3, ""

    .line 284
    .local v3, "tImageUri":Ljava/lang/String;
    sget-object v4, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBaseData mVideoType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    sget-object v5, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    sget-object v5, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-ne v4, v5, :cond_f

    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    const-string v5, "album"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 287
    :cond_0
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mTitle:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "\u6682\u65e0"

    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->cid:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_6

    .line 292
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mHintActors:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mHintDirector:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mHintActors:Landroid/widget/TextView;

    const-string v5, "\u58f0\u4f18:"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mHintDirector:Landroid/widget/TextView;

    const-string v5, "\u7f16\u5bfc:"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->voiceActors:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/tudou/detail/Test;->getStringToArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "tActors":Ljava/lang/String;
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mActors:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "\u6682\u65e0"

    .end local v0    # "tActors":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->director:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/tudou/detail/Test;->getStringToArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "tDirector":Ljava/lang/String;
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mDirector:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v2, "\u6682\u65e0"

    .end local v2    # "tDirector":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :goto_1
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->categories:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/tudou/detail/Test;->getStringToArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "tCategory":Ljava/lang/String;
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mCategory:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v1, "\u6682\u65e0"

    .end local v1    # "tCategory":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mArea:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->area:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "\u6682\u65e0"

    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mShowDate:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->desc:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "\u6682\u65e0"

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v4, Lcom/youku/vo/NewVideoDetail$Detail;->channel_pic:Ljava/lang/String;

    .line 328
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mDesc:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->desc:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "\u7b80\uff01\u4ecb\uff01\u8fd8\uff01\u6ca1\uff01\u5199\uff01 "

    :goto_4
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    invoke-virtual {p0, p1}, Lcom/tudou/detail/fragment/VideoBriefFragment;->refreshBtnAddShortcur(Lcom/youku/vo/NewVideoDetail;)V

    .line 339
    :goto_5
    sget-object v4, Lcom/tudou/detail/fragment/VideoBriefFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLoadingComplete tImageUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    new-instance v5, Lcom/tudou/detail/fragment/VideoBriefFragment$4;

    invoke-direct {v5, p0}, Lcom/tudou/detail/fragment/VideoBriefFragment$4;-><init>(Lcom/tudou/detail/fragment/VideoBriefFragment;)V

    invoke-virtual {v4, v3, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 351
    .end local v3    # "tImageUri":Ljava/lang/String;
    :cond_4
    return-void

    .line 287
    .restart local v3    # "tImageUri":Ljava/lang/String;
    :cond_5
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 301
    :cond_6
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->cid:I

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_8

    .line 302
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mHintActors:Landroid/widget/TextView;

    const-string v5, "\u4e3b\u6301:"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mHintActors:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mHintDirector:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 306
    invoke-virtual {p1}, Lcom/youku/vo/NewVideoDetail;->getActorNames()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/tudou/detail/Test;->getStringToArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .restart local v0    # "tActors":Ljava/lang/String;
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mActors:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v0, "\u6682\u65e0"

    .end local v0    # "tActors":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 308
    :cond_8
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->cid:I

    const/16 v5, 0x1c

    if-ne v4, v5, :cond_9

    .line 309
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mHintActors:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mHintDirector:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 312
    :cond_9
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mHintActors:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mHintDirector:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 314
    invoke-virtual {p1}, Lcom/youku/vo/NewVideoDetail;->getActorNames()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/tudou/detail/Test;->getStringToArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .restart local v0    # "tActors":Ljava/lang/String;
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mActors:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v0, "\u6682\u65e0"

    .end local v0    # "tActors":Ljava/lang/String;
    :cond_a
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->director:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/tudou/detail/Test;->getStringToArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .restart local v2    # "tDirector":Ljava/lang/String;
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mDirector:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v2, "\u6682\u65e0"

    .end local v2    # "tDirector":Ljava/lang/String;
    :cond_b
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 323
    :cond_c
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->area:Ljava/lang/String;

    goto/16 :goto_2

    .line 324
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v6, v6, Lcom/youku/vo/NewVideoDetail$Detail;->showdate:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 328
    :cond_e
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->desc:Ljava/lang/String;

    goto/16 :goto_4

    .line 331
    :cond_f
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v4, Lcom/youku/vo/NewVideoDetail$Detail;->img_hd:Ljava/lang/String;

    .line 332
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mTitle:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "\u6682\u65e0"

    :goto_6
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mDirector:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v5, v5, Lcom/youku/vo/NewVideoDetail$Detail;->username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mPlaytimes:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v5, v5, Lcom/youku/vo/NewVideoDetail$Detail;->total_vv:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mDesc:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->desc:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "\u7b80\uff01\u4ecb\uff01\u8fd8\uff01\u6ca1\uff01\u5199\uff01 \u3002"

    :goto_7
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 332
    :cond_10
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    goto :goto_6

    .line 335
    :cond_11
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->desc:Ljava/lang/String;

    goto :goto_7
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoBriefFragment;->mOnCloseListener:Ljava/lang/Runnable;

    .line 74
    return-void
.end method
