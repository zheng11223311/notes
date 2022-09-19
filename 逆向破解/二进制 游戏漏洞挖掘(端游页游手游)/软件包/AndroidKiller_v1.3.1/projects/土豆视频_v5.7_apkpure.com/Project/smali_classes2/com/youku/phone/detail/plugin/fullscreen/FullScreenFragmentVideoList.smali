.class public Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;
.super Landroid/app/Fragment;
.source "FullScreenFragmentVideoList.java"


# static fields
.field public static final ANIMATION_NO:I = 0x0

.field public static final ANIMATION_SLIDE:I = 0x1

.field public static final BUNDLE_ALBUM_ID:Ljava/lang/String; = "bundle.album.id"

.field public static final BUNDLE_ID:Ljava/lang/String; = "bundle.id"

.field public static final BUNDLE_PLAYLIST_ID:Ljava/lang/String; = "bundle.playlist.id"

.field public static final BUNDLE_TYPE:Ljava/lang/String; = "bundle.type"

.field public static final BUNDLE_VIDEO_FEATURE:Ljava/lang/String; = "bundle.video.feature"

.field public static final BUNDLE_VIDEO_ID:Ljava/lang/String; = "bundle.video.id"

.field public static final BUNDLE_VIDEO_LIST:Ljava/lang/String; = "bundle.video.list"

.field public static final BUNDLE_VIDEO_RECOMMEND:Ljava/lang/String; = "bundle.video.recommend"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private albumId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private mCurrenVid:Ljava/lang/String;

.field private mFeatureView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

.field private mIndicator:Landroid/widget/LinearLayout;

.field private mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field private mOnCloseListener:Ljava/lang/Runnable;

.field private mPlayListView:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

.field private mRecommendView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

.field private mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

.field private mVideoList:Lcom/tudou/detail/vo/VideoList;

.field private mVideoRecommend:Lcom/youku/vo/DetailRecomment;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private playlistId:Ljava/lang/String;

.field private type:Lcom/tudou/android/Youku$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 0
    .param p1, "mediaPlayer"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mIndicator:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;)Lcom/youku/player/plugin/MediaPlayerDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 281
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->TAG:Ljava/lang/String;

    const-string v2, "onActivityCreated"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 283
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 284
    const-string v1, "bundle.id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->id:Ljava/lang/String;

    .line 285
    const-string v1, "bundle.type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/tudou/android/Youku$Type;

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->type:Lcom/tudou/android/Youku$Type;

    .line 286
    const-string v1, "bundle.playlist.id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->playlistId:Ljava/lang/String;

    .line 287
    const-string v1, "bundle.album.id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->albumId:Ljava/lang/String;

    .line 289
    const-string v1, "bundle.video.id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mCurrenVid:Ljava/lang/String;

    .line 290
    const-string v1, "bundle.video.list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/VideoList;

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    .line 291
    const-string v1, "bundle.video.feature"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/DetailFeature;

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    .line 292
    const-string v1, "bundle.video.recommend"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailRecomment;

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mVideoRecommend:Lcom/youku/vo/DetailRecomment;

    .line 293
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->setupViews()V

    .line 296
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 99
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
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

    .line 263
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->TAG:Ljava/lang/String;

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

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "o":Landroid/animation/ObjectAnimator;
    if-nez p3, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-object v0

    .line 267
    :cond_1
    if-ne p3, v7, :cond_0

    .line 268
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 269
    .local v1, "values":[F
    const/4 v4, 0x0

    if-eqz p2, :cond_2

    invoke-static {v6}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    int-to-float v2, v2

    :goto_1
    aput v2, v1, v4

    .line 270
    if-eqz p2, :cond_3

    :goto_2
    aput v3, v1, v7

    .line 271
    const-string v2, "translationX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 272
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 273
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 269
    goto :goto_1

    .line 270
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
    .line 109
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const v1, 0x7f0300d0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 331
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 333
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 325
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 327
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 337
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 339
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->TAG:Ljava/lang/String;

    const-string v1, "onInflate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 93
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 313
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 315
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 306
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 308
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 300
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 302
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 319
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 321
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 117
    sget-object v4, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->TAG:Ljava/lang/String;

    const-string v5, "onViewCreated"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const v4, 0x7f0c03e0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mIndicator:Landroid/widget/LinearLayout;

    .line 119
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v4, :cond_1

    .line 120
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v4, v4, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-nez v4, :cond_0

    const-string v4, "local"

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    :cond_0
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mIndicator:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 127
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 128
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 129
    .local v3, "v":Landroid/view/View;
    move v1, v2

    .line 130
    .local v1, "finalI":I
    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$1;

    invoke-direct {v4, p0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    .end local v0    # "count":I
    .end local v1    # "finalI":I
    .end local v2    # "i":I
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mIndicator:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 137
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    :cond_3
    const v4, 0x7f0c03e4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 138
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$2;

    invoke-direct {v5, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 162
    return-void
.end method

.method public setCurrenVid(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "setSelectionOnly"    # Z

    .prologue
    .line 165
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrenVid vid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isResumed() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->isResumed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mCurrenVid:Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mCurrenVid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mPlayListView:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mCurrenVid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->setSelection(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-nez v0, :cond_0

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mFeatureView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mCurrenVid:Ljava/lang/String;

    if-nez p3, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->setCurrentVid(Ljava/lang/String;Z)V

    .line 175
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mRecommendView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mCurrenVid:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->setCurrentVid(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 174
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mOnCloseListener:Ljava/lang/Runnable;

    .line 87
    return-void
.end method

.method public setupViews()V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 182
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mViews:Ljava/util/ArrayList;

    .line 183
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 185
    .local v2, "tInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030261

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    iput-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mPlayListView:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    .line 186
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mPlayListView:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->id:Ljava/lang/String;

    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->albumId:Ljava/lang/String;

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->playlistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->type:Lcom/tudou/android/Youku$Type;

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->type:Lcom/tudou/android/Youku$Type;

    sget-object v10, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    if-ne v3, v10, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v6, v7, v8, v9, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->setBaseData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 187
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mPlayListView:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v3, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->setVideoList(Lcom/tudou/detail/vo/VideoList;)V

    .line 188
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mPlayListView:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->initialize()V

    .line 189
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mPlayListView:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mCurrenVid:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->setSelection(Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mViews:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mPlayListView:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v3, :cond_3

    .line 193
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v3, v3, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-nez v3, :cond_3

    const-string v3, "local"

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 194
    const v3, 0x7f030256

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    iput-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mFeatureView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    .line 195
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mFeatureView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    new-instance v6, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$3;

    invoke-direct {v6, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$3;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;)V

    invoke-virtual {v3, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->setOnFeatureItemClickListener(Lcom/tudou/detail/fragment/VideoFeatureFragment$OnFeatureItemClickListener;)V

    .line 229
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mFeatureView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mCurrenVid:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->setCurrentVid(Ljava/lang/String;Z)V

    .line 230
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mFeatureView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-virtual {v3, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->setFeature(Lcom/tudou/detail/vo/DetailFeature;)V

    .line 231
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mFeatureView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->initialize()V

    .line 233
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-virtual {v3}, Lcom/tudou/detail/vo/DetailFeature;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 234
    :cond_0
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mFeatureView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-virtual {v3, v5, v5, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->showLoading(ZZZ)V

    .line 236
    :cond_1
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mViews:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mFeatureView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 238
    const v3, 0x7f030262

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    iput-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mRecommendView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    .line 239
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mRecommendView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->id:Ljava/lang/String;

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->albumId:Ljava/lang/String;

    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->playlistId:Ljava/lang/String;

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->type:Lcom/tudou/android/Youku$Type;

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->type:Lcom/tudou/android/Youku$Type;

    sget-object v10, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    if-ne v9, v10, :cond_2

    move v5, v4

    :cond_2
    invoke-virtual {v3, v6, v7, v8, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->setBaseData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 240
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mRecommendView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mVideoRecommend:Lcom/youku/vo/DetailRecomment;

    invoke-virtual {v3, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->setRecommend(Lcom/youku/vo/DetailRecomment;)V

    .line 241
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mRecommendView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->initialize()V

    .line 242
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mViews:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mRecommendView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_3
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mViews:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v5}, Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 247
    .local v0, "adapter":Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 249
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v3, :cond_4

    .line 250
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v3, v3, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-nez v3, :cond_4

    const-string v3, "local"

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 251
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 252
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 253
    .local v1, "child":Landroid/widget/TextView;
    const-string v3, "#FF6600"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    const v3, 0x7f0201b4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 259
    .end local v1    # "child":Landroid/widget/TextView;
    :cond_4
    return-void

    .end local v0    # "adapter":Lcom/youku/phone/detail/plugin/fullscreen/DetailInteractionPagerAdapter;
    :cond_5
    move v3, v5

    .line 186
    goto/16 :goto_0
.end method
