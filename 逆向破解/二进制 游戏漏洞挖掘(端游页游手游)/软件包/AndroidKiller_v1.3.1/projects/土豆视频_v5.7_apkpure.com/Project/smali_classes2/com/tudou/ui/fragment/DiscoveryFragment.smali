.class public Lcom/tudou/ui/fragment/DiscoveryFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "DiscoveryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final NET_FAILED:I = 0x2

.field private static final NET_SUCESS:I = 0x3


# instance fields
.field private LF_URL:Ljava/lang/String;

.field private fragmentView:Landroid/view/View;

.field private lastAddItemType:Ljava/lang/String;

.field private mDiscoveryGroupHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/youku/vo/DiscoveryGroupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDiscoveryPosterAdapter:Lcom/tudou/adapter/DiscoveryPosterAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mImgSaoYiSao:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutNone:Lcom/youku/widget/HintView;

.field private mMainContainer:Landroid/widget/LinearLayout;

.field private mMainScrollView:Landroid/widget/ScrollView;

.field private mTxtDiscoverySearch:Landroid/widget/TextView;

.field private manager:Lcom/tudou/guide/SplashSubManager;

.field private poster:Lcom/youku/widget/YoukuGallery;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 132
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 134
    new-instance v0, Lcom/tudou/ui/fragment/DiscoveryFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/DiscoveryFragment$1;-><init>(Lcom/tudou/ui/fragment/DiscoveryFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/DiscoveryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DiscoveryFragment;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->buildPage()V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/DiscoveryFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DiscoveryFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mLayoutNone:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/vo/SkipInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/vo/SkipInfo;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcom/tudou/ui/fragment/DiscoveryFragment;->unionOnEventSlide(Lcom/youku/vo/SkipInfo;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/DiscoveryFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DiscoveryFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->LF_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tudou/ui/fragment/DiscoveryFragment;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DiscoveryFragment;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mDiscoveryGroupHashMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/DiscoveryFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DiscoveryFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private buildPage()V
    .locals 12

    .prologue
    .line 215
    iget-object v10, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mDiscoveryGroupHashMap:Ljava/util/HashMap;

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mDiscoveryGroupHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_10

    .line 216
    iget-object v10, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mTxtDiscoverySearch:Landroid/widget/TextView;

    sget-object v11, Lcom/youku/vo/DiscoveryGroupItem;->search_content:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v10, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mMainContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 218
    const/4 v5, 0x0

    .line 221
    .local v5, "itemView":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v10, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mDiscoveryGroupHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getKeyMax(Ljava/util/Set;)I

    move-result v10

    if-ge v1, v10, :cond_10

    .line 222
    iget-object v10, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mDiscoveryGroupHashMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DiscoveryGroupItem;

    .line 223
    .local v2, "item":Lcom/youku/vo/DiscoveryGroupItem;
    if-eqz v2, :cond_f

    .line 224
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    iget-object v10, v2, Lcom/youku/vo/DiscoveryGroupItem;->disconveryItems:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getKeyMax(Ljava/util/Set;)I

    move-result v10

    if-ge v6, v10, :cond_d

    .line 225
    iget-object v10, v2, Lcom/youku/vo/DiscoveryGroupItem;->disconveryItems:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/DiscoveryItem;

    .line 226
    .local v3, "item2":Lcom/youku/vo/DiscoveryItem;
    if-eqz v3, :cond_2

    .line 227
    const-string v10, "page_headline"

    iget-object v11, v3, Lcom/youku/vo/DiscoveryItem;->sub_type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v7, v3

    .line 229
    check-cast v7, Lcom/youku/vo/DiscoveryItemPageHeadline;

    .line 230
    .local v7, "pageHeadline":Lcom/youku/vo/DiscoveryItemPageHeadline;
    invoke-direct {p0, v7}, Lcom/tudou/ui/fragment/DiscoveryFragment;->initGallery(Lcom/youku/vo/DiscoveryItemPageHeadline;)Landroid/view/View;

    move-result-object v5

    .line 266
    .end local v7    # "pageHeadline":Lcom/youku/vo/DiscoveryItemPageHeadline;
    :cond_0
    :goto_2
    if-eqz v5, :cond_2

    .line 267
    iget-object v10, v3, Lcom/youku/vo/DiscoveryItem;->sub_type:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 268
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v10, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mMainContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    iget-object v10, v2, Lcom/youku/vo/DiscoveryGroupItem;->disconveryItems:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getKeyMax(Ljava/util/Set;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v10, v6, :cond_1

    .line 271
    iget-object v10, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mMainContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getLineMargin()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 273
    :cond_1
    iget-object v10, v3, Lcom/youku/vo/DiscoveryItem;->sub_type:Ljava/lang/String;

    iput-object v10, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->lastAddItemType:Ljava/lang/String;

    .line 274
    const/4 v5, 0x0

    .line 224
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 231
    :cond_3
    const-string v10, "danmu"

    iget-object v11, v3, Lcom/youku/vo/DiscoveryItem;->sub_type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v4, v3

    .line 233
    check-cast v4, Lcom/youku/vo/DiscoveryItemDanmu;

    .line 234
    .local v4, "itemDanmu":Lcom/youku/vo/DiscoveryItemDanmu;
    invoke-direct {p0, v4}, Lcom/tudou/ui/fragment/DiscoveryFragment;->initDanmu(Lcom/youku/vo/DiscoveryItemDanmu;)Landroid/view/View;

    move-result-object v5

    .line 235
    goto :goto_2

    .end local v4    # "itemDanmu":Lcom/youku/vo/DiscoveryItemDanmu;
    :cond_4
    const-string v10, "ranking_list"

    iget-object v11, v3, Lcom/youku/vo/DiscoveryItem;->sub_type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v8, v3

    .line 237
    check-cast v8, Lcom/youku/vo/DiscoveryItemRankingList;

    .line 238
    .local v8, "rankingList":Lcom/youku/vo/DiscoveryItemRankingList;
    invoke-direct {p0, v8}, Lcom/tudou/ui/fragment/DiscoveryFragment;->initRankingList(Lcom/youku/vo/DiscoveryItemRankingList;)Landroid/view/View;

    move-result-object v5

    .line 239
    goto :goto_2

    .end local v8    # "rankingList":Lcom/youku/vo/DiscoveryItemRankingList;
    :cond_5
    const-string v10, "week_schedule"

    iget-object v11, v3, Lcom/youku/vo/DiscoveryItem;->sub_type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 241
    invoke-direct {p0, v3}, Lcom/tudou/ui/fragment/DiscoveryFragment;->initNormalItem(Lcom/youku/vo/DiscoveryItem;)Landroid/view/View;

    move-result-object v5

    goto :goto_2

    .line 242
    :cond_6
    const-string v10, "recommend_user_list"

    iget-object v11, v3, Lcom/youku/vo/DiscoveryItem;->sub_type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v9, v3

    .line 244
    check-cast v9, Lcom/youku/vo/DiscoveryItemRecommendUserList;

    .line 245
    .local v9, "recommendUserList":Lcom/youku/vo/DiscoveryItemRecommendUserList;
    invoke-direct {p0, v9}, Lcom/tudou/ui/fragment/DiscoveryFragment;->initRecommendUserList(Lcom/youku/vo/DiscoveryItemRecommendUserList;)Landroid/view/View;

    move-result-object v5

    .line 246
    goto :goto_2

    .end local v9    # "recommendUserList":Lcom/youku/vo/DiscoveryItemRecommendUserList;
    :cond_7
    const-string v10, "cross_platform"

    iget-object v11, v3, Lcom/youku/vo/DiscoveryItem;->sub_type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 248
    invoke-direct {p0, v3}, Lcom/tudou/ui/fragment/DiscoveryFragment;->initNormalItem(Lcom/youku/vo/DiscoveryItem;)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_2

    .line 249
    :cond_8
    const-string v10, "app_recommend"

    iget-object v11, v3, Lcom/youku/vo/DiscoveryItem;->sub_type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 251
    invoke-direct {p0, v3}, Lcom/tudou/ui/fragment/DiscoveryFragment;->initNormalItem(Lcom/youku/vo/DiscoveryItem;)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_2

    .line 252
    :cond_9
    const-string v10, "game_center"

    iget-object v11, v3, Lcom/youku/vo/DiscoveryItem;->sub_type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 254
    invoke-direct {p0, v3}, Lcom/tudou/ui/fragment/DiscoveryFragment;->initNormalItem(Lcom/youku/vo/DiscoveryItem;)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_2

    .line 255
    :cond_a
    const-string v10, "laifeng"

    iget-object v11, v3, Lcom/youku/vo/DiscoveryItem;->sub_type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    move-object v0, v3

    .line 257
    check-cast v0, Lcom/youku/vo/DiscoveryItemLF;

    .line 258
    .local v0, "LFItem":Lcom/youku/vo/DiscoveryItemLF;
    iget-object v10, v0, Lcom/youku/vo/DiscoveryItemLF;->skip_url:Ljava/lang/String;

    iput-object v10, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->LF_URL:Ljava/lang/String;

    .line 259
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->initLF(Lcom/youku/vo/DiscoveryItemLF;)Landroid/view/View;

    move-result-object v5

    .line 260
    goto/16 :goto_2

    .end local v0    # "LFItem":Lcom/youku/vo/DiscoveryItemLF;
    :cond_b
    const-string v10, "subscription_guide"

    iget-object v11, v3, Lcom/youku/vo/DiscoveryItem;->sub_type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 262
    invoke-direct {p0, v3}, Lcom/tudou/ui/fragment/DiscoveryFragment;->initNormalItem(Lcom/youku/vo/DiscoveryItem;)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_2

    .line 263
    :cond_c
    const-string v10, "the_show"

    iget-object v11, v3, Lcom/youku/vo/DiscoveryItem;->sub_type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 264
    invoke-direct {p0, v3}, Lcom/tudou/ui/fragment/DiscoveryFragment;->initNormalItem(Lcom/youku/vo/DiscoveryItem;)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_2

    .line 281
    .end local v3    # "item2":Lcom/youku/vo/DiscoveryItem;
    :cond_d
    const-string v10, "page_headline"

    iget-object v11, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->lastAddItemType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 282
    iget-object v10, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mMainContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getLine()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    :cond_e
    iget-object v10, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mMainContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getBlank()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    iget-object v10, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mDiscoveryGroupHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getKeyMax(Ljava/util/Set;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v10, v1, :cond_f

    .line 286
    iget-object v10, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mMainContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getLine()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    .end local v6    # "j":I
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 292
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/youku/vo/DiscoveryGroupItem;
    .end local v5    # "itemView":Landroid/view/View;
    :cond_10
    return-void
.end method

.method private getBlank()Landroid/view/View;
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300e7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getKeyMax(Ljava/util/Set;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 665
    .local p1, "mapSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 666
    .local v2, "maxKey":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 667
    .local v0, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 668
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 669
    .local v1, "key":I
    if-le v1, v2, :cond_0

    .line 670
    move v2, v1

    goto :goto_0

    .line 673
    .end local v1    # "key":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private getLine()Landroid/view/View;
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ec

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getLineMargin()Landroid/view/View;
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ed

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initDanmu(Lcom/youku/vo/DiscoveryItemDanmu;)Landroid/view/View;
    .locals 7
    .param p1, "aitemDanmu"    # Lcom/youku/vo/DiscoveryItemDanmu;

    .prologue
    .line 426
    new-instance v6, Lcom/tudou/adapter/DiscoveryItemView;

    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/tudou/adapter/DiscoveryItemView;-><init>(Landroid/content/Context;)V

    .line 427
    .local v6, "itemView":Lcom/tudou/adapter/DiscoveryItemView;
    iget-object v1, v6, Lcom/tudou/adapter/DiscoveryItemView;->channelTitle:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/tudou/adapter/DiscoveryItemView;->subTitle:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/tudou/adapter/DiscoveryItemView;->iconLeft:Landroid/widget/ImageView;

    iget-object v4, v6, Lcom/tudou/adapter/DiscoveryItemView;->mImgTitleTag:Landroid/widget/ImageView;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tudou/ui/fragment/DiscoveryFragment;->setNormalView(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/youku/vo/DiscoveryItem;)V

    .line 429
    return-object v6
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 695
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/widget/YoukuLoading;->showNoLimitTouchModel(Landroid/content/Context;)V

    .line 697
    iget-object v2, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mLayoutNone:Lcom/youku/widget/HintView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 698
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 700
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getDiscoveryUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 702
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/DiscoveryFragment$6;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/DiscoveryFragment$6;-><init>(Lcom/tudou/ui/fragment/DiscoveryFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 729
    .end local v0    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v1    # "httpRequest":Lcom/youku/network/IHttpRequest;
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mLayoutNone:Lcom/youku/widget/HintView;

    sget-object v3, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v2, v3}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 725
    iget-object v2, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mLayoutNone:Lcom/youku/widget/HintView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 726
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0
.end method

.method private initGallery(Lcom/youku/vo/DiscoveryItemPageHeadline;)Landroid/view/View;
    .locals 10
    .param p1, "aPageHeadline"    # Lcom/youku/vo/DiscoveryItemPageHeadline;

    .prologue
    const/4 v9, 0x0

    .line 323
    iget-object v6, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0300e6

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 324
    .local v1, "gallery":Landroid/view/View;
    const v6, 0x7f0c0289

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/youku/widget/YoukuGallery;

    iput-object v6, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->poster:Lcom/youku/widget/YoukuGallery;

    .line 325
    const v6, 0x7f0c028c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 327
    .local v5, "point_container":Landroid/widget/LinearLayout;
    iget-object v6, p1, Lcom/youku/vo/DiscoveryItemPageHeadline;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 328
    .local v3, "len":I
    if-nez v3, :cond_0

    .line 410
    :goto_0
    return-object v1

    .line 331
    :cond_0
    new-instance v6, Lcom/tudou/adapter/DiscoveryPosterAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v7

    iget-object v8, p1, Lcom/youku/vo/DiscoveryItemPageHeadline;->items:Ljava/util/List;

    invoke-direct {v6, v7, v8}, Lcom/tudou/adapter/DiscoveryPosterAdapter;-><init>(Lcom/tudou/ui/activity/BaseActivity;Ljava/util/List;)V

    iput-object v6, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mDiscoveryPosterAdapter:Lcom/tudou/adapter/DiscoveryPosterAdapter;

    .line 333
    iget-object v6, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->poster:Lcom/youku/widget/YoukuGallery;

    iget-object v7, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mDiscoveryPosterAdapter:Lcom/tudou/adapter/DiscoveryPosterAdapter;

    invoke-virtual {v6, v7}, Lcom/youku/widget/YoukuGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 335
    iget-object v6, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->poster:Lcom/youku/widget/YoukuGallery;

    new-instance v7, Lcom/tudou/ui/fragment/DiscoveryFragment$2;

    invoke-direct {v7, p0, v3, p1}, Lcom/tudou/ui/fragment/DiscoveryFragment$2;-><init>(Lcom/tudou/ui/fragment/DiscoveryFragment;ILcom/youku/vo/DiscoveryItemPageHeadline;)V

    invoke-virtual {v6, v7}, Lcom/youku/widget/YoukuGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 365
    iget-object v6, p1, Lcom/youku/vo/DiscoveryItemPageHeadline;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 366
    iget-object v6, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->poster:Lcom/youku/widget/YoukuGallery;

    invoke-virtual {v6, v9}, Lcom/youku/widget/YoukuGallery;->setCanScroll(Z)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object v6, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->poster:Lcom/youku/widget/YoukuGallery;

    invoke-virtual {v6}, Lcom/youku/widget/YoukuGallery;->startAutoSlide()V

    .line 371
    new-array v4, v3, [Landroid/widget/ImageView;

    .line 372
    .local v4, "pointImageViews":[Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 373
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 374
    new-instance v6, Landroid/widget/ImageView;

    sget-object v7, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v2

    .line 375
    aget-object v6, v4, v2

    const v7, 0x7f0206eb

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 377
    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 380
    :cond_2
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v4, v6

    if-eqz v6, :cond_3

    .line 381
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const v7, 0x7f0206ed

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->poster:Lcom/youku/widget/YoukuGallery;

    new-instance v7, Lcom/tudou/ui/fragment/DiscoveryFragment$3;

    invoke-direct {v7, p0, v4, v3}, Lcom/tudou/ui/fragment/DiscoveryFragment$3;-><init>(Lcom/tudou/ui/fragment/DiscoveryFragment;[Landroid/widget/ImageView;I)V

    invoke-virtual {v6, v7}, Lcom/youku/widget/YoukuGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private initLF(Lcom/youku/vo/DiscoveryItemLF;)Landroid/view/View;
    .locals 8
    .param p1, "aDiscoveryItemLf"    # Lcom/youku/vo/DiscoveryItemLF;

    .prologue
    .line 536
    new-instance v7, Lcom/tudou/adapter/DiscoveryItemLFView;

    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/tudou/adapter/DiscoveryItemLFView;-><init>(Landroid/content/Context;)V

    .line 537
    .local v7, "itemView":Lcom/tudou/adapter/DiscoveryItemLFView;
    iget-object v1, v7, Lcom/tudou/adapter/DiscoveryItemLFView;->channelTitle:Landroid/widget/TextView;

    iget-object v2, v7, Lcom/tudou/adapter/DiscoveryItemLFView;->subTitle:Landroid/widget/TextView;

    iget-object v3, v7, Lcom/tudou/adapter/DiscoveryItemLFView;->iconLeft:Landroid/widget/ImageView;

    iget-object v4, v7, Lcom/tudou/adapter/DiscoveryItemLFView;->mImgTitleTag:Landroid/widget/ImageView;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tudou/ui/fragment/DiscoveryFragment;->setNormalView(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/youku/vo/DiscoveryItem;)V

    .line 539
    iget-object v0, p1, Lcom/youku/vo/DiscoveryItemLF;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/youku/vo/DiscoveryItemLF;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 540
    :cond_0
    invoke-virtual {v7}, Lcom/tudou/adapter/DiscoveryItemLFView;->hideBottomLayout()V

    .line 552
    :cond_1
    return-object v7

    .line 543
    :cond_2
    iget-object v0, p1, Lcom/youku/vo/DiscoveryItemLF;->items:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/youku/vo/DiscoveryItemLF;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 544
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p1, Lcom/youku/vo/DiscoveryItemLF;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 545
    const/4 v0, 0x1

    if-gt v6, v0, :cond_1

    .line 548
    iget-object v0, v7, Lcom/tudou/adapter/DiscoveryItemLFView;->cellHolders:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;

    iget-object v1, p1, Lcom/youku/vo/DiscoveryItemLF;->items:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DiscoveryItemLFCell;

    invoke-direct {p0, v0, v1}, Lcom/tudou/ui/fragment/DiscoveryFragment;->setLFData(Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;Lcom/youku/vo/DiscoveryItemLFCell;)V

    .line 544
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private initNormalItem(Lcom/youku/vo/DiscoveryItem;)Landroid/view/View;
    .locals 7
    .param p1, "aDiscoveryItem"    # Lcom/youku/vo/DiscoveryItem;

    .prologue
    .line 634
    new-instance v6, Lcom/tudou/adapter/DiscoveryItemView;

    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/tudou/adapter/DiscoveryItemView;-><init>(Landroid/content/Context;)V

    .line 635
    .local v6, "itemView":Lcom/tudou/adapter/DiscoveryItemView;
    iget-object v1, v6, Lcom/tudou/adapter/DiscoveryItemView;->channelTitle:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/tudou/adapter/DiscoveryItemView;->subTitle:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/tudou/adapter/DiscoveryItemView;->iconLeft:Landroid/widget/ImageView;

    iget-object v4, v6, Lcom/tudou/adapter/DiscoveryItemView;->mImgTitleTag:Landroid/widget/ImageView;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tudou/ui/fragment/DiscoveryFragment;->setNormalView(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/youku/vo/DiscoveryItem;)V

    .line 637
    return-object v6
.end method

.method private initRankingList(Lcom/youku/vo/DiscoveryItemRankingList;)Landroid/view/View;
    .locals 8
    .param p1, "aRankingList"    # Lcom/youku/vo/DiscoveryItemRankingList;

    .prologue
    .line 433
    new-instance v7, Lcom/tudou/adapter/DiscoveryItemRankingListView;

    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/tudou/adapter/DiscoveryItemRankingListView;-><init>(Landroid/content/Context;)V

    .line 435
    .local v7, "itemView":Lcom/tudou/adapter/DiscoveryItemRankingListView;
    iget-object v1, v7, Lcom/tudou/adapter/DiscoveryItemRankingListView;->channelTitle:Landroid/widget/TextView;

    iget-object v2, v7, Lcom/tudou/adapter/DiscoveryItemRankingListView;->subTitle:Landroid/widget/TextView;

    iget-object v3, v7, Lcom/tudou/adapter/DiscoveryItemRankingListView;->iconLeft:Landroid/widget/ImageView;

    iget-object v4, v7, Lcom/tudou/adapter/DiscoveryItemRankingListView;->mImgTitleTag:Landroid/widget/ImageView;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tudou/ui/fragment/DiscoveryFragment;->setNormalView(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/youku/vo/DiscoveryItem;)V

    .line 437
    iget-object v0, p1, Lcom/youku/vo/DiscoveryItemRankingList;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/youku/vo/DiscoveryItemRankingList;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 438
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p1, Lcom/youku/vo/DiscoveryItemRankingList;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 439
    const/4 v0, 0x3

    if-le v6, v0, :cond_1

    .line 446
    .end local v6    # "i":I
    :cond_0
    return-object v7

    .line 442
    .restart local v6    # "i":I
    :cond_1
    iget-object v0, v7, Lcom/tudou/adapter/DiscoveryItemRankingListView;->cellHolders:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;

    iget-object v1, p1, Lcom/youku/vo/DiscoveryItemRankingList;->items:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DiscoveryItemRankingListCell;

    invoke-direct {p0, v0, v1, v6}, Lcom/tudou/ui/fragment/DiscoveryFragment;->setRankingCellData(Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;Lcom/youku/vo/DiscoveryItemRankingListCell;I)V

    .line 438
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private initRecommendUserList(Lcom/youku/vo/DiscoveryItemRecommendUserList;)Landroid/view/View;
    .locals 9
    .param p1, "aRecommendUserList"    # Lcom/youku/vo/DiscoveryItemRecommendUserList;

    .prologue
    const/4 v8, 0x0

    .line 587
    new-instance v6, Lcom/tudou/adapter/DiscoveryItemView;

    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/tudou/adapter/DiscoveryItemView;-><init>(Landroid/content/Context;)V

    .line 588
    .local v6, "itemView":Lcom/tudou/adapter/DiscoveryItemView;
    iget-object v1, v6, Lcom/tudou/adapter/DiscoveryItemView;->channelTitle:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/tudou/adapter/DiscoveryItemView;->subTitle:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/tudou/adapter/DiscoveryItemView;->iconLeft:Landroid/widget/ImageView;

    iget-object v4, v6, Lcom/tudou/adapter/DiscoveryItemView;->mImgTitleTag:Landroid/widget/ImageView;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tudou/ui/fragment/DiscoveryFragment;->setNormalView(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/youku/vo/DiscoveryItem;)V

    .line 590
    iget-object v0, p1, Lcom/youku/vo/DiscoveryItemRecommendUserList;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 591
    iget-object v0, p1, Lcom/youku/vo/DiscoveryItemRecommendUserList;->items:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DiscoveryItemRecommendUserListCell;

    iget-object v7, v0, Lcom/youku/vo/DiscoveryItemRecommendUserListCell;->user_pic:Ljava/lang/String;

    .line 592
    .local v7, "user_pic":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    iget-object v0, v6, Lcom/tudou/adapter/DiscoveryItemView;->user_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 626
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, v6, Lcom/tudou/adapter/DiscoveryItemView;->user_pic:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 630
    .end local v7    # "user_pic":Ljava/lang/String;
    :cond_0
    return-object v6
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->fragmentView:Landroid/view/View;

    const v2, 0x7f0c0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 196
    iget-object v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->fragmentView:Landroid/view/View;

    const v2, 0x7f0c0431

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mMainScrollView:Landroid/widget/ScrollView;

    .line 198
    iget-object v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->fragmentView:Landroid/view/View;

    const v2, 0x7f0c0432

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mMainContainer:Landroid/widget/LinearLayout;

    .line 200
    iget-object v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->fragmentView:Landroid/view/View;

    const v2, 0x7f0c0445

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mImgSaoYiSao:Landroid/widget/ImageView;

    .line 202
    iget-object v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->fragmentView:Landroid/view/View;

    const v2, 0x7f0c0446

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mTxtDiscoverySearch:Landroid/widget/TextView;

    .line 204
    iget-object v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->fragmentView:Landroid/view/View;

    const v2, 0x7f0c00dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/HintView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mLayoutNone:Lcom/youku/widget/HintView;

    .line 206
    iget-object v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mImgSaoYiSao:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mTxtDiscoverySearch:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mLayoutNone:Lcom/youku/widget/HintView;

    invoke-virtual {v1, p0}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 210
    return-void
.end method

.method private setLFData(Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;Lcom/youku/vo/DiscoveryItemLFCell;)V
    .locals 3
    .param p1, "aCellHolder"    # Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;
    .param p2, "aItem"    # Lcom/youku/vo/DiscoveryItemLFCell;

    .prologue
    .line 557
    iget-object v0, p1, Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;->cell_title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/DiscoveryItemLFCell;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget v0, p2, Lcom/youku/vo/DiscoveryItemLFCell;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 559
    iget-object v0, p1, Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;->view_count:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/youku/vo/DiscoveryItemLFCell;->online:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4eba\u5728\u7ebf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :goto_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p2, Lcom/youku/vo/DiscoveryItemLFCell;->cover_link:Ljava/lang/String;

    iget-object v2, p1, Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 564
    iget-object v0, p1, Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;->contener:Landroid/view/View;

    new-instance v1, Lcom/tudou/ui/fragment/DiscoveryFragment$5;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/DiscoveryFragment$5;-><init>(Lcom/tudou/ui/fragment/DiscoveryFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    return-void

    .line 561
    :cond_0
    iget-object v0, p1, Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;->view_count:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/youku/vo/DiscoveryItemLFCell;->fun_num:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7c89\u4e1d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setNormalView(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/youku/vo/DiscoveryItem;)V
    .locals 2
    .param p1, "title"    # Landroid/widget/TextView;
    .param p2, "subTitle"    # Landroid/widget/TextView;
    .param p3, "icon"    # Landroid/widget/ImageView;
    .param p4, "titleTag"    # Landroid/widget/ImageView;
    .param p5, "aDiscoveryItem"    # Lcom/youku/vo/DiscoveryItem;

    .prologue
    .line 643
    iget-object v0, p5, Lcom/youku/vo/DiscoveryItem;->title:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->setTxtLen(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 645
    iget-object v0, p5, Lcom/youku/vo/DiscoveryItem;->sub_title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p5, Lcom/youku/vo/DiscoveryItem;->module_icon:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 648
    iget-object v0, p5, Lcom/youku/vo/DiscoveryItem;->title_corner_image:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p5, Lcom/youku/vo/DiscoveryItem;->title_corner_image:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 655
    :goto_0
    return-void

    .line 652
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setRankingCellData(Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;Lcom/youku/vo/DiscoveryItemRankingListCell;I)V
    .locals 4
    .param p1, "aCellHolder"    # Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;
    .param p2, "aItem"    # Lcom/youku/vo/DiscoveryItemRankingListCell;
    .param p3, "index"    # I

    .prologue
    const/16 v3, 0xff

    .line 451
    iget-object v0, p1, Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;->cell_title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/vo/DiscoveryItemRankingListCell;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p1, Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;->contener:Landroid/view/View;

    new-instance v1, Lcom/tudou/ui/fragment/DiscoveryFragment$4;

    invoke-direct {v1, p0, p2}, Lcom/tudou/ui/fragment/DiscoveryFragment$4;-><init>(Lcom/tudou/ui/fragment/DiscoveryFragment;Lcom/youku/vo/DiscoveryItemRankingListCell;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    packed-switch p3, :pswitch_data_0

    .line 533
    :goto_0
    return-void

    .line 511
    :pswitch_0
    iget-object v0, p1, Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;->contener:Landroid/view/View;

    const v1, 0x7f0201f9

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 513
    iget-object v0, p1, Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;->cell_title:Landroid/widget/TextView;

    const/16 v1, 0x10

    const/16 v2, 0x94

    const/16 v3, 0xf4

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 516
    :pswitch_1
    iget-object v0, p1, Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;->contener:Landroid/view/View;

    const v1, 0x7f0201fd

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 518
    iget-object v0, p1, Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;->cell_title:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/16 v2, 0xc3

    const/16 v3, 0x66

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 521
    :pswitch_2
    iget-object v0, p1, Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;->contener:Landroid/view/View;

    const v1, 0x7f020206

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 523
    iget-object v0, p1, Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;->cell_title:Landroid/widget/TextView;

    const/16 v1, 0x8a

    const/4 v2, 0x0

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 526
    :pswitch_3
    iget-object v0, p1, Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;->contener:Landroid/view/View;

    const v1, 0x7f0201fb

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 528
    iget-object v0, p1, Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;->cell_title:Landroid/widget/TextView;

    const/16 v1, 0x71

    const/16 v2, 0x12

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setTxtLen(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3
    .param p1, "aTextView"    # Landroid/widget/TextView;
    .param p2, "txt"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xa

    .line 658
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 661
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    return-void
.end method

.method public static showDouXiaowu(Landroid/app/Activity;)V
    .locals 3
    .param p0, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 866
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v1

    .line 867
    .local v1, "manager":Lcom/tudou/guide/SplashSubManager;
    new-instance v0, Lcom/tudou/ui/fragment/DiscoveryFragment$7;

    invoke-direct {v0, v1, p0}, Lcom/tudou/ui/fragment/DiscoveryFragment$7;-><init>(Lcom/tudou/guide/SplashSubManager;Landroid/app/Activity;)V

    .line 934
    .local v0, "callback":Lcom/tudou/guide/SplashSubManager$CallBack;
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tudou/guide/SplashSubManager;->getSubData(Lcom/tudou/guide/SplashSubManager$CallBack;)V

    .line 935
    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sExtend"    # Ljava/lang/String;

    .prologue
    .line 938
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 939
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "refercode"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    const-class v1, Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p0, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 942
    return-void
.end method

.method private static unionOnEventSlide(Lcom/youku/vo/SkipInfo;I)V
    .locals 5
    .param p0, "skipInfo"    # Lcom/youku/vo/SkipInfo;
    .param p1, "pos"    # I

    .prologue
    .line 302
    const/4 v1, 0x0

    .line 303
    .local v1, "refercode":Ljava/lang/String;
    const-string v3, "video"

    iget-object v4, p0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    const/4 v2, 0x0

    .line 305
    .local v2, "videoId":Ljava/lang/String;
    iget-object v3, p0, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    iget-object v2, p0, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    .line 310
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t1.find_sfind.posterVideo__.1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    .end local v2    # "videoId":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 316
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "title"

    iget-object v4, p0, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 319
    return-void

    .line 308
    .end local v0    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "videoId":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    goto :goto_0

    .line 312
    .end local v2    # "videoId":Ljava/lang/String;
    :cond_1
    const-string v1, "t1.find_sfind.posterVideo"

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v8, 0x7f0d02c3

    const/4 v9, 0x0

    .line 740
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mImgSaoYiSao:Landroid/widget/ImageView;

    if-ne p1, v5, :cond_1

    .line 743
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 744
    .local v4, "m1":Landroid/content/Intent;
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-class v6, Lcom/zijunlin/Zxing/CaptureActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 745
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v5, v4}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 747
    const-string v5, "t1.find_sfind.scan"

    invoke-static {v5, v9}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 862
    .end local v4    # "m1":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mTxtDiscoverySearch:Landroid/widget/TextView;

    if-ne p1, v5, :cond_3

    .line 752
    new-instance v2, Lcom/youku/vo/SkipInfo;

    invoke-direct {v2}, Lcom/youku/vo/SkipInfo;-><init>()V

    .line 753
    .local v2, "info":Lcom/youku/vo/SkipInfo;
    const-string v5, "the_search"

    iput-object v5, v2, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    .line 754
    sget-object v5, Lcom/youku/vo/DiscoveryGroupItem;->search_hot_word:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 755
    sget-object v5, Lcom/youku/vo/DiscoveryGroupItem;->search_hot_word:Ljava/lang/String;

    iput-object v5, v2, Lcom/youku/vo/SkipInfo;->search_word:Ljava/lang/String;

    .line 757
    :cond_2
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2, v5}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 759
    const-string v5, "t1.find_sfind.search"

    invoke-static {v5, v9}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 763
    .end local v2    # "info":Lcom/youku/vo/SkipInfo;
    :cond_3
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mLayoutNone:Lcom/youku/widget/HintView;

    if-ne p1, v5, :cond_4

    .line 764
    invoke-direct {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->initData()V

    goto :goto_0

    .line 766
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 767
    .local v1, "discoveryType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 771
    const-string v5, "page_headline"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 773
    const-string v5, "danmu"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 777
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 778
    .local v3, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-class v6, Lcom/tudou/ui/activity/DanmuPreview;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 779
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v5, v3}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 781
    const-string v5, "t1.find_sfind.bullet"

    invoke-static {v5, v9}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 782
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    const-string v5, "ranking_list"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 786
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 787
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-class v6, Lcom/tudou/ui/activity/RankingListActivity;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 788
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v5, v3}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 790
    const-string v5, "t1.find_sfind.toplist"

    invoke-static {v5, v9}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 791
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v5, "week_schedule"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 795
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-class v8, Lcom/tudou/ui/activity/RowPieceTableActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v5, v6}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 797
    const-string v5, "t1.find_sfind.Slicetable"

    invoke-static {v5, v9}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 798
    :cond_7
    const-string v5, "recommend_user_list"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 802
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 803
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-class v6, Lcom/tudou/ui/activity/ChannelSquareActivity;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 804
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v5, v3}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 806
    const-string v5, "t1.find_sfind.channelrecommend"

    invoke-static {v5, v9}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 807
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_8
    const-string v5, "cross_platform"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 809
    const-string v5, "\u53d1\u73b0\u9875\u8de8\u5c4f\u7a7f\u8d8a\u70b9\u51fb"

    const-string v6, "find|bump"

    invoke-static {v5, v6}, Lcom/tudou/ui/fragment/DiscoveryFragment;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 812
    .restart local v4    # "m1":Landroid/content/Intent;
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-class v6, Lcom/tudou/ui/activity/CrashActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 813
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v5, v4}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 814
    .end local v4    # "m1":Landroid/content/Intent;
    :cond_9
    const-string v5, "app_recommend"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 816
    const-string v5, "\u53d1\u73b0\u9875\u5e94\u7528\u63a8\u8350\u70b9\u51fb"

    const-string v6, "find|shop"

    invoke-static {v5, v6}, Lcom/tudou/ui/fragment/DiscoveryFragment;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/tudou/android/TudouApi;->goAppExchangeActivity(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 819
    :cond_a
    const-string v5, "game_center"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 822
    const-string v5, "t1.find.sfind.gamecenter"

    invoke-static {v5, v9}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 823
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/HomePageActivity;

    .line 825
    .local v0, "activity":Lcom/tudou/ui/activity/HomePageActivity;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 826
    .restart local v3    # "intent":Landroid/content/Intent;
    const-class v5, Lcom/youku/gamecenter/GameCenterHomeActivity;

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 827
    const-string v5, "source"

    const-string v6, "18"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 830
    .end local v0    # "activity":Lcom/tudou/ui/activity/HomePageActivity;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_b
    const-string v5, "laifeng"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 831
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v5

    if-nez v5, :cond_c

    .line 832
    invoke-static {v8}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 836
    :cond_c
    const-string v5, "t1.find.sfind.laifeng"

    invoke-static {v5, v9}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 838
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->LF_URL:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 839
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->LF_URL:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tudou/laifeng/lfJsObj;->goWebView(Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 841
    :cond_d
    const-string v5, "the_show"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 842
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 843
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-class v6, Lcom/tudou/ui/activity/TheShowRankActivity;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 844
    iget-object v5, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v5, v3}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 846
    const-string v5, "t1.find_sfind.theshow"

    invoke-static {v5, v9}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 847
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_e
    const-string v5, "subscription_guide"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 848
    const-string v5, "go_subscribeGuide"

    const-wide/16 v6, 0x1770

    invoke-static {v5, v6, v7}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 851
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v5

    if-nez v5, :cond_f

    .line 852
    invoke-static {v8}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 855
    :cond_f
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/tudou/ui/fragment/DiscoveryFragment;->showDouXiaowu(Landroid/app/Activity;)V

    .line 857
    const-string v5, "t1.find_sfind.subscriberecommend"

    invoke-static {v5, v9}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    const v0, 0x7f0300e8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->fragmentView:Landroid/view/View;

    .line 167
    invoke-direct {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->initView()V

    .line 168
    invoke-direct {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->initData()V

    .line 169
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 947
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 948
    return-void
.end method

.method public onPageSelected()V
    .locals 2

    .prologue
    .line 733
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPageSelected()V

    .line 734
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mMainScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 736
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 186
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Util;->endSession(Landroid/app/Activity;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mDiscoveryPosterAdapter:Lcom/tudou/adapter/DiscoveryPosterAdapter;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->poster:Lcom/youku/widget/YoukuGallery;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuGallery;->cancelAutoSlide()V

    .line 190
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 174
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 175
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->startSession(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mDiscoveryPosterAdapter:Lcom/tudou/adapter/DiscoveryPosterAdapter;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->poster:Lcom/youku/widget/YoukuGallery;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuGallery;->startAutoSlide()V

    .line 179
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment;->mDiscoveryPosterAdapter:Lcom/tudou/adapter/DiscoveryPosterAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/DiscoveryPosterAdapter;->notifyDataSetChanged()V

    .line 181
    :cond_0
    return-void
.end method
