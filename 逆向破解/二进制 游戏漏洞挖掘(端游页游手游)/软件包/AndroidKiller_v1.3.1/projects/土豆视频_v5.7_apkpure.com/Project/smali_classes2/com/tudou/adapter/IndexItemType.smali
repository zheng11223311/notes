.class public Lcom/tudou/adapter/IndexItemType;
.super Landroid/widget/LinearLayout;
.source "IndexItemType.java"


# instance fields
.field public bgLayout:Landroid/view/View;

.field private imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field public mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field public viewCache1:Lcom/tudou/adapter/IndexItemViewCache;

.field public viewCache2:Lcom/tudou/adapter/IndexItemViewCache;

.field public viewCache3:Lcom/tudou/adapter/IndexItemViewCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/tudou/adapter/IndexItemType;->mContext:Landroid/content/Context;

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/IndexItemType;->setOrientation(I)V

    .line 42
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/IndexItemType;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object p1, p0, Lcom/tudou/adapter/IndexItemType;->mContext:Landroid/content/Context;

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/IndexItemType;->setOrientation(I)V

    .line 49
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/IndexItemType;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/IndexItemType;Lcom/youku/vo/CardInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/IndexItemType;
    .param p1, "x1"    # Lcom/youku/vo/CardInfo;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexItemType;->onVideoClick(Lcom/youku/vo/CardInfo;)V

    return-void
.end method

.method private onVideoClick(Lcom/youku/vo/CardInfo;)V
    .locals 6
    .param p1, "aCardInfo"    # Lcom/youku/vo/CardInfo;

    .prologue
    .line 182
    iget-object v1, p1, Lcom/youku/vo/CardInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 183
    .local v1, "skipInfo":Lcom/youku/vo/SkipInfo;
    iget-object v4, p1, Lcom/youku/vo/CardInfo;->sub_title:Ljava/lang/String;

    iput-object v4, v1, Lcom/youku/vo/SkipInfo;->sub_title:Ljava/lang/String;

    .line 184
    iget-object v4, p0, Lcom/tudou/adapter/IndexItemType;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v1, v4}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 186
    const/4 v3, 0x0

    .line 187
    .local v3, "videoId":Ljava/lang/String;
    iget-object v4, v1, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 188
    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    .line 194
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t1.home_shome.channelvideoclick__.1_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/youku/vo/CardInfo;->contentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "tracker":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 197
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "ct"

    iget-object v5, p1, Lcom/youku/vo/CardInfo;->channelTitle:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 201
    return-void

    .line 190
    .end local v0    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "tracker":Ljava/lang/String;
    :cond_0
    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected setIndexCellValue(Lcom/tudou/adapter/IndexItemViewCache;Lcom/youku/vo/CardInfo;Z)V
    .locals 3
    .param p1, "aCache"    # Lcom/tudou/adapter/IndexItemViewCache;
    .param p2, "aCardInfo"    # Lcom/youku/vo/CardInfo;
    .param p3, "isHor"    # Z

    .prologue
    .line 54
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemViewCache;->title_1line:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/CardInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    if-eqz p3, :cond_1

    .line 58
    iget-object v0, p0, Lcom/tudou/adapter/IndexItemType;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p2, Lcom/youku/vo/CardInfo;->image_448_252:Ljava/lang/String;

    iget-object v2, p1, Lcom/tudou/adapter/IndexItemViewCache;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 64
    :goto_0
    iget-object v0, p2, Lcom/youku/vo/CardInfo;->corner_image:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemViewCache;->corner_image:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :goto_1
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemViewCache;->alias:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/CardInfo;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemViewCache;->stripe_right:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemViewCache;->stripe_right:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/CardInfo;->image_b_l_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemViewCache;->stripe_top:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/CardInfo;->image_b_r_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemViewCache;->view:Landroid/view/View;

    new-instance v1, Lcom/tudou/adapter/IndexItemType$1;

    invoke-direct {v1, p0, p2}, Lcom/tudou/adapter/IndexItemType$1;-><init>(Lcom/tudou/adapter/IndexItemType;Lcom/youku/vo/CardInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/tudou/adapter/IndexItemType;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p2, Lcom/youku/vo/CardInfo;->image_200_300:Ljava/lang/String;

    iget-object v2, p1, Lcom/tudou/adapter/IndexItemViewCache;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemViewCache;->corner_image:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/tudou/adapter/IndexItemType;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p2, Lcom/youku/vo/CardInfo;->corner_image:Ljava/lang/String;

    iget-object v2, p1, Lcom/tudou/adapter/IndexItemViewCache;->corner_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method protected setIndexCellValueBoke(Lcom/tudou/adapter/IndexItemViewCache;Lcom/youku/vo/CardInfo;)V
    .locals 4
    .param p1, "aCache"    # Lcom/tudou/adapter/IndexItemViewCache;
    .param p2, "aCardInfo"    # Lcom/youku/vo/CardInfo;

    .prologue
    .line 95
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemViewCache;->title_1line:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/CardInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/tudou/adapter/IndexItemType;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p2, Lcom/youku/vo/CardInfo;->image_448_252:Ljava/lang/String;

    iget-object v2, p1, Lcom/tudou/adapter/IndexItemViewCache;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 102
    iget-object v0, p2, Lcom/youku/vo/CardInfo;->corner_image:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemViewCache;->corner_image:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    :goto_0
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemViewCache;->alias:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/CardInfo;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemViewCache;->stripe_top:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/CardInfo;->image_b_r_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/tudou/adapter/IndexItemType;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p2, Lcom/youku/vo/CardInfo;->owner_pic:Ljava/lang/String;

    iget-object v2, p1, Lcom/tudou/adapter/IndexItemViewCache;->mUserPic:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 148
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemViewCache;->mOwnerNickname:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/CardInfo;->owner_nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemViewCache;->view:Landroid/view/View;

    new-instance v1, Lcom/tudou/adapter/IndexItemType$2;

    invoke-direct {v1, p0, p2}, Lcom/tudou/adapter/IndexItemType$2;-><init>(Lcom/tudou/adapter/IndexItemType;Lcom/youku/vo/CardInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemViewCache;->mBokeLayout:Landroid/view/View;

    new-instance v1, Lcom/tudou/adapter/IndexItemType$3;

    invoke-direct {v1, p0, p2}, Lcom/tudou/adapter/IndexItemType$3;-><init>(Lcom/tudou/adapter/IndexItemType;Lcom/youku/vo/CardInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void

    .line 105
    :cond_0
    iget-object v0, p1, Lcom/tudou/adapter/IndexItemViewCache;->corner_image:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/tudou/adapter/IndexItemType;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p2, Lcom/youku/vo/CardInfo;->corner_image:Ljava/lang/String;

    iget-object v2, p1, Lcom/tudou/adapter/IndexItemViewCache;->corner_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method
