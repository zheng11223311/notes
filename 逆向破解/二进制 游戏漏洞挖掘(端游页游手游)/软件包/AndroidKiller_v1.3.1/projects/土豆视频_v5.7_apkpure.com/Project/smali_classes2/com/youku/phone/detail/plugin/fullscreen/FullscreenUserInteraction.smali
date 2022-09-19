.class public Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;
.super Ljava/lang/Object;
.source "FullscreenUserInteraction.java"

# interfaces
.implements Lcom/youku/phone/detail/DetailMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$KuwoDownloadBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final KUWO_DOWNLOAD_INFO:Ljava/lang/String; = "cn.kuwo.player.intent.action.mvdownload"

.field public static final KUWO_DOWNLOAD_INFO_CHANGED:Ljava/lang/String; = "com.tudou.android.intent.kuwo_download_info_changed"


# instance fields
.field attentionClickListener:Landroid/view/View$OnClickListener;

.field containerView:Landroid/view/View;

.field context:Lcom/tudou/ui/activity/DetailActivity;

.field downState:I

.field fullplug:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

.field private handler:Landroid/os/Handler;

.field kuwoLeft:Landroid/view/View;

.field private mBtnAtte:Lcom/tudou/detail/widget/SwitchButton;

.field private mBtnAtteAgent:Landroid/view/View;

.field private mBtnAtteHint:Landroid/widget/TextView;

.field private mBtnDown:Lcom/tudou/detail/widget/SwitchButton;

.field private mBtnDownAgent:Landroid/view/View;

.field private mBtnDownHint:Landroid/widget/TextView;

.field private mBtnFav:Lcom/tudou/detail/widget/SwitchButton;

.field private mBtnFavAgent:Landroid/view/View;

.field private mBtnFavHint:Landroid/widget/TextView;

.field private mBtnKuwoDown:Lcom/tudou/detail/widget/SwitchButton;

.field private mBtnKuwoDownAgent:Landroid/view/View;

.field private mBtnKuwoDownHint:Landroid/widget/TextView;

.field private mBtnShare:Landroid/widget/ImageView;

.field private mBtnShareAgent:Landroid/view/View;

.field mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field mvId:J

.field playActionView:Landroid/view/View;

.field receiver:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$KuwoDownloadBroadcastReceiver;

.field tudouLeft:Landroid/view/View;

.field video_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/tudou/ui/activity/DetailActivity;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;)V
    .locals 2
    .param p1, "containerView"    # Landroid/view/View;
    .param p2, "mMediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "context"    # Lcom/tudou/ui/activity/DetailActivity;
    .param p4, "fullplug"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->downState:I

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mvId:J

    .line 521
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->attentionClickListener:Landroid/view/View$OnClickListener;

    .line 735
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$12;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$12;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->handler:Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    .line 100
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 101
    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    .line 102
    iput-object p4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->fullplug:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    .line 104
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->setLeftControl()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Lcom/tudou/detail/widget/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnDown:Lcom/tudou/detail/widget/SwitchButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Lcom/tudou/detail/widget/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnFav:Lcom/tudou/detail/widget/SwitchButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnFavHint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Lcom/tudou/detail/widget/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnAtte:Lcom/tudou/detail/widget/SwitchButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnAtteHint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnDownAgent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnDownHint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->setDownloadInfo(I)V

    return-void
.end method

.method private setDownloadInfo(I)V
    .locals 5
    .param p1, "downState"    # I

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 125
    packed-switch p1, :pswitch_data_0

    .line 154
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDown:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 155
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDownHint:Landroid/widget/TextView;

    const-string v1, "\u7f13\u5b58"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDown:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 129
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDownHint:Landroid/widget/TextView;

    const-string v1, "\u7f13\u5b58"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDownAgent:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 131
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDownAgent:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDownAgent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDownAgent:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 141
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDownAgent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDown:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v0, v4}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 143
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDownHint:Landroid/widget/TextView;

    const-string v1, "\u5df2\u7f13\u5b58"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDownAgent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDownAgent:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 148
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDownAgent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDown:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 150
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDownHint:Landroid/widget/TextView;

    const-string v1, "\u7f13\u5b58"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setLeftControl()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b79

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->tudouLeft:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b86

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->kuwoLeft:Landroid/view/View;

    .line 164
    return-void
.end method


# virtual methods
.method addToCache(I)V
    .locals 13
    .param p1, "format"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnDown:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getVideoList()Lcom/tudou/detail/vo/VideoList;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/detail/vo/VideoList;->isTrailer(Ljava/lang/String;)Z

    move-result v10

    .line 168
    .local v10, "trailer":Z
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getTitle_new_dl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getTitle_new_dl_sub()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnDown:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v4}, Lcom/tudou/detail/widget/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v4}, Lcom/tudou/ui/activity/DetailActivity;->getVideoList()Lcom/tudou/detail/vo/VideoList;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tudou/detail/vo/VideoList;->getTitleByVid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/youku/player/goplay/Profile;->langCode:Ljava/lang/String;

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getType()I

    move-result v6

    sget v7, Lcom/youku/player/module/VideoUrlInfo;->YOUKU_TYPE:I

    if-ne v6, v7, :cond_2

    sget-object v6, Lcom/tudou/android/Youku$FromType;->Youku:Lcom/tudou/android/Youku$FromType;

    :goto_0
    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getType()I

    move-result v7

    sget v8, Lcom/youku/player/module/VideoUrlInfo;->YOUKU_TYPE:I

    if-ne v7, v8, :cond_0

    :cond_0
    if-nez v10, :cond_1

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getCid()I

    move-result v7

    const/16 v8, 0x16

    if-ne v7, v8, :cond_3

    :cond_1
    const-string v8, ""

    :goto_1
    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getimgUrl()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1;

    invoke-direct {v11, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V

    new-instance v12, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$2;

    invoke-direct {v12, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V

    move v7, p1

    invoke-static/range {v0 .. v12}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$FromType;ILjava/lang/String;Ljava/lang/String;ZLcom/tudou/service/download/OnPreparedCallback;Lcom/tudou/service/download/IVideoDownloadCallBack;)V

    .line 231
    return-void

    .line 168
    :cond_2
    sget-object v6, Lcom/tudou/android/Youku$FromType;->Tudou:Lcom/tudou/android/Youku$FromType;

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method public cannotDownloadIcon()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$13;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$13;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 802
    return-void
.end method

.method public clearFav()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnFavHint:Landroid/widget/TextView;

    const-string v1, "\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnFav:Lcom/tudou/detail/widget/SwitchButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 647
    return-void
.end method

.method public clearKuwoDownloadBroadcast()V
    .locals 3

    .prologue
    .line 829
    :try_start_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->receiver:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$KuwoDownloadBroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v1, :cond_0

    .line 830
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->receiver:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$KuwoDownloadBroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/DetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public disableDownloadIcon()V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$14;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$14;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 814
    return-void
.end method

.method public disableSun()V
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$10;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$10;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 704
    return-void
.end method

.method public enableDownloadIcon()V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnDownAgent:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 786
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnDownAgent:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 787
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnDown:Lcom/tudou/detail/widget/SwitchButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 788
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnDownHint:Landroid/widget/TextView;

    const-string v1, "\u7f13\u5b58"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    return-void
.end method

.method public enableSun()V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$11;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$11;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 721
    return-void
.end method

.method public getKuwoMVID()J
    .locals 2

    .prologue
    .line 839
    iget-wide v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mvId:J

    return-wide v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->playActionView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 782
    return-void
.end method

.method initIneract()V
    .locals 4

    .prologue
    const v3, 0x7f02069d

    const v2, 0x7f02069c

    .line 234
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b4e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->playActionView:Landroid/view/View;

    .line 236
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b87

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDownAgent:Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b89

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDownHint:Landroid/widget/TextView;

    .line 238
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b88

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/widget/SwitchButton;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDown:Lcom/tudou/detail/widget/SwitchButton;

    .line 239
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDown:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v0, v3}, Lcom/tudou/detail/widget/SwitchButton;->setDrawableNormal(I)V

    .line 240
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDown:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/tudou/detail/widget/SwitchButton;->setDrawableAtte(I)V

    .line 242
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b7a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnShareAgent:Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b7b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnShare:Landroid/widget/ImageView;

    .line 245
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b7d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnFavAgent:Landroid/view/View;

    .line 246
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b7f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnFavHint:Landroid/widget/TextView;

    .line 247
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b7e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/widget/SwitchButton;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnFav:Lcom/tudou/detail/widget/SwitchButton;

    .line 248
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnFav:Lcom/tudou/detail/widget/SwitchButton;

    const v1, 0x7f02069f

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setDrawableNormal(I)V

    .line 249
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnFav:Lcom/tudou/detail/widget/SwitchButton;

    const v1, 0x7f02069e

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setDrawableAtte(I)V

    .line 251
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b80

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnDownAgent:Landroid/view/View;

    .line 252
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b82

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnDownHint:Landroid/widget/TextView;

    .line 253
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b81

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/widget/SwitchButton;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnDown:Lcom/tudou/detail/widget/SwitchButton;

    .line 254
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnDown:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v0, v3}, Lcom/tudou/detail/widget/SwitchButton;->setDrawableNormal(I)V

    .line 255
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnDown:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/tudou/detail/widget/SwitchButton;->setDrawableAtte(I)V

    .line 258
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b83

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnAtteAgent:Landroid/view/View;

    .line 259
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b85

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnAtteHint:Landroid/widget/TextView;

    .line 260
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b84

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/widget/SwitchButton;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnAtte:Lcom/tudou/detail/widget/SwitchButton;

    .line 261
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnAtte:Lcom/tudou/detail/widget/SwitchButton;

    const v1, 0x7f02069a

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setDrawableNormal(I)V

    .line 262
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnAtte:Lcom/tudou/detail/widget/SwitchButton;

    const v1, 0x7f020699

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setDrawableAtte(I)V

    .line 263
    const-string v0, "yueliang"

    const-string v1, "atte setchecked false"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnAtte:Lcom/tudou/detail/widget/SwitchButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 266
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnFavAgent:Landroid/view/View;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnShareAgent:Landroid/view/View;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnDownAgent:Landroid/view/View;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnKuwoDownAgent:Landroid/view/View;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$6;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$6;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnAtteAgent:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->attentionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    return-void
.end method

.method public initKuWoInfo()V
    .locals 5

    .prologue
    .line 108
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    iget-boolean v1, v1, Lcom/tudou/ui/activity/DetailActivity;->isFromKuWo:Z

    if-eqz v1, :cond_0

    .line 110
    :try_start_0
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$KuwoDownloadBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$KuwoDownloadBroadcastReceiver;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->receiver:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$KuwoDownloadBroadcastReceiver;

    .line 111
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->receiver:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$KuwoDownloadBroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.tudou.android.intent.kuwo_download_info_changed"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/tudou/ui/activity/DetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "downState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->downState:I

    .line 115
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mvId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mvId:J

    .line 116
    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->downState:I

    invoke-direct {p0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->setDownloadInfo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isableSun()Z
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnAtte:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/SwitchButton;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public login(Z)V
    .locals 5
    .param p1, "isFromFullScreen"    # Z

    .prologue
    .line 817
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    const-class v2, Lcom/tudou/ui/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 818
    .local v0, "intent":Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 819
    const-string v1, "from"

    const/16 v2, 0x3ee

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 824
    :goto_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    const/16 v2, 0x7d0

    const v3, 0x7f040005

    const v4, 0x7f040004

    invoke-static {v1, v0, v2, v3, v4}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;III)V

    .line 825
    return-void

    .line 822
    :cond_0
    const-string v1, "from"

    const/16 v2, 0x3f0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public newVideo()V
    .locals 0

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->initIneract()V

    .line 728
    return-void
.end method

.method public onDown()V
    .locals 0

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->disableDownloadIcon()V

    .line 732
    return-void
.end method

.method public onFavor()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnFavHint:Landroid/widget/TextView;

    const-string v1, "\u5df2\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnFav:Lcom/tudou/detail/widget/SwitchButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 642
    return-void
.end method

.method public onSubscribe()V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setAttention(Z)V

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$8;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$8;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 673
    return-void
.end method

.method public onUnFavor()V
    .locals 2

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->clearFav()V

    .line 652
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnFavHint:Landroid/widget/TextView;

    const-string v1, "\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnFav:Lcom/tudou/detail/widget/SwitchButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 654
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mBtnFav:Lcom/tudou/detail/widget/SwitchButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setClickable(Z)V

    .line 655
    return-void
.end method

.method public onUnSubscribe()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setAttention(Z)V

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$9;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$9;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 690
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 777
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->playActionView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 778
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 762
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->playActionView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    iget-boolean v0, v0, Lcom/tudou/ui/activity/DetailActivity;->isFromKuWo:Z

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b64

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b62

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 766
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b63

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b76

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 768
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->tudouLeft:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 769
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->kuwoLeft:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 774
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->tudouLeft:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 772
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->kuwoLeft:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
