.class public Lcom/youku/gamecenter/adapter/GameVideoAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;,
        Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnActionButtonClickListener;,
        Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnGameLayoutClickListener;,
        Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnImagePlayClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGameVideoInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameCenterVideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const-string v0, "50"

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->mSource:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->mContext:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/adapter/GameVideoAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/GameVideoAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/adapter/GameVideoAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/GameVideoAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method private initViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 174
    new-instance v0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;-><init>()V

    .line 175
    .local v0, "holder":Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;
    sget v1, Lcom/youku/gamecenter/R$id;->video_image_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->videoImage:Landroid/widget/ImageView;

    .line 176
    sget v1, Lcom/youku/gamecenter/R$id;->game_video_img_play:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->playImage:Landroid/widget/ImageView;

    .line 177
    sget v1, Lcom/youku/gamecenter/R$id;->game_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->gameIcon:Landroid/widget/ImageView;

    .line 178
    sget v1, Lcom/youku/gamecenter/R$id;->video_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->videoTitle:Landroid/widget/TextView;

    .line 179
    sget v1, Lcom/youku/gamecenter/R$id;->game_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->gameName:Landroid/widget/TextView;

    .line 180
    sget v1, Lcom/youku/gamecenter/R$id;->action_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    .line 181
    sget v1, Lcom/youku/gamecenter/R$id;->game_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->gameLayout:Landroid/view/View;

    .line 182
    return-object v0
.end method

.method private isHighSdkVersion()Z
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Lcom/youku/gamecenter/util/CommonUtils;->isHighSdkVersion()Z

    move-result v0

    return v0
.end method

.method private isUpdatePartly(Ljava/lang/String;Landroid/view/View;)Z
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 187
    sget v2, Lcom/youku/gamecenter/R$id;->game_list_view_tag_id:I

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v1

    .line 191
    :cond_1
    sget v2, Lcom/youku/gamecenter/R$id;->game_list_view_tag_id:I

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    .local v0, "storedVid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->isHighSdkVersion()Z

    move-result v1

    goto :goto_0
.end method

.method private setViewHolderDatas(ILcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameCenterVideoInfo;Z)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;
    .param p3, "info"    # Lcom/youku/gamecenter/data/GameCenterVideoInfo;
    .param p4, "updatePartly"    # Z

    .prologue
    .line 104
    iget-object v0, p3, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->gameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 105
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v3, v3, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 106
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v4, v4, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    invoke-static {v3, v4}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v3, v3, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 108
    if-eqz p4, :cond_0

    .line 125
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v1

    .line 112
    .local v1, "imageLoaderHelper":Lcom/youku/gamecenter/image/ImageLoaderHelper;
    iget-object v2, p3, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->image:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    iget-object v2, p3, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->image:Ljava/lang/String;

    iget-object v3, p2, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->videoImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 115
    :cond_1
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->gameIcon:Landroid/widget/ImageView;

    sget v3, Lcom/youku/gamecenter/R$drawable;->game_list_item_default:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object v2, v0, Lcom/youku/gamecenter/data/GameInfo;->logo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 117
    iget-object v2, v0, Lcom/youku/gamecenter/data/GameInfo;->logo:Ljava/lang/String;

    iget-object v3, p2, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->gameIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 119
    :cond_2
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->videoTitle:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->gameName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->playImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnImagePlayClickListener;

    invoke-direct {v3, p0, p3}, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnImagePlayClickListener;-><init>(Lcom/youku/gamecenter/adapter/GameVideoAdapter;Lcom/youku/gamecenter/data/GameCenterVideoInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->videoImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnImagePlayClickListener;

    invoke-direct {v3, p0, p3}, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnImagePlayClickListener;-><init>(Lcom/youku/gamecenter/adapter/GameVideoAdapter;Lcom/youku/gamecenter/data/GameCenterVideoInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->gameLayout:Landroid/view/View;

    new-instance v3, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnGameLayoutClickListener;

    invoke-direct {v3, p0, p1, v0}, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnGameLayoutClickListener;-><init>(Lcom/youku/gamecenter/adapter/GameVideoAdapter;ILcom/youku/gamecenter/data/GameInfo;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    new-instance v3, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnActionButtonClickListener;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/youku/gamecenter/adapter/GameVideoAdapter$OnActionButtonClickListener;-><init>(Lcom/youku/gamecenter/adapter/GameVideoAdapter;ILcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->mGameVideoInfos:Ljava/util/List;

    if-nez v3, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v2

    .line 47
    :cond_1
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->mGameVideoInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameCenterVideoInfo;

    .line 48
    .local v1, "infos":Lcom/youku/gamecenter/data/GameCenterVideoInfo;
    iget-object v3, v1, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->gameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->mGameVideoInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->mGameVideoInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->mGameVideoInfos:Ljava/util/List;

    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->mGameVideoInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->mGameVideoInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 84
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->mGameVideoInfos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameCenterVideoInfo;

    .line 85
    .local v1, "info":Lcom/youku/gamecenter/data/GameCenterVideoInfo;
    if-nez p2, :cond_0

    .line 86
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/youku/gamecenter/R$layout;->listview_video_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->initViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;

    move-result-object v0

    .line 88
    .local v0, "holder":Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    const/4 v2, 0x0

    .line 96
    .local v2, "updatePartly":Z
    :goto_0
    sget v3, Lcom/youku/gamecenter/R$id;->game_list_view_tag_id:I

    iget-object v4, v1, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->vid:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 98
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->setViewHolderDatas(ILcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameCenterVideoInfo;Z)V

    .line 100
    return-object p2

    .line 91
    .end local v0    # "holder":Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;
    .end local v2    # "updatePartly":Z
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;

    .line 93
    .restart local v0    # "holder":Lcom/youku/gamecenter/adapter/GameVideoAdapter$ViewHolder;
    iget-object v3, v1, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->vid:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->isUpdatePartly(Ljava/lang/String;Landroid/view/View;)Z

    move-result v2

    .restart local v2    # "updatePartly":Z
    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameCenterVideoInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameCenterVideoInfo;>;"
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->mGameVideoInfos:Ljava/util/List;

    .line 41
    return-void
.end method
