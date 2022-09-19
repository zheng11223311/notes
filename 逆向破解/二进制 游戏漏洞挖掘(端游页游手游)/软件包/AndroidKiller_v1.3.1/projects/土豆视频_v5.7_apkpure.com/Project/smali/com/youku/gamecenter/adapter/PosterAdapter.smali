.class public Lcom/youku/gamecenter/adapter/PosterAdapter;
.super Landroid/widget/BaseAdapter;
.source "PosterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;,
        Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;
    }
.end annotation


# static fields
.field public static final ACTION_IMAGE_SUCESS:Ljava/lang/String; = "com.tudou.IMAGE_SUCCESS"

.field public static final MSG_REFRESH:I = 0x1


# instance fields
.field handler:Landroid/os/Handler;

.field private mActBtnMarginRightResId:I

.field private mFragment:Lcom/youku/gamecenter/fragment/GameBaseFragment;

.field private mGameInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSource:Ljava/lang/String;

.field public receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/fragment/GameBaseFragment;Ljava/lang/String;I)V
    .locals 1
    .param p1, "fragment"    # Lcom/youku/gamecenter/fragment/GameBaseFragment;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "actBtnMarginRightResId"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    new-instance v0, Lcom/youku/gamecenter/adapter/PosterAdapter$1;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/adapter/PosterAdapter$1;-><init>(Lcom/youku/gamecenter/adapter/PosterAdapter;)V

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->handler:Landroid/os/Handler;

    .line 166
    new-instance v0, Lcom/youku/gamecenter/adapter/PosterAdapter$3;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/adapter/PosterAdapter$3;-><init>(Lcom/youku/gamecenter/adapter/PosterAdapter;)V

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->receiver:Landroid/content/BroadcastReceiver;

    .line 51
    invoke-virtual {p1}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mFragment:Lcom/youku/gamecenter/fragment/GameBaseFragment;

    .line 53
    iput-object p2, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mSource:Ljava/lang/String;

    .line 54
    iput p3, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mActBtnMarginRightResId:I

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/adapter/PosterAdapter;)Lcom/youku/gamecenter/fragment/GameBaseFragment;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/PosterAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mFragment:Lcom/youku/gamecenter/fragment/GameBaseFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/adapter/PosterAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/PosterAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method private initHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 135
    new-instance v0, Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;

    invoke-direct {v0}, Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;-><init>()V

    .line 136
    .local v0, "holder":Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;
    sget v1, Lcom/youku/gamecenter/R$id;->poster:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;->poster:Landroid/widget/ImageView;

    .line 137
    sget v1, Lcom/youku/gamecenter/R$id;->slider_mark:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;->slider_mark:Landroid/widget/TextView;

    .line 138
    sget v1, Lcom/youku/gamecenter/R$id;->game_gallery_action_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;->action_button:Landroid/widget/TextView;

    .line 139
    sget v1, Lcom/youku/gamecenter/R$id;->game_gallery_act_btn_margin_right_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;->marginRightView:Landroid/view/View;

    .line 140
    return-object v0
.end method

.method private isGameInstallable(Lcom/youku/gamecenter/data/GameInfoStatus;)Z
    .locals 2
    .param p1, "gameStatus"    # Lcom/youku/gamecenter/data/GameInfoStatus;

    .prologue
    const/4 v0, 0x1

    .line 201
    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_NEW:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne p1, v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 204
    :cond_1
    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_UPDATEABLE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq p1, v1, :cond_0

    .line 207
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSliderMark(Landroid/widget/TextView;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "imageView"    # Landroid/widget/TextView;
    .param p2, "info"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 146
    iget-object v1, p2, Lcom/youku/gamecenter/data/GameInfo;->slider_h5_activity:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p2, Lcom/youku/gamecenter/data/GameInfo;->slider_h5_activity:Ljava/util/Map;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mFragment:Lcom/youku/gamecenter/fragment/GameBaseFragment;

    invoke-virtual {v2}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->getFragmentName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    :cond_0
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    .line 152
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setViewHolderDatas(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;)V
    .locals 5
    .param p1, "slide"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "holder"    # Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;

    .prologue
    .line 109
    iget-object v1, p2, Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;->slider_mark:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mFragment:Lcom/youku/gamecenter/fragment/GameBaseFragment;

    invoke-virtual {v2}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->getFragmentName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2}, Lcom/youku/gamecenter/adapter/PosterAdapter;->setSliderMark(Landroid/widget/TextView;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p2, Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;->action_button:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :goto_0
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->scoller:Ljava/lang/String;

    iget-object v3, p2, Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;->poster:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayListenerImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 132
    return-void

    .line 112
    :cond_0
    iget-object v1, p2, Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;->marginRightView:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mFragment:Lcom/youku/gamecenter/fragment/GameBaseFragment;

    invoke-virtual {v3}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mActBtnMarginRightResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v1, p2, Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;->action_button:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/adapter/PosterAdapter;->translateGalleryStatus(Lcom/youku/gamecenter/data/GameInfoStatus;)Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    move-result-object v0

    .line 115
    .local v0, "galleryButtonStatus":Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;
    iget-object v1, p2, Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;->action_button:Landroid/widget/TextView;

    iget v2, v0, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object v1, p2, Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;->action_button:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mFragment:Lcom/youku/gamecenter/fragment/GameBaseFragment;

    invoke-virtual {v2}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object v1, p2, Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;->action_button:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mFragment:Lcom/youku/gamecenter/fragment/GameBaseFragment;

    invoke-virtual {v2}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->container_bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/UIUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v1, p2, Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;->action_button:Landroid/widget/TextView;

    new-instance v2, Lcom/youku/gamecenter/adapter/PosterAdapter$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/youku/gamecenter/adapter/PosterAdapter$2;-><init>(Lcom/youku/gamecenter/adapter/PosterAdapter;Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;Lcom/youku/gamecenter/data/GameInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public containsGame(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mGameInfos:Ljava/util/List;

    if-nez v3, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v2

    .line 179
    :cond_1
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mGameInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 180
    .local v1, "itemInfo":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mGameInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mGameInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 81
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPicCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mGameInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mGameInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mGameInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 86
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mGameInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    move-object v0, p2

    .line 104
    .end local p2    # "convertView":Landroid/view/View;
    .local v0, "convertView":Landroid/view/View;
    :goto_0
    return-object v0

    .line 90
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mGameInfos:Ljava/util/List;

    iget-object v4, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mGameInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int v4, p1, v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/data/GameInfo;

    .line 94
    .local v2, "slide":Lcom/youku/gamecenter/data/GameInfo;
    if-nez p2, :cond_1

    .line 95
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/youku/gamecenter/R$layout;->game_top_gallery_phone:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 96
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/adapter/PosterAdapter;->initHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;

    move-result-object v1

    .line 97
    .local v1, "holder":Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/youku/gamecenter/adapter/PosterAdapter;->setViewHolderDatas(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;)V

    move-object v0, p2

    .line 104
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 99
    .end local v0    # "convertView":Landroid/view/View;
    .end local v1    # "holder":Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;

    .restart local v1    # "holder":Lcom/youku/gamecenter/adapter/PosterAdapter$Holder;
    goto :goto_1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "d":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/PosterAdapter;->mGameInfos:Ljava/util/List;

    .line 59
    return-void
.end method

.method public translateGalleryStatus(Lcom/youku/gamecenter/data/GameInfoStatus;)Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;
    .locals 1
    .param p1, "gameStatus"    # Lcom/youku/gamecenter/data/GameInfoStatus;

    .prologue
    .line 188
    sget-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne p1, v0, :cond_0

    .line 189
    sget-object v0, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->OPEN:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    .line 197
    :goto_0
    return-object v0

    .line 191
    :cond_0
    sget-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne p1, v0, :cond_1

    .line 192
    sget-object v0, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->DOWNLOAD_DOWN:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    goto :goto_0

    .line 194
    :cond_1
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/adapter/PosterAdapter;->isGameInstallable(Lcom/youku/gamecenter/data/GameInfoStatus;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    sget-object v0, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->INSTALL:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    goto :goto_0

    .line 197
    :cond_2
    sget-object v0, Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;->ING:Lcom/youku/gamecenter/adapter/PosterAdapter$GameGalleryButtonStatus;

    goto :goto_0
.end method
