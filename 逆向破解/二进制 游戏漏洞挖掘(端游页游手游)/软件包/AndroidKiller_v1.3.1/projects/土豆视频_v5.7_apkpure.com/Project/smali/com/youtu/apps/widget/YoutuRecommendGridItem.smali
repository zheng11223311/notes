.class public Lcom/youtu/apps/widget/YoutuRecommendGridItem;
.super Landroid/widget/LinearLayout;
.source "YoutuRecommendGridItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static lastClickTime:J


# instance fields
.field private final YOUKU_RECOMMEND_DOWNLOAD:I

.field private final YOUKU_RECOMMEND_OPEN:I

.field private final YOUKU_RECOMMEND_UPDATE:I

.field private appDownloader:Landroid/widget/TextView;

.field private appIntro:Landroid/widget/TextView;

.field private appLogo:Landroid/widget/ImageView;

.field private appName:Landroid/widget/TextView;

.field private funcImage:Landroid/widget/ImageView;

.field private funcName:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mImageWorker:Lcom/youtu/apps/image/ImageResizer;

.field private mItemInfo:Lcom/youtu/apps/recommend/vo/NewRecommendApplications;

.field private mTabId:Ljava/lang/String;

.field private parentView:Landroid/view/View;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/youtu/apps/image/ImageResizer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tabId"    # Ljava/lang/String;
    .param p3, "imageWorker"    # Lcom/youtu/apps/image/ImageResizer;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->YOUKU_RECOMMEND_DOWNLOAD:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->YOUKU_RECOMMEND_UPDATE:I

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->YOUKU_RECOMMEND_OPEN:I

    .line 40
    iput-object p1, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->initView(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mTabId:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    .line 44
    return-void
.end method

.method private initAppInfo()V
    .locals 9

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->initType()V

    .line 97
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mItemInfo:Lcom/youtu/apps/recommend/vo/NewRecommendApplications;

    invoke-virtual {v6}, Lcom/youtu/apps/recommend/vo/NewRecommendApplications;->getName()Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mItemInfo:Lcom/youtu/apps/recommend/vo/NewRecommendApplications;

    invoke-virtual {v6}, Lcom/youtu/apps/recommend/vo/NewRecommendApplications;->getDownload_count()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "downloadCount":Ljava/lang/String;
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mItemInfo:Lcom/youtu/apps/recommend/vo/NewRecommendApplications;

    invoke-virtual {v6}, Lcom/youtu/apps/recommend/vo/NewRecommendApplications;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "description":Ljava/lang/String;
    const/4 v3, 0x0

    .line 101
    .local v3, "img":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mItemInfo:Lcom/youtu/apps/recommend/vo/NewRecommendApplications;

    invoke-virtual {v6}, Lcom/youtu/apps/recommend/vo/NewRecommendApplications;->getLogo()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "logoUrl":Ljava/lang/String;
    sget-object v0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sClientName:Ljava/lang/String;

    .line 103
    .local v0, "client":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 104
    const-string/jumbo v0, "youku"

    .line 106
    :cond_0
    const-string/jumbo v6, "youku"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 107
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->funcName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/youtu/apps/R$color;->youku_blue:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    :cond_1
    const-string/jumbo v6, "tudou"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 110
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->funcName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/youtu/apps/R$color;->tudou_orange:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    :cond_2
    iget v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->type:I

    packed-switch v6, :pswitch_data_0

    .line 143
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    if-eqz v6, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 145
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    iget-object v7, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->appLogo:Landroid/widget/ImageView;

    invoke-virtual {v6, v4, v7}, Lcom/youtu/apps/image/ImageResizer;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;)V

    .line 149
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 150
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->appName:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 155
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->appDownloader:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u4e0b\u8f7d\u91cf\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 160
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->appIntro:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :goto_4
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->funcImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->parentView:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-void

    .line 114
    :pswitch_0
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->funcName:Landroid/widget/TextView;

    const-string/jumbo v7, "\u4e0b\u8f7d"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const-string/jumbo v6, "youku"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 116
    invoke-virtual {p0}, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/youtu/apps/R$drawable;->grid_item_recommend_download_youku:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 118
    :cond_4
    const-string/jumbo v6, "tudou"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/youtu/apps/R$drawable;->grid_item_recommend_download_tudou:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->funcName:Landroid/widget/TextView;

    const-string/jumbo v7, "\u66f4\u65b0"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const-string/jumbo v6, "youku"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 125
    invoke-virtual {p0}, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/youtu/apps/R$drawable;->grid_item_recommend_update_youku:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 127
    :cond_5
    const-string/jumbo v6, "tudou"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 128
    invoke-virtual {p0}, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/youtu/apps/R$drawable;->grid_item_recommend_update_tudou:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 132
    :pswitch_2
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->funcName:Landroid/widget/TextView;

    const-string/jumbo v7, "\u6253\u5f00"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const-string/jumbo v6, "youku"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 134
    invoke-virtual {p0}, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/youtu/apps/R$drawable;->grid_item_recommend_open_youku:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 136
    :cond_6
    const-string/jumbo v6, "tudou"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 137
    invoke-virtual {p0}, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/youtu/apps/R$drawable;->grid_item_recommend_open_tudou:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 147
    :cond_7
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->appLogo:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/youtu/apps/R$drawable;->tip_no_img:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 152
    :cond_8
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->appName:Landroid/widget/TextView;

    const-string v7, "App\u5e94\u7528"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 157
    :cond_9
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->appDownloader:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 162
    :cond_a
    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->appIntro:Landroid/widget/TextView;

    const-string/jumbo v7, "\u6682\u65e0\u7b80\u4ecb"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initType()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 69
    iget-object v4, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mItemInfo:Lcom/youtu/apps/recommend/vo/NewRecommendApplications;

    invoke-virtual {v4}, Lcom/youtu/apps/recommend/vo/NewRecommendApplications;->getVersion_code()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "versionCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mItemInfo:Lcom/youtu/apps/recommend/vo/NewRecommendApplications;

    invoke-virtual {v4}, Lcom/youtu/apps/recommend/vo/NewRecommendApplications;->getApk_package()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    :cond_0
    iput v5, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->type:I

    .line 89
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v4, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/youtu/apps/recommend/util/Util;->isInsatalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 76
    iget-object v4, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/youtu/apps/recommend/util/Util;->getCurrentVersionCode(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 78
    .local v0, "currentVersionCode":I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 79
    .local v2, "version":I
    if-ge v0, v2, :cond_2

    .line 80
    const/4 v4, 0x1

    iput v4, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->type:I

    goto :goto_0

    .line 84
    .end local v2    # "version":I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 82
    .restart local v2    # "version":I
    :cond_2
    const/4 v4, 0x2

    iput v4, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->type:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v0    # "currentVersionCode":I
    .end local v2    # "version":I
    :cond_3
    iput v5, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->type:I

    goto :goto_0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youtu/apps/R$layout;->grid_item_recommend_topgame:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->parentView:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->parentView:Landroid/view/View;

    sget v1, Lcom/youtu/apps/R$id;->img_recommend_item_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->appLogo:Landroid/widget/ImageView;

    .line 49
    iget-object v0, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->parentView:Landroid/view/View;

    sget v1, Lcom/youtu/apps/R$id;->recommend_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->appName:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->parentView:Landroid/view/View;

    sget v1, Lcom/youtu/apps/R$id;->recommend_downloader:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->appDownloader:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->parentView:Landroid/view/View;

    sget v1, Lcom/youtu/apps/R$id;->recommend_intro:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->appIntro:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->parentView:Landroid/view/View;

    sget v1, Lcom/youtu/apps/R$id;->img_recommend_func:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->funcImage:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->parentView:Landroid/view/View;

    sget v1, Lcom/youtu/apps/R$id;->txt_recommend_func_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->funcName:Landroid/widget/TextView;

    .line 54
    return-void
.end method

.method public static isFastDoubleClick()Z
    .locals 6

    .prologue
    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 170
    .local v0, "time":J
    sget-wide v4, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->lastClickTime:J

    sub-long v2, v0, v4

    .line 171
    .local v2, "timeD":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    const-wide/16 v4, 0x320

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 172
    const/4 v4, 0x1

    .line 175
    :goto_0
    return v4

    .line 174
    :cond_0
    sput-wide v0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->lastClickTime:J

    .line 175
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    invoke-static {}, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->isFastDoubleClick()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v3, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mItemInfo:Lcom/youtu/apps/recommend/vo/NewRecommendApplications;

    invoke-virtual {v3}, Lcom/youtu/apps/recommend/vo/NewRecommendApplications;->getApk_or_url()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mItemInfo:Lcom/youtu/apps/recommend/vo/NewRecommendApplications;

    invoke-virtual {v3}, Lcom/youtu/apps/recommend/vo/NewRecommendApplications;->getApk_package()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mItemInfo:Lcom/youtu/apps/recommend/vo/NewRecommendApplications;

    invoke-virtual {v3}, Lcom/youtu/apps/recommend/vo/NewRecommendApplications;->getApk_class_name()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "className":Ljava/lang/String;
    iget v3, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->type:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 188
    :pswitch_0
    iget-object v3, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/youtu/apps/recommend/util/Util;->hasInternet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mTabId:Ljava/lang/String;

    iget-object v5, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mItemInfo:Lcom/youtu/apps/recommend/vo/NewRecommendApplications;

    invoke-virtual {v5}, Lcom/youtu/apps/recommend/vo/NewRecommendApplications;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mItemInfo:Lcom/youtu/apps/recommend/vo/NewRecommendApplications;

    invoke-virtual {v6}, Lcom/youtu/apps/recommend/vo/NewRecommendApplications;->getApplication_index()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/youtu/apps/recommend/util/Util;->systemDownLoad(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 197
    :pswitch_1
    iget-object v3, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Lcom/youtu/apps/recommend/util/Util;->openApp(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRecommendItemInfo(Lcom/youtu/apps/recommend/vo/NewRecommendApplications;)V
    .locals 1
    .param p1, "itemInfo"    # Lcom/youtu/apps/recommend/vo/NewRecommendApplications;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mItemInfo:Lcom/youtu/apps/recommend/vo/NewRecommendApplications;

    .line 58
    iget-object v0, p0, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->mItemInfo:Lcom/youtu/apps/recommend/vo/NewRecommendApplications;

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->initAppInfo()V

    .line 61
    :cond_0
    return-void
.end method
