.class public abstract Lcom/tudou/ui/fragment/DetailBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "DetailBaseFragment.java"

# interfaces
.implements Lcom/youku/phone/detail/DetailMessage;


# static fields
.field private static final TAG:Ljava/lang/String; = "DetailBaseFragment"

.field private static viewpager:Landroid/support/v4/view/ViewPager;


# instance fields
.field public detailContentHandler:Landroid/os/Handler;

.field protected lock:[B

.field protected mLoading:Lcom/youku/widget/Loading;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tudou/ui/fragment/DetailBaseFragment;->lock:[B

    return-void
.end method


# virtual methods
.method public abstract OnChangerVideo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public dismissLoading()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailBaseFragment;->mLoading:Lcom/youku/widget/Loading;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailBaseFragment;->mLoading:Lcom/youku/widget/Loading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/Loading;->setVisibility(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public getCurVideoInfo()Lcom/youku/player/module/VideoUrlInfo;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 87
    .local v0, "activity":Lcom/tudou/ui/activity/DetailActivity;
    if-nez v0, :cond_1

    .line 95
    .end local v0    # "activity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_0
    :goto_0
    return-object v1

    .line 90
    .restart local v0    # "activity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_1
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    goto :goto_0
.end method

.method public getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/Youku;

    .line 101
    .local v0, "youku":Lcom/tudou/android/Youku;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DetailBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/android/Youku;->getImageWorker(Landroid/support/v4/app/FragmentActivity;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    .line 103
    .end local v0    # "youku":Lcom/tudou/android/Youku;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public initLoading(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    const v0, 0x7f0c012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/Loading;

    iput-object v0, p0, Lcom/tudou/ui/fragment/DetailBaseFragment;->mLoading:Lcom/youku/widget/Loading;

    .line 63
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailBaseFragment;->mLoading:Lcom/youku/widget/Loading;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailBaseFragment;->mLoading:Lcom/youku/widget/Loading;

    invoke-virtual {v0}, Lcom/youku/widget/Loading;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onChangeUser(Lcom/youku/vo/NewVideoDetail;)V
.end method

.method public abstract onGofullScreen()V
.end method

.method public abstract onSelected()V
.end method

.method public abstract onVideoinfogetFail()V
.end method

.method public setDetailHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tudou/ui/fragment/DetailBaseFragment;->detailContentHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method public showLoading()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailBaseFragment;->mLoading:Lcom/youku/widget/Loading;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailBaseFragment;->mLoading:Lcom/youku/widget/Loading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/Loading;->setVisibility(I)V

    .line 68
    :cond_0
    return-void
.end method
