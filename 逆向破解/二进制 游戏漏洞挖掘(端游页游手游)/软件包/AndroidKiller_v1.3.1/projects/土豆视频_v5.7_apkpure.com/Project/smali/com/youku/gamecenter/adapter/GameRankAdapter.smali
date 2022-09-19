.class public Lcom/youku/gamecenter/adapter/GameRankAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameRankAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCategoryId:I

.field private mCategoryName:Ljava/lang/String;

.field private mContext:Landroid/support/v4/app/FragmentActivity;

.field private mGameRankInfos:Ljava/util/List;
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

.field private mSortTypeResId:Ljava/lang/Integer;

.field private mSource:Ljava/lang/String;

.field private mTabId:I

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;ZILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "isTablet"    # Z
    .param p3, "tabId"    # I
    .param p4, "source"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    sget v0, Lcom/youku/gamecenter/R$string;->game_download_count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mSortTypeResId:Ljava/lang/Integer;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    .line 49
    iput p3, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mTabId:I

    .line 50
    iput-object p4, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mSource:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/adapter/GameRankAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/GameRankAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/adapter/GameRankAdapter;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/GameRankAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->trackCategoryClick(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/adapter/GameRankAdapter;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/GameRankAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/adapter/GameRankAdapter;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/GameRankAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->trackDownload(ILjava/lang/String;)V

    return-void
.end method

.method private getDownloadStr(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 347
    iget v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mTabId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mSortTypeResId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->specific_downloads:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mSortTypeResId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->total_downloads:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 235
    new-instance v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;-><init>()V

    .line 236
    .local v0, "holder":Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 237
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 238
    sget v1, Lcom/youku/gamecenter/R$id;->item_recommendtype:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    .line 240
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_recommendtype:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendTypeTop:Landroid/widget/ImageView;

    .line 243
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_size:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->size:Landroid/widget/TextView;

    .line 244
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_downloadtimes:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->downloadTimes:Landroid/widget/TextView;

    .line 246
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_des:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->des:Landroid/widget/TextView;

    .line 247
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_rate:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->rate:Landroid/widget/RatingBar;

    .line 249
    sget v1, Lcom/youku/gamecenter/R$id;->count_downloadtimes:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->size_downloadTimesLayout:Landroid/widget/RelativeLayout;

    .line 251
    sget v1, Lcom/youku/gamecenter/R$id;->progress_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    .line 253
    sget v1, Lcom/youku/gamecenter/R$id;->rootview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/widgets/ProgressView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    .line 254
    sget v1, Lcom/youku/gamecenter/R$id;->progress_rate:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->progressRate:Landroid/widget/TextView;

    .line 256
    sget v1, Lcom/youku/gamecenter/R$id;->action_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    .line 257
    sget v1, Lcom/youku/gamecenter/R$id;->list_item:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->listItem:Landroid/view/View;

    .line 259
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_size1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    .line 260
    sget v1, Lcom/youku/gamecenter/R$id;->download_velocity:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    .line 261
    return-object v0
.end method

.method private isHighSdkVersion()Z
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Lcom/youku/gamecenter/util/CommonUtils;->isHighSdkVersion()Z

    move-result v0

    return v0
.end method

.method private isShowRate()Z
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mTabId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 172
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUpdatePartly(Ljava/lang/String;Landroid/view/View;)Z
    .locals 3
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 266
    sget v2, Lcom/youku/gamecenter/R$id;->game_list_view_tag_id:I

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v1

    .line 270
    :cond_1
    sget v2, Lcom/youku/gamecenter/R$id;->game_list_view_tag_id:I

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 272
    .local v0, "storedPackName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->isHighSdkVersion()Z

    move-result v1

    goto :goto_0
.end method

.method private onActionButtonClickListener(ILcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;
    .param p3, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 380
    new-instance v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/youku/gamecenter/adapter/GameRankAdapter$2;-><init>(Lcom/youku/gamecenter/adapter/GameRankAdapter;Lcom/youku/gamecenter/data/GameInfo;ILcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;)V

    return-object v0
.end method

.method private onItemClickListener(ILcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "position"    # I
    .param p2, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 357
    new-instance v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/youku/gamecenter/adapter/GameRankAdapter$1;-><init>(Lcom/youku/gamecenter/adapter/GameRankAdapter;ILcom/youku/gamecenter/data/GameInfo;)V

    return-object v0
.end method

.method private setRecomUI(Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 6
    .param p1, "holder"    # Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;
    .param p2, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 179
    invoke-virtual {p2}, Lcom/youku/gamecenter/data/GameInfo;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendTypeTop:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendTypeTop:Landroid/widget/ImageView;

    sget v3, Lcom/youku/gamecenter/R$drawable;->game_reom_type_present:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendTypeTop:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendTypeTop:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v2, p2, Lcom/youku/gamecenter/data/GameInfo;->recommend_type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 197
    :cond_1
    :try_start_0
    iget-object v2, p2, Lcom/youku/gamecenter/data/GameInfo;->recommend_type:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 198
    .local v1, "recommendType":I
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    packed-switch v1, :pswitch_data_0

    .line 221
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    .end local v1    # "recommendType":I
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 201
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "recommendType":I
    :pswitch_0
    :try_start_1
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    sget v3, Lcom/youku/gamecenter/R$drawable;->game_reom_type_rm:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 205
    :pswitch_1
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    sget v3, Lcom/youku/gamecenter/R$drawable;->game_reom_type_jp:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 209
    :pswitch_2
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    sget v3, Lcom/youku/gamecenter/R$drawable;->game_reom_type_tj:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 213
    :pswitch_3
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    sget v3, Lcom/youku/gamecenter/R$drawable;->game_reom_type_xp:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 217
    :pswitch_4
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    sget v3, Lcom/youku/gamecenter/R$drawable;->game_reom_type_sf:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setViewHolderDatas(ILcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;
    .param p3, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 110
    invoke-direct {p0, p2, p3}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->setRecomUI(Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V

    .line 113
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 114
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->size_downloadTimesLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    iget-object v2, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v3, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v2, v3, :cond_0

    iget-object v2, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v3, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v2, v3, :cond_0

    iget-object v2, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v3, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v2, v3, :cond_2

    .line 119
    :cond_0
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    invoke-virtual {v2, v8}, Lcom/youku/gamecenter/widgets/ProgressView;->setBackgroud(I)V

    .line 120
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    iget v3, p3, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v2, v3}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgress(I)V

    .line 121
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p3, Lcom/youku/gamecenter/data/GameInfo;->currentLength:J

    invoke-static {v4, v5}, Lcom/youku/gamecenter/util/CommonUtils;->formatSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    sget v3, Lcom/youku/gamecenter/R$string;->game_download_pause:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 123
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/youku/gamecenter/R$color;->game_gamelist_item_size_text_color:I

    invoke-static {v3, v4}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/youku/gamecenter/R$color;->game_gamelist_item_size_text_color:I

    invoke-static {v3, v4}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v2, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v3, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v2, v3, :cond_1

    .line 126
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    sget v3, Lcom/youku/gamecenter/R$string;->game_download_pending:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 141
    :cond_1
    :goto_0
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget v3, Lcom/youku/gamecenter/R$drawable;->game_list_item_default:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v2

    invoke-virtual {p3}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 145
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/youku/gamecenter/R$string;->game_size:I

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p3, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "gameSize":Ljava/lang/String;
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-direct {p0, p3}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->getDownloadStr(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "downloadStr":Ljava/lang/String;
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->downloadTimes:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-direct {p0}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->isShowRate()Z

    move-result v2

    if-nez v2, :cond_4

    .line 152
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->rate:Landroid/widget/RatingBar;

    invoke-virtual {v2, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 153
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->des:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->des:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/youku/gamecenter/data/GameInfo;->short_desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :goto_1
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v3, v3, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    iget-object v4, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v4, v4, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    invoke-static {v3, v4}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v3, v3, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 165
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, p3}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->onActionButtonClickListener(ILcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->listItem:Landroid/view/View;

    invoke-direct {p0, p1, p3}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->onItemClickListener(ILcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void

    .line 128
    .end local v0    # "downloadStr":Ljava/lang/String;
    .end local v1    # "gameSize":Ljava/lang/String;
    :cond_2
    iget-object v2, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v3, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v2, v3, :cond_3

    .line 129
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    invoke-virtual {v2, v6}, Lcom/youku/gamecenter/widgets/ProgressView;->setBackgroud(I)V

    .line 131
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    iget v3, p3, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v2, v3}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgress(I)V

    .line 132
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p3, Lcom/youku/gamecenter/data/GameInfo;->currentLength:J

    invoke-static {v4, v5}, Lcom/youku/gamecenter/util/CommonUtils;->formatSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    iget v3, p3, Lcom/youku/gamecenter/data/GameInfo;->downloadVelocity:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Lcom/youku/gamecenter/util/CommonUtils;->formatDownloadVelocity(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/youku/gamecenter/R$color;->game_gamelist_item_downloading_color:I

    invoke-static {v3, v4}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/youku/gamecenter/R$color;->game_gamelist_item_downloading_color:I

    invoke-static {v3, v4}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 137
    :cond_3
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 138
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->size_downloadTimesLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 156
    .restart local v0    # "downloadStr":Ljava/lang/String;
    .restart local v1    # "gameSize":Ljava/lang/String;
    :cond_4
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->des:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->rate:Landroid/widget/RatingBar;

    invoke-virtual {v2, v6}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 158
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->rate:Landroid/widget/RatingBar;

    iget-wide v4, p3, Lcom/youku/gamecenter/data/GameInfo;->score:D

    double-to-float v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    goto/16 :goto_1
.end method

.method private setViewHolderDatasPartly(ILcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;
    .param p3, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 290
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 291
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->size_downloadTimesLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 292
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v1, v1, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 293
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v1, v1, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 296
    iget-object v0, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_2

    .line 299
    :cond_0
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/ProgressView;->setBackgroud(I)V

    .line 300
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    iget v1, p3, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgress(I)V

    .line 301
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p3, Lcom/youku/gamecenter/data/GameInfo;->currentLength:J

    invoke-static {v2, v3}, Lcom/youku/gamecenter/util/CommonUtils;->formatSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    sget v1, Lcom/youku/gamecenter/R$string;->game_download_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 303
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/youku/gamecenter/R$color;->game_gamelist_item_size_text_color:I

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/youku/gamecenter/R$color;->game_gamelist_item_size_text_color:I

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    iget-object v0, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_1

    .line 306
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    sget v1, Lcom/youku/gamecenter/R$string;->game_download_pending:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 322
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->isShowRate()Z

    move-result v0

    if-nez v0, :cond_4

    .line 323
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->rate:Landroid/widget/RatingBar;

    invoke-virtual {v0, v5}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 324
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->des:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->des:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/youku/gamecenter/data/GameInfo;->short_desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :goto_1
    return-void

    .line 308
    :cond_2
    iget-object v0, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_3

    .line 309
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    invoke-virtual {v0, v4}, Lcom/youku/gamecenter/widgets/ProgressView;->setBackgroud(I)V

    .line 311
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    iget v1, p3, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgress(I)V

    .line 312
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p3, Lcom/youku/gamecenter/data/GameInfo;->currentLength:J

    invoke-static {v2, v3}, Lcom/youku/gamecenter/util/CommonUtils;->formatSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    iget v1, p3, Lcom/youku/gamecenter/data/GameInfo;->downloadVelocity:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/youku/gamecenter/util/CommonUtils;->formatDownloadVelocity(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->size1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/youku/gamecenter/R$color;->game_gamelist_item_downloading_color:I

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->downloadVelocity:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/youku/gamecenter/R$color;->game_gamelist_item_downloading_color:I

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByResourse(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 318
    :cond_3
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 319
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->size_downloadTimesLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 327
    :cond_4
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->des:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->rate:Landroid/widget/RatingBar;

    invoke-virtual {v0, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 329
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;->rate:Landroid/widget/RatingBar;

    iget-wide v2, p3, Lcom/youku/gamecenter/data/GameInfo;->score:D

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    goto :goto_1
.end method

.method private trackCategoryClick(ILjava/lang/String;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "appname"    # Ljava/lang/String;

    .prologue
    .line 370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 371
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "gameSelect_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mCategoryId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v1, "gamename"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gameSelectList|gameClick|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5206\u7c7b\u5217\u8868"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u6e38\u620f\u533a\u5757"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u70b9\u51fb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u6e38\u620f\u5206\u7c7b\u5217\u8868"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackCustomClick(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method private trackDownload(ILjava/lang/String;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "appname"    # Ljava/lang/String;

    .prologue
    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 399
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "gameSelect_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mCategoryId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v1, "gamename"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gameSelectList|downloadClick|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5206\u7c7b\u5217\u8868"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u4e0b\u8f7d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u70b9\u51fb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u6e38\u620f\u5206\u7c7b\u5217\u8868"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackCustomClick(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 335
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mGameRankInfos:Ljava/util/List;

    if-nez v3, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v2

    .line 338
    :cond_1
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mGameRankInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    .line 339
    .local v0, "game":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 340
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mGameRankInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mGameRankInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/youku/gamecenter/data/GameInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mGameRankInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mGameRankInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mGameRankInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->getItem(I)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 76
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mGameRankInfos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 84
    .local v1, "info":Lcom/youku/gamecenter/data/GameInfo;
    if-nez p2, :cond_0

    .line 85
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/youku/gamecenter/R$layout;->listview_gamelist_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 86
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->initViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;

    move-result-object v0

    .line 87
    .local v0, "holder":Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    const/4 v2, 0x0

    .line 95
    .local v2, "updatePartly":Z
    :goto_0
    sget v3, Lcom/youku/gamecenter/R$id;->game_list_view_tag_id:I

    iget-object v4, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 98
    if-eqz v2, :cond_1

    .line 99
    invoke-direct {p0, p1, v0, v1}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->setViewHolderDatasPartly(ILcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V

    .line 105
    :goto_1
    return-object p2

    .line 90
    .end local v0    # "holder":Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;
    .end local v2    # "updatePartly":Z
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;

    .line 92
    .restart local v0    # "holder":Lcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;
    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->isUpdatePartly(Ljava/lang/String;Landroid/view/View;)Z

    move-result v2

    .restart local v2    # "updatePartly":Z
    goto :goto_0

    .line 103
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->setViewHolderDatas(ILcom/youku/gamecenter/adapter/GameRankAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V

    goto :goto_1
.end method

.method public setCategoryId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 467
    iput p1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mCategoryId:I

    .line 468
    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mCategoryName:Ljava/lang/String;

    .line 464
    return-void
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
    .local p1, "gameRankInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mGameRankInfos:Ljava/util/List;

    .line 59
    return-void
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->rootView:Landroid/view/View;

    .line 55
    return-void
.end method

.method public setSortType(Ljava/lang/String;)V
    .locals 2
    .param p1, "sortType"    # Ljava/lang/String;

    .prologue
    .line 432
    iget v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mTabId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 433
    sget v0, Lcom/youku/gamecenter/R$string;->game_download_count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mSortTypeResId:Ljava/lang/Integer;

    .line 460
    :goto_0
    return-void

    .line 437
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    sget v0, Lcom/youku/gamecenter/R$string;->game_download_count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mSortTypeResId:Ljava/lang/Integer;

    goto :goto_0

    .line 442
    :cond_1
    const-string/jumbo v0, "total"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    sget v0, Lcom/youku/gamecenter/R$string;->game_download_count_total:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mSortTypeResId:Ljava/lang/Integer;

    goto :goto_0

    .line 447
    :cond_2
    const-string v0, "month"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    sget v0, Lcom/youku/gamecenter/R$string;->game_download_count_month:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mSortTypeResId:Ljava/lang/Integer;

    goto :goto_0

    .line 451
    :cond_3
    const-string/jumbo v0, "week"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 452
    sget v0, Lcom/youku/gamecenter/R$string;->game_download_count_week:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mSortTypeResId:Ljava/lang/Integer;

    goto :goto_0

    .line 455
    :cond_4
    const-string v0, "day"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 456
    sget v0, Lcom/youku/gamecenter/R$string;->game_download_count_day:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mSortTypeResId:Ljava/lang/Integer;

    goto :goto_0

    .line 459
    :cond_5
    sget v0, Lcom/youku/gamecenter/R$string;->game_download_count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameRankAdapter;->mSortTypeResId:Ljava/lang/Integer;

    goto :goto_0
.end method
