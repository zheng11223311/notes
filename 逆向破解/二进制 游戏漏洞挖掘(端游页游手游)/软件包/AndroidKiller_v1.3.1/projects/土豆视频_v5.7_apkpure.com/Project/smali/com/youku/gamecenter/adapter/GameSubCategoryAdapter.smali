.class public Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameSubCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;
    }
.end annotation


# instance fields
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


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "tabId"    # I
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    sget v0, Lcom/youku/gamecenter/R$string;->game_download_count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mSortTypeResId:Ljava/lang/Integer;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    .line 43
    iput p2, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mTabId:I

    .line 44
    iput-object p3, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mSource:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method private getDownloadStr(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mSortTypeResId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->total_downloads:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 208
    new-instance v0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;-><init>()V

    .line 209
    .local v0, "holder":Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 210
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 211
    sget v1, Lcom/youku/gamecenter/R$id;->item_recommendtype:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    .line 213
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_recommendtype:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendTypeTop:Landroid/widget/ImageView;

    .line 216
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_size:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->size:Landroid/widget/TextView;

    .line 217
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_downloadtimes:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->downloadTimes:Landroid/widget/TextView;

    .line 219
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_des:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->des:Landroid/widget/TextView;

    .line 220
    sget v1, Lcom/youku/gamecenter/R$id;->list_item_rate:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->rate:Landroid/widget/RatingBar;

    .line 222
    sget v1, Lcom/youku/gamecenter/R$id;->count_downloadtimes:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->size_downloadTimesLayout:Landroid/widget/RelativeLayout;

    .line 224
    sget v1, Lcom/youku/gamecenter/R$id;->progress_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    .line 226
    sget v1, Lcom/youku/gamecenter/R$id;->rootview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/widgets/ProgressView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    .line 227
    sget v1, Lcom/youku/gamecenter/R$id;->progress_rate:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressRate:Landroid/widget/TextView;

    .line 229
    sget v1, Lcom/youku/gamecenter/R$id;->action_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    .line 230
    sget v1, Lcom/youku/gamecenter/R$id;->list_item:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->listItem:Landroid/view/View;

    .line 231
    return-object v0
.end method

.method private isHighSdkVersion()Z
    .locals 1

    .prologue
    .line 254
    invoke-static {}, Lcom/youku/gamecenter/util/CommonUtils;->isHighSdkVersion()Z

    move-result v0

    return v0
.end method

.method private isUpdatePartly(Ljava/lang/String;Landroid/view/View;)Z
    .locals 3
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 236
    sget v2, Lcom/youku/gamecenter/R$id;->game_list_view_tag_id:I

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v1

    .line 240
    :cond_1
    sget v2, Lcom/youku/gamecenter/R$id;->game_list_view_tag_id:I

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 242
    .local v0, "storedPackName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->isHighSdkVersion()Z

    move-result v1

    goto :goto_0
.end method

.method private onActionButtonClickListener(ILcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;
    .param p3, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 323
    new-instance v0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$2;-><init>(Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;Lcom/youku/gamecenter/data/GameInfo;I)V

    return-object v0
.end method

.method private onItemClickListener(ILcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "position"    # I
    .param p2, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 312
    new-instance v0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$1;-><init>(Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;Lcom/youku/gamecenter/data/GameInfo;I)V

    return-object v0
.end method

.method private setRecomUI(Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 6
    .param p1, "holder"    # Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;
    .param p2, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 153
    invoke-virtual {p2}, Lcom/youku/gamecenter/data/GameInfo;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendTypeTop:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendTypeTop:Landroid/widget/ImageView;

    sget v3, Lcom/youku/gamecenter/R$drawable;->game_reom_type_present:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendTypeTop:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendTypeTop:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v2, p2, Lcom/youku/gamecenter/data/GameInfo;->recommend_type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    :try_start_0
    iget-object v2, p2, Lcom/youku/gamecenter/data/GameInfo;->recommend_type:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 167
    .local v1, "recommendType":I
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    packed-switch v1, :pswitch_data_0

    .line 190
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    .end local v1    # "recommendType":I
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "recommendType":I
    :pswitch_0
    :try_start_1
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    sget v3, Lcom/youku/gamecenter/R$drawable;->game_reom_type_rm:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 174
    :pswitch_1
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    sget v3, Lcom/youku/gamecenter/R$drawable;->game_reom_type_jp:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 178
    :pswitch_2
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    sget v3, Lcom/youku/gamecenter/R$drawable;->game_reom_type_tj:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 182
    :pswitch_3
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    sget v3, Lcom/youku/gamecenter/R$drawable;->game_reom_type_xp:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 186
    :pswitch_4
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    sget v3, Lcom/youku/gamecenter/R$drawable;->game_reom_type_sf:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 201
    .end local v1    # "recommendType":I
    :cond_1
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v2, p1, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->recommendType:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 168
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

.method private setViewHolderDatas(ILcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;
    .param p3, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 101
    invoke-direct {p0, p2, p3}, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->setRecomUI(Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V

    .line 104
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 105
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->size_downloadTimesLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 107
    iget-object v2, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v3, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v2, v3, :cond_0

    iget-object v2, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v3, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v2, v3, :cond_2

    .line 109
    :cond_0
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    invoke-virtual {v2, v8}, Lcom/youku/gamecenter/widgets/ProgressView;->setBackgroud(I)V

    .line 110
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    iget v3, p3, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v2, v3}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgress(I)V

    .line 111
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressRate:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p3, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :goto_0
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget v3, Lcom/youku/gamecenter/R$drawable;->game_list_item_default:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v2

    invoke-virtual {p3}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 126
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/youku/gamecenter/R$string;->game_size:I

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p3, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "gameSize":Ljava/lang/String;
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-direct {p0, p3}, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->getDownloadStr(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "downloadStr":Ljava/lang/String;
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->downloadTimes:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget v2, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mTabId:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mTabId:I

    if-ne v2, v8, :cond_4

    .line 134
    :cond_1
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->rate:Landroid/widget/RatingBar;

    invoke-virtual {v2, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 135
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->des:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->des:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/youku/gamecenter/data/GameInfo;->short_desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_1
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v3, v3, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 144
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v3, v3, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 146
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, p3}, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->onActionButtonClickListener(ILcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->listItem:Landroid/view/View;

    invoke-direct {p0, p1, p3}, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->onItemClickListener(ILcom/youku/gamecenter/data/GameInfo;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void

    .line 112
    .end local v0    # "downloadStr":Ljava/lang/String;
    .end local v1    # "gameSize":Ljava/lang/String;
    :cond_2
    iget-object v2, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v3, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v2, v3, :cond_3

    .line 113
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    invoke-virtual {v2, v6}, Lcom/youku/gamecenter/widgets/ProgressView;->setBackgroud(I)V

    .line 115
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    iget v3, p3, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v2, v3}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgress(I)V

    .line 116
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressRate:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p3, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 118
    :cond_3
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 119
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->size_downloadTimesLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 138
    .restart local v0    # "downloadStr":Ljava/lang/String;
    .restart local v1    # "gameSize":Ljava/lang/String;
    :cond_4
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->des:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->rate:Landroid/widget/RatingBar;

    invoke-virtual {v2, v6}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 140
    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->rate:Landroid/widget/RatingBar;

    iget-wide v4, p3, Lcom/youku/gamecenter/data/GameInfo;->score:D

    double-to-float v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    goto :goto_1
.end method

.method private setViewHolderDatasPartly(ILcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;
    .param p3, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 260
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 261
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->size_downloadTimesLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 262
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v1, v1, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 263
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->actionBtn:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v1, v1, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 265
    iget-object v0, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_2

    .line 267
    :cond_0
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    invoke-virtual {v0, v5}, Lcom/youku/gamecenter/widgets/ProgressView;->setBackgroud(I)V

    .line 268
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    iget v1, p3, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgress(I)V

    .line 269
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressRate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p3, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    :goto_0
    iget v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mTabId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mTabId:I

    if-ne v0, v5, :cond_4

    .line 282
    :cond_1
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->rate:Landroid/widget/RatingBar;

    invoke-virtual {v0, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 283
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->des:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->des:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/youku/gamecenter/data/GameInfo;->short_desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :goto_1
    return-void

    .line 270
    :cond_2
    iget-object v0, p3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_3

    .line 271
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    invoke-virtual {v0, v3}, Lcom/youku/gamecenter/widgets/ProgressView;->setBackgroud(I)V

    .line 273
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    iget v1, p3, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgress(I)V

    .line 274
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressRate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p3, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 276
    :cond_3
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 277
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->size_downloadTimesLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 286
    :cond_4
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->des:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->rate:Landroid/widget/RatingBar;

    invoke-virtual {v0, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 288
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;->rate:Landroid/widget/RatingBar;

    iget-wide v2, p3, Lcom/youku/gamecenter/data/GameInfo;->score:D

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    goto :goto_1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mGameRankInfos:Ljava/util/List;

    if-nez v3, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v2

    .line 297
    :cond_1
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mGameRankInfos:Ljava/util/List;

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

    .line 298
    .local v0, "game":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mGameRankInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mGameRankInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/youku/gamecenter/data/GameInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mGameRankInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mGameRankInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mGameRankInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    .line 62
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
    .line 27
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->getItem(I)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 73
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mGameRankInfos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 74
    .local v1, "info":Lcom/youku/gamecenter/data/GameInfo;
    if-nez p2, :cond_0

    .line 75
    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/youku/gamecenter/R$layout;->listview_gamelist_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 76
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->initViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;

    move-result-object v0

    .line 77
    .local v0, "holder":Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    const/4 v2, 0x0

    .line 85
    .local v2, "updatePartly":Z
    :goto_0
    sget v3, Lcom/youku/gamecenter/R$id;->game_list_view_tag_id:I

    iget-object v4, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 88
    if-eqz v2, :cond_1

    .line 89
    invoke-direct {p0, p1, v0, v1}, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->setViewHolderDatasPartly(ILcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V

    .line 95
    :goto_1
    return-object p2

    .line 80
    .end local v0    # "holder":Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;
    .end local v2    # "updatePartly":Z
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;

    .line 82
    .restart local v0    # "holder":Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;
    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->isUpdatePartly(Ljava/lang/String;Landroid/view/View;)Z

    move-result v2

    .restart local v2    # "updatePartly":Z
    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->setViewHolderDatas(ILcom/youku/gamecenter/adapter/GameSubCategoryAdapter$ViewHolder;Lcom/youku/gamecenter/data/GameInfo;)V

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
    .line 48
    .local p1, "gameRankInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mGameRankInfos:Ljava/util/List;

    .line 49
    return-void
.end method

.method public setSortType(Ljava/lang/String;)V
    .locals 2
    .param p1, "sortType"    # Ljava/lang/String;

    .prologue
    .line 356
    iget v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mTabId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 357
    sget v0, Lcom/youku/gamecenter/R$string;->game_download_count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mSortTypeResId:Ljava/lang/Integer;

    .line 384
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    sget v0, Lcom/youku/gamecenter/R$string;->game_download_count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mSortTypeResId:Ljava/lang/Integer;

    goto :goto_0

    .line 366
    :cond_1
    const-string/jumbo v0, "total"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    sget v0, Lcom/youku/gamecenter/R$string;->game_download_count_total:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mSortTypeResId:Ljava/lang/Integer;

    goto :goto_0

    .line 371
    :cond_2
    const-string v0, "month"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    sget v0, Lcom/youku/gamecenter/R$string;->game_download_count_month:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mSortTypeResId:Ljava/lang/Integer;

    goto :goto_0

    .line 375
    :cond_3
    const-string/jumbo v0, "week"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 376
    sget v0, Lcom/youku/gamecenter/R$string;->game_download_count_week:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mSortTypeResId:Ljava/lang/Integer;

    goto :goto_0

    .line 379
    :cond_4
    const-string v0, "day"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 380
    sget v0, Lcom/youku/gamecenter/R$string;->game_download_count_day:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mSortTypeResId:Ljava/lang/Integer;

    goto :goto_0

    .line 383
    :cond_5
    sget v0, Lcom/youku/gamecenter/R$string;->game_download_count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameSubCategoryAdapter;->mSortTypeResId:Ljava/lang/Integer;

    goto :goto_0
.end method
