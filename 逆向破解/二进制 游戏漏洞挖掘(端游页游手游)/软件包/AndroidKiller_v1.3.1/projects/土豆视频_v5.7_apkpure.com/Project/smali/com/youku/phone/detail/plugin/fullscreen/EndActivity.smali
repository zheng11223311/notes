.class public Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "EndActivity.java"


# static fields
.field public static final INTENT_EXTRA_VIDEO_BRIEF:Ljava/lang/String; = "intent.extra.video.brief"

.field public static final INTENT_EXTRA_VIDEO_CHANNEL_NAME:Ljava/lang/String; = "intent.extra.video.channel.name"

.field public static final INTENT_EXTRA_VIDEO_CID:Ljava/lang/String; = "intent.extra.video.cid"

.field public static final INTENT_EXTRA_VIDEO_DETAIL:Ljava/lang/String; = "intent.extra.video.detail"

.field public static final INTENT_EXTRA_VIDEO_ID:Ljava/lang/String; = "intent.extra.video.id"

.field public static final INTENT_EXTRA_VIDEO_IMG_PATH:Ljava/lang/String; = "intent.extra.video.img.path"

.field public static final INTENT_EXTRA_VIDEO_IMG_PATH_16_9:Ljava/lang/String; = "intent.extra.video.img.path.16.9"

.field public static final INTENT_EXTRA_VIDEO_ITEM_PLAYTIMES:Ljava/lang/String; = "intent.extra.video.item.playtimes"

.field public static final INTENT_EXTRA_VIDEO_ITEM_SHORT_DESC:Ljava/lang/String; = "intent.extra.video.item.short.desc"

.field public static final INTENT_EXTRA_VIDEO_SHOWID:Ljava/lang/String; = "intent.extra.video.img.show.id"

.field public static final INTENT_EXTRA_VIDEO_TITLE:Ljava/lang/String; = "intent.extra.video.title"

.field public static final INTENT_EXTRA_VIDEO_WEBURL:Ljava/lang/String; = "intent.extra.video.weburl"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBtnBack:Landroid/view/View;

.field private mBtnReplay:Landroid/view/View;

.field private mBtnShare:Landroid/view/View;

.field private mChannelName:Ljava/lang/String;

.field private mCid:I

.field private mImgPath:Ljava/lang/String;

.field private mImgPath16_9:Ljava/lang/String;

.field private mItemPlaytimes:Ljava/lang/Long;

.field private mItemShortDesc:Ljava/lang/String;

.field private mShowId:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVid:Ljava/lang/String;

.field private mVideoBrief:Ljava/lang/String;

.field private mVideoDetail:Lcom/youku/vo/NewVideoDetail;

.field private mWebUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mWebUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mItemShortDesc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mItemPlaytimes:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;Lcom/youku/vo/DetailRecomment;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;
    .param p1, "x1"    # Lcom/youku/vo/DetailRecomment;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->setRecVideos(Lcom/youku/vo/DetailRecomment;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->playVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->playVideo(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mVid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mImgPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Lcom/youku/vo/NewVideoDetail;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mImgPath16_9:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mChannelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mVideoBrief:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mShowId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mCid:I

    return v0
.end method

.method private getReplayOnclickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 248
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$7;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$7;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)V

    return-object v0
.end method

.method private playVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->playVideo(Ljava/lang/String;Z)V

    .line 278
    return-void
.end method

.method private playVideo(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "replay"    # Z

    .prologue
    .line 265
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 274
    :goto_0
    return-void

    .line 269
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 270
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "video_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string/jumbo v1, "replay"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    const/16 v1, 0xca

    invoke-virtual {p0, v1, v0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->setResult(ILandroid/content/Intent;)V

    .line 273
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->finish()V

    goto :goto_0
.end method

.method private setCurVideoInfo()V
    .locals 5

    .prologue
    .line 230
    const v2, 0x7f0c01d2

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 231
    .local v0, "mCurVideoImage":Landroid/widget/ImageView;
    const v2, 0x7f0c01d3

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 233
    .local v1, "mCurVideoTitle":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mImgPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mImgPath:Ljava/lang/String;

    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$6;

    invoke-direct {v4, p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$6;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 245
    :cond_0
    return-void
.end method

.method private setRecVideos(Lcom/youku/vo/DetailRecomment;)V
    .locals 12
    .param p1, "recomment"    # Lcom/youku/vo/DetailRecomment;

    .prologue
    const/4 v8, 0x0

    .line 188
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/youku/vo/DetailRecomment;->getCount()I

    move-result v0

    .line 189
    .local v0, "count":I
    :goto_0
    const v9, 0x7f0c01d6

    invoke-virtual {p0, v9}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 190
    .local v6, "recVideoPanel":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 191
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v6    # "recVideoPanel":Landroid/view/ViewGroup;
    :cond_0
    move v0, v8

    .line 188
    goto :goto_0

    .line 193
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v6    # "recVideoPanel":Landroid/view/ViewGroup;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 194
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 195
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0c01db

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 196
    .local v3, "recItemPic":Landroid/widget/ImageView;
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0c01dc

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 197
    .local v4, "recItemPlayTimes":Landroid/widget/TextView;
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0c01dd

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 199
    .local v5, "recItemPlayTitle":Landroid/widget/TextView;
    iget-object v9, p1, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/RelatedVideo;

    .line 201
    .local v7, "video":Lcom/youku/vo/RelatedVideo;
    iget-object v9, v7, Lcom/youku/vo/RelatedVideo;->title:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v9, v7, Lcom/youku/vo/RelatedVideo;->strip_bottom:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v9, v7, Lcom/youku/vo/RelatedVideo;->img_16_9:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 204
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v9

    iget-object v10, v7, Lcom/youku/vo/RelatedVideo;->img_16_9:Ljava/lang/String;

    new-instance v11, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$4;

    invoke-direct {v11, p0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$4;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v9, v10, v11}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 214
    :cond_2
    move v2, v1

    .line 215
    .local v2, "pos":I
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$5;

    invoke-direct {v10, p0, v7, p1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$5;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;Lcom/youku/vo/RelatedVideo;Lcom/youku/vo/DetailRecomment;I)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 226
    .end local v2    # "pos":I
    .end local v3    # "recItemPic":Landroid/widget/ImageView;
    .end local v4    # "recItemPlayTimes":Landroid/widget/TextView;
    .end local v5    # "recItemPlayTitle":Landroid/widget/TextView;
    .end local v7    # "video":Lcom/youku/vo/RelatedVideo;
    :cond_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0, v5}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->requestWindowFeature(I)Z

    .line 95
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 97
    invoke-static {}, Lcom/baseproject/utils/UIUtils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->setRequestedOrientation(I)V

    .line 103
    :goto_0
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent.extra.video.id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mVid:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent.extra.video.title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mTitle:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent.extra.video.img.path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mImgPath:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent.extra.video.weburl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mWebUrl:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent.extra.video.img.path.16.9"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mImgPath16_9:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent.extra.video.channel.name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mChannelName:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent.extra.video.img.show.id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mShowId:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent.extra.video.brief"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mVideoBrief:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent.extra.video.detail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/NewVideoDetail;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 114
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent.extra.video.item.short.desc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mItemShortDesc:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent.extra.video.item.playtimes"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mItemPlaytimes:Ljava/lang/Long;

    .line 116
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent.extra.video.cid"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mCid:I

    .line 118
    const v0, 0x7f0c01d0

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mBtnBack:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mBtnBack:Landroid/view/View;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$1;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f0c01d4

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mBtnReplay:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mBtnReplay:Landroid/view/View;

    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->getReplayOnclickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v0, 0x7f0c01d5

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mBtnShare:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mBtnShare:Landroid/view/View;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->setCurVideoInfo()V

    .line 152
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/YouMayLikeTask;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->mVid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/YouMayLikeTask;-><init>(Ljava/lang/String;)V

    new-array v1, v5, [Landroid/os/Handler;

    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$3;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$3;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/YouMayLikeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 184
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0, v4}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onDestroy()V

    .line 262
    return-void
.end method
