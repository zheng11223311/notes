.class public Lcom/youku/gamecenter/GameVideoActivity;
.super Lcom/youku/gamecenter/GameBaseActivity;
.source "GameVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;


# static fields
.field private static final NOT_SHOW_PROGRESS:I = 0x2

.field private static final SHOW_PROGRESS:I = 0x1

.field private static final TIME_OUT:I = 0x3


# instance fields
.field final handler:Landroid/os/Handler;

.field private mActionBtn:Landroid/widget/TextView;

.field private mBottomView:Lcom/youku/gamecenter/player/GameVideoBottomView;

.field private mErrorView:Landroid/view/View;

.field private mFinalUrl:Ljava/lang/String;

.field private mGameIcon:Landroid/widget/ImageView;

.field mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

.field private mGameLayout:Landroid/view/View;

.field private mGameName:Landroid/widget/TextView;

.field private mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

.field private mPackageName:Ljava/lang/String;

.field private mPosition:I

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTitle:Ljava/lang/String;

.field private mTopView:Lcom/youku/gamecenter/player/GameVideoTopView;

.field private mType:I

.field private mVid:Ljava/lang/String;

.field private mVideoProgress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;-><init>()V

    .line 236
    new-instance v0, Lcom/youku/gamecenter/GameVideoActivity$5;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/GameVideoActivity$5;-><init>(Lcom/youku/gamecenter/GameVideoActivity;)V

    iput-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/GameVideoActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameVideoActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/GameVideoActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameVideoActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/GameVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameVideoActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoActivity;->showFailedUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/GameVideoActivity;)Lcom/youku/gamecenter/player/GameVideoPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameVideoActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/gamecenter/GameVideoActivity;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameVideoActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/youku/gamecenter/GameVideoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameVideoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/youku/gamecenter/GameVideoActivity;->mPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/youku/gamecenter/GameVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameVideoActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoActivity;->releaseMediaPlayer()V

    return-void
.end method

.method static synthetic access$700(Lcom/youku/gamecenter/GameVideoActivity;Lcom/youku/gamecenter/data/VideoUrlInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameVideoActivity;
    .param p1, "x1"    # Lcom/youku/gamecenter/data/VideoUrlInfo;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameVideoActivity;->getFinalUrl(Lcom/youku/gamecenter/data/VideoUrlInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/youku/gamecenter/GameVideoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameVideoActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mFinalUrl:Ljava/lang/String;

    return-object v0
.end method

.method private fetchVideoUrlInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoActivity;->showFailedUI()V

    .line 398
    :goto_0
    return-void

    .line 370
    :cond_0
    new-instance v0, Lcom/youku/gamecenter/services/GetVideoUrlService;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/services/GetVideoUrlService;-><init>(Landroid/content/Context;)V

    .line 371
    .local v0, "service":Lcom/youku/gamecenter/services/GetVideoUrlService;
    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/services/GetVideoUrlService;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/youku/gamecenter/GameVideoActivity$10;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/GameVideoActivity$10;-><init>(Lcom/youku/gamecenter/GameVideoActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/services/GetVideoUrlService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    goto :goto_0
.end method

.method private getFinalUrl(Lcom/youku/gamecenter/data/VideoUrlInfo;)V
    .locals 7
    .param p1, "data"    # Lcom/youku/gamecenter/data/VideoUrlInfo;

    .prologue
    .line 401
    if-nez p1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p1, Lcom/youku/gamecenter/data/VideoUrlInfo;->mp4_field_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/youku/gamecenter/data/VideoUrlInfo;->mp4_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$raw;->aes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 411
    .local v5, "is":Ljava/io/InputStream;
    invoke-static {}, Lcom/youku/gamecenter/GameVideoActivity;->isYoukuApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p1, Lcom/youku/gamecenter/data/VideoUrlInfo;->mp4_url:Ljava/lang/String;

    iget-object v1, p1, Lcom/youku/gamecenter/data/VideoUrlInfo;->mp4_field_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/youku/gamecenter/data/VideoUrlInfo;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/youku/gamecenter/data/VideoUrlInfo;->oip:Ljava/lang/String;

    iget-object v4, p1, Lcom/youku/gamecenter/data/VideoUrlInfo;->sid:Ljava/lang/String;

    sget-object v6, Lcom/youku/analytics/data/Device;->gdid:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/baseproject/utils/Util;->getEncreptUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mFinalUrl:Ljava/lang/String;

    .line 418
    :goto_1
    const-string v0, "Test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===finalUrl==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/GameVideoActivity;->mFinalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_2
    iget-object v0, p1, Lcom/youku/gamecenter/data/VideoUrlInfo;->mp4_url:Ljava/lang/String;

    iget-object v1, p1, Lcom/youku/gamecenter/data/VideoUrlInfo;->mp4_field_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/youku/gamecenter/data/VideoUrlInfo;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/youku/gamecenter/data/VideoUrlInfo;->oip:Ljava/lang/String;

    iget-object v4, p1, Lcom/youku/gamecenter/data/VideoUrlInfo;->sid:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/baseproject/utils/Util;->getEncreptUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mFinalUrl:Ljava/lang/String;

    goto :goto_1
.end method

.method private hideGameLayout()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameLayout:Landroid/view/View;

    new-instance v1, Lcom/youku/gamecenter/GameVideoActivity$4;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GameVideoActivity$4;-><init>(Lcom/youku/gamecenter/GameVideoActivity;)V

    invoke-static {v0, v1}, Lcom/youku/gamecenter/util/UIUtils;->pluginRightHide(Landroid/view/View;Lcom/youku/gamecenter/util/UIUtils$AnimationActionListener;)V

    .line 198
    :cond_0
    return-void
.end method

.method private initGameData()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->getGameInfoFromCache(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    goto :goto_0
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 127
    sget v0, Lcom/youku/gamecenter/R$id;->surface_view:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 128
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 131
    sget v0, Lcom/youku/gamecenter/R$id;->game_video_progress:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    .line 132
    sget v0, Lcom/youku/gamecenter/R$id;->game_video_bottom_view:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/player/GameVideoBottomView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mBottomView:Lcom/youku/gamecenter/player/GameVideoBottomView;

    .line 133
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mBottomView:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->setOnBottomViewDisplayListener(Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;)V

    .line 134
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mBottomView:Lcom/youku/gamecenter/player/GameVideoBottomView;

    new-instance v1, Lcom/youku/gamecenter/GameVideoActivity$1;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GameVideoActivity$1;-><init>(Lcom/youku/gamecenter/GameVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/player/GameVideoBottomView;->setmOnSmallButtonClickListener(Lcom/youku/gamecenter/player/GameVideoBottomView$OnSmallButtonClickListener;)V

    .line 142
    sget v0, Lcom/youku/gamecenter/R$id;->game_video_top_view:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/player/GameVideoTopView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mTopView:Lcom/youku/gamecenter/player/GameVideoTopView;

    .line 143
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mTopView:Lcom/youku/gamecenter/player/GameVideoTopView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/player/GameVideoTopView;->setTitle(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mTopView:Lcom/youku/gamecenter/player/GameVideoTopView;

    new-instance v1, Lcom/youku/gamecenter/GameVideoActivity$2;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GameVideoActivity$2;-><init>(Lcom/youku/gamecenter/GameVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/player/GameVideoTopView;->setOnBackButtonClickListener(Lcom/youku/gamecenter/player/GameVideoTopView$OnBackButtonClickListener;)V

    .line 151
    sget v0, Lcom/youku/gamecenter/R$id;->game_video_loading_error_layout:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mErrorView:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mErrorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    sget v0, Lcom/youku/gamecenter/R$id;->rl_game_info:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameLayout:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    sget v0, Lcom/youku/gamecenter/R$id;->game_icon:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameIcon:Landroid/widget/ImageView;

    .line 157
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameIcon:Landroid/widget/ImageView;

    sget v1, Lcom/youku/gamecenter/R$drawable;->game_list_item_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v0, v0, Lcom/youku/gamecenter/data/GameInfo;->logo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->logo:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    sget v0, Lcom/youku/gamecenter/R$id;->action_button:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mActionBtn:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mActionBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget v0, Lcom/youku/gamecenter/R$id;->game_name:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameName:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameName:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->updateActionUI(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 172
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameVideoActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->setTitlePageName(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    if-nez v0, :cond_0

    .line 465
    const/4 v0, 0x0

    .line 468
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->isInPlaybackState()Z

    move-result v0

    goto :goto_0
.end method

.method private loadDatas()V
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity;->mVid:Ljava/lang/String;

    .line 119
    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/youku/gamecenter/GameVideoActivity;->mType:I

    .line 120
    const-string v1, "packagename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity;->mPackageName:Ljava/lang/String;

    .line 121
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity;->mTitle:Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoActivity;->initGameData()V

    .line 124
    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    if-nez v0, :cond_0

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->clearListener()V

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    goto :goto_0
.end method

.method private setFullScreen()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 472
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->requestWindowFeature(I)Z

    .line 473
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 475
    return-void
.end method

.method private setOrientation()V
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mType:I

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->setRequestedOrientation(I)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private showFailedUI()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 355
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mErrorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 358
    return-void
.end method

.method private showGameLayout()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameLayout:Landroid/view/View;

    new-instance v1, Lcom/youku/gamecenter/GameVideoActivity$3;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GameVideoActivity$3;-><init>(Lcom/youku/gamecenter/GameVideoActivity;)V

    invoke-static {v0, v1}, Lcom/youku/gamecenter/util/UIUtils;->pluginRightShow(Landroid/view/View;Lcom/youku/gamecenter/util/UIUtils$AnimationActionListener;)V

    .line 186
    :cond_0
    return-void
.end method

.method private showLoadingUI()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mVideoProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mErrorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    return-void
.end method

.method private startPlay()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mVid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->fetchVideoUrlInfo(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private updateActionUI(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 2
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mActionBtn:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v1, v1, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mActionBtn:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v1, v1, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    invoke-static {p0, v1}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mActionBtn:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v1, v1, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 94
    return-void
.end method


# virtual methods
.method getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    const-string/jumbo v0, "\u6e38\u620f\u89c6\u9891"

    return-object v0
.end method

.method public hasTitleBar()Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 263
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    if-ne p1, v0, :cond_3

    .line 264
    const-string v0, "VideoTest"

    const-string/jumbo v1, "surface view onClick"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoActivity;->isInPlaybackState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mBottomView:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mBottomView:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->hide()V

    goto :goto_0

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mBottomView:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->show()V

    goto :goto_0

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mErrorView:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 277
    :try_start_0
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoActivity;->showLoadingUI()V

    .line 278
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameVideoActivity;->rePlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v6

    .line 280
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 284
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mActionBtn:Landroid/widget/TextView;

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameIcon:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameName:Landroid/widget/TextView;

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameLayout:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 285
    :cond_5
    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    const-string v2, "50"

    const-string v4, ""

    move-object v0, p0

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleGameAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    sget v0, Lcom/youku/gamecenter/R$style;->GameCenterTheme_Tudou:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->setTheme(I)V

    .line 68
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoActivity;->setFullScreen()V

    .line 70
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoActivity;->loadDatas()V

    .line 72
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoActivity;->setOrientation()V

    .line 76
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoActivity;->initViews()V

    .line 78
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoActivity;->startPlay()V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 446
    const-string v0, "VideoTest"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onDestroy()V

    .line 449
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoActivity;->releaseMediaPlayer()V

    .line 450
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mBottomView:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->hide()V

    .line 451
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mBottomView:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->clearListener()V

    .line 453
    return-void
.end method

.method public onGameInfoStatusChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onGameInfoStatusChanged(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->updateActionUI(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mTopView:Lcom/youku/gamecenter/player/GameVideoTopView;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mTopView:Lcom/youku/gamecenter/player/GameVideoTopView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoTopView;->hide()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 218
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoActivity;->hideGameLayout()V

    .line 220
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 432
    const-string v0, "VideoTest"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onPause()V

    .line 434
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    if-nez v0, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mPosition:I

    .line 440
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->pause()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 423
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onResume()V

    .line 424
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    iget v1, p0, Lcom/youku/gamecenter/GameVideoActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->seekTo(I)V

    .line 426
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->start()V

    .line 428
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mTopView:Lcom/youku/gamecenter/player/GameVideoTopView;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mTopView:Lcom/youku/gamecenter/player/GameVideoTopView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoTopView;->show()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mGameLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoActivity;->showGameLayout()V

    .line 209
    :cond_1
    return-void
.end method

.method public play()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 293
    new-instance v0, Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-direct {v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    .line 294
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity;->mFinalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->setDataSource(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    new-instance v1, Lcom/youku/gamecenter/GameVideoActivity$6;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GameVideoActivity$6;-><init>(Lcom/youku/gamecenter/GameVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 301
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    new-instance v1, Lcom/youku/gamecenter/GameVideoActivity$7;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GameVideoActivity$7;-><init>(Lcom/youku/gamecenter/GameVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->setOnLoadingListener(Lcom/youku/gamecenter/player/GameVideoPlayer$OnLoadingStatusListener;)V

    .line 313
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    new-instance v1, Lcom/youku/gamecenter/GameVideoActivity$8;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GameVideoActivity$8;-><init>(Lcom/youku/gamecenter/GameVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 320
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    new-instance v1, Lcom/youku/gamecenter/GameVideoActivity$9;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GameVideoActivity$9;-><init>(Lcom/youku/gamecenter/GameVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->setOnErroListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 330
    iget v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mPosition:I

    if-lez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    iget v1, p0, Lcom/youku/gamecenter/GameVideoActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->seekTo(I)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity;->mBottomView:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->setmMediaController(Lcom/youku/gamecenter/player/GameVideoBottomView;)V

    .line 334
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoPlayer;->start()V

    .line 335
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mBottomView:Lcom/youku/gamecenter/player/GameVideoBottomView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/player/GameVideoBottomView;->setMediaPlayer(Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;)V

    .line 337
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 338
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity;->mMediaPlayer:Lcom/youku/gamecenter/player/GameVideoPlayer;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 339
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 340
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 341
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestFocus()Z

    .line 342
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 344
    return-void
.end method

.method public rePlay()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mFinalUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mVid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->fetchVideoUrlInfo(Ljava/lang/String;)V

    .line 352
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameVideoActivity;->play()V

    goto :goto_0
.end method

.method public setLayout()V
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/youku/gamecenter/GameVideoActivity;->mType:I

    if-nez v0, :cond_0

    .line 225
    sget v0, Lcom/youku/gamecenter/R$layout;->activity_game_video_land:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->setContentView(I)V

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    sget v0, Lcom/youku/gamecenter/R$layout;->activity_game_video:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameVideoActivity;->setContentView(I)V

    goto :goto_0
.end method
