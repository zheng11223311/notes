.class public Lcom/youku/adapter/AccountAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;,
        Lcom/youku/adapter/AccountAdapter$CacheItemHolder;,
        Lcom/youku/adapter/AccountAdapter$HistoryItemHolder;,
        Lcom/youku/adapter/AccountAdapter$TitleViewHolder;
    }
.end annotation


# static fields
.field public static final CLICK_KEY:Ljava/lang/String; = "account_click_key"

.field private static final Module_TYPE_CACHE:Ljava/lang/String; = "cache"

.field private static final Module_TYPE_HISTORY:Ljava/lang/String; = "history"

.field private static final Module_TYPE_Rec_Video_Tab:Ljava/lang/String; = "rec_video_tab"

.field private static final Module_TYPE_The_Html5:Ljava/lang/String; = "the_html5"

.field public static final TITLE_SIZE:I = 0x2

.field public static final TYPE_CACHE_ITEM:I = 0x3

.field public static final TYPE_CACHE_TITLE:I = 0x1

.field public static final TYPE_H5:I = 0x6

.field public static final TYPE_HIS_ITEM:I = 0x2

.field public static final TYPE_HIS_TITLE:I = 0x0

.field public static final TYPE_RECOMMEND_ITEM:I = 0x5

.field public static final TYPE_RECOMMEND_TITLE:I = 0x4


# instance fields
.field public final IMG_LOAD_TAG:Ljava/lang/String;

.field private isDoDownloadingAnimation:Z

.field private mAlbumMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAsyncImgLoader:Lcom/tudou/service/download/AsyncImageLoader;

.field private mCacheData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheItemSize:I

.field private mCacheSize:I

.field private mContext:Landroid/content/Context;

.field private mDownloadingCount:I

.field private mHisSize:I

.field private mIsNetValue:Z

.field private mItemTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayHistoryData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchOfData;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendVideoSize:I

.field private my_page_inf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/Initial$PageModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 78
    const-string v0, "account"

    iput-object v0, p0, Lcom/youku/adapter/AccountAdapter;->IMG_LOAD_TAG:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    .line 93
    sget-object v0, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->my_page_inf:Ljava/util/List;

    iput-object v0, p0, Lcom/youku/adapter/AccountAdapter;->my_page_inf:Ljava/util/List;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/youku/adapter/AccountAdapter;->my_page_inf:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/adapter/AccountAdapter;->my_page_inf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/adapter/AccountAdapter;->mIsNetValue:Z

    .line 100
    :goto_0
    invoke-static {}, Lcom/tudou/service/download/AsyncImageLoader;->getInstance()Lcom/tudou/service/download/AsyncImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/adapter/AccountAdapter;->mAsyncImgLoader:Lcom/tudou/service/download/AsyncImageLoader;

    .line 101
    return-void

    .line 98
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/adapter/AccountAdapter;->mIsNetValue:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/youku/adapter/AccountAdapter;Lcom/youku/vo/SearchOfVideo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/AccountAdapter;
    .param p1, "x1"    # Lcom/youku/vo/SearchOfVideo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/youku/adapter/AccountAdapter;->goDetail(Lcom/youku/vo/SearchOfVideo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/youku/adapter/AccountAdapter;Lcom/youku/vo/SearchOfPodcasts;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/AccountAdapter;
    .param p1, "x1"    # Lcom/youku/vo/SearchOfPodcasts;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/youku/adapter/AccountAdapter;->goUgc(Lcom/youku/vo/SearchOfPodcasts;)V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/adapter/AccountAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/AccountAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/adapter/AccountAdapter;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/AccountAdapter;
    .param p1, "x1"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/youku/adapter/AccountAdapter;->goPlayer(Lcom/tudou/service/download/DownloadInfo;)V

    return-void
.end method

.method private computeCacheItemSize()I
    .locals 3

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, "count":I
    iget-object v2, p0, Lcom/youku/adapter/AccountAdapter;->mCacheData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 220
    .local v0, "cacheSize":I
    iget v2, p0, Lcom/youku/adapter/AccountAdapter;->mDownloadingCount:I

    if-nez v2, :cond_1

    .line 221
    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    .line 222
    add-int/lit8 v1, v1, 0x3

    .line 233
    :goto_0
    return v1

    .line 224
    :cond_0
    invoke-direct {p0, v0}, Lcom/youku/adapter/AccountAdapter;->computeCacheItemSize(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 227
    :cond_1
    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    .line 228
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 230
    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/youku/adapter/AccountAdapter;->computeCacheItemSize(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method private computeCacheItemSize(I)I
    .locals 1
    .param p1, "cacheSize"    # I

    .prologue
    .line 237
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    div-int/lit8 v0, p1, 0x2

    :goto_0
    return v0

    :cond_0
    div-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private genItemTypeList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v3, "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput v7, p0, Lcom/youku/adapter/AccountAdapter;->mHisSize:I

    .line 136
    iget-object v4, p0, Lcom/youku/adapter/AccountAdapter;->mPlayHistoryData:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 137
    iget-object v4, p0, Lcom/youku/adapter/AccountAdapter;->mPlayHistoryData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/youku/adapter/AccountAdapter;->mHisSize:I

    .line 138
    iget v4, p0, Lcom/youku/adapter/AccountAdapter;->mHisSize:I

    if-le v4, v5, :cond_4

    move v4, v5

    :goto_0
    iput v4, p0, Lcom/youku/adapter/AccountAdapter;->mHisSize:I

    .line 141
    :cond_0
    iput v7, p0, Lcom/youku/adapter/AccountAdapter;->mCacheSize:I

    .line 142
    iput v7, p0, Lcom/youku/adapter/AccountAdapter;->mCacheItemSize:I

    .line 143
    iget-object v4, p0, Lcom/youku/adapter/AccountAdapter;->mCacheData:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 144
    iget-object v4, p0, Lcom/youku/adapter/AccountAdapter;->mCacheData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/youku/adapter/AccountAdapter;->mCacheSize:I

    .line 145
    iget v4, p0, Lcom/youku/adapter/AccountAdapter;->mCacheSize:I

    if-nez v4, :cond_1

    iget v4, p0, Lcom/youku/adapter/AccountAdapter;->mDownloadingCount:I

    if-eqz v4, :cond_2

    .line 146
    :cond_1
    invoke-direct {p0}, Lcom/youku/adapter/AccountAdapter;->computeCacheItemSize()I

    move-result v4

    iput v4, p0, Lcom/youku/adapter/AccountAdapter;->mCacheItemSize:I

    .line 150
    :cond_2
    iget-boolean v4, p0, Lcom/youku/adapter/AccountAdapter;->mIsNetValue:Z

    if-eqz v4, :cond_8

    .line 151
    iget-object v4, p0, Lcom/youku/adapter/AccountAdapter;->my_page_inf:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/Initial$PageModule;

    .line 152
    .local v2, "module":Lcom/youku/vo/Initial$PageModule;
    const-string v4, "history"

    iget-object v6, v2, Lcom/youku/vo/Initial$PageModule;->sub_type:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 153
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v4, p0, Lcom/youku/adapter/AccountAdapter;->mHisSize:I

    if-ge v0, v4, :cond_3

    .line 155
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 138
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "module":Lcom/youku/vo/Initial$PageModule;
    :cond_4
    iget v4, p0, Lcom/youku/adapter/AccountAdapter;->mHisSize:I

    goto :goto_0

    .line 157
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "module":Lcom/youku/vo/Initial$PageModule;
    :cond_5
    const-string v4, "cache"

    iget-object v6, v2, Lcom/youku/vo/Initial$PageModule;->sub_type:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 158
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-direct {p0}, Lcom/youku/adapter/AccountAdapter;->isShowRecommend()Z

    move-result v4

    if-nez v4, :cond_3

    .line 160
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget v4, p0, Lcom/youku/adapter/AccountAdapter;->mCacheItemSize:I

    if-ge v0, v4, :cond_3

    .line 161
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 164
    .end local v0    # "i":I
    :cond_6
    const-string v4, "rec_video_tab"

    iget-object v6, v2, Lcom/youku/vo/Initial$PageModule;->sub_type:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 165
    invoke-direct {p0}, Lcom/youku/adapter/AccountAdapter;->isShowRecommend()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget v4, p0, Lcom/youku/adapter/AccountAdapter;->mRecommendVideoSize:I

    if-ge v0, v4, :cond_3

    .line 168
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 171
    .end local v0    # "i":I
    :cond_7
    const-string v4, "the_html5"

    iget-object v6, v2, Lcom/youku/vo/Initial$PageModule;->sub_type:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 172
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 176
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "module":Lcom/youku/vo/Initial$PageModule;
    :cond_8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget v4, p0, Lcom/youku/adapter/AccountAdapter;->mHisSize:I

    if-ge v0, v4, :cond_9

    .line 178
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 181
    :cond_9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-direct {p0}, Lcom/youku/adapter/AccountAdapter;->isShowRecommend()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 183
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    const/4 v0, 0x0

    :goto_6
    iget v4, p0, Lcom/youku/adapter/AccountAdapter;->mRecommendVideoSize:I

    if-ge v0, v4, :cond_b

    .line 185
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 188
    :cond_a
    const/4 v0, 0x0

    :goto_7
    iget v4, p0, Lcom/youku/adapter/AccountAdapter;->mCacheItemSize:I

    if-ge v0, v4, :cond_b

    .line 189
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 193
    .end local v0    # "i":I
    :cond_b
    return-object v3
.end method

.method private getFistItemPositon(I)I
    .locals 5
    .param p1, "targetType"    # I

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/youku/adapter/AccountAdapter;->getCount()I

    move-result v2

    .line 937
    .local v2, "len":I
    const/4 v0, 0x0

    .line 938
    .local v0, "firstPos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 939
    iget-object v4, p0, Lcom/youku/adapter/AccountAdapter;->mItemTypeList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 940
    .local v3, "type":I
    if-ne v3, p1, :cond_1

    .line 941
    move v0, v1

    .line 945
    .end local v3    # "type":I
    :cond_0
    return v0

    .line 938
    .restart local v3    # "type":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getLastCacheItemPositon()I
    .locals 5

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/youku/adapter/AccountAdapter;->getCount()I

    move-result v2

    .line 919
    .local v2, "len":I
    const/4 v1, 0x0

    .line 920
    .local v1, "lastCachePos":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 921
    iget-object v4, p0, Lcom/youku/adapter/AccountAdapter;->mItemTypeList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 922
    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 923
    move v1, v0

    .line 927
    .end local v3    # "type":I
    :cond_0
    return v1

    .line 920
    .restart local v3    # "type":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private goDetail(Lcom/youku/vo/SearchOfVideo;)V
    .locals 5
    .param p1, "video"    # Lcom/youku/vo/SearchOfVideo;

    .prologue
    .line 399
    iget-object v2, p1, Lcom/youku/vo/SearchOfVideo;->skip_inf:Lcom/youku/vo/SearchOfVideo$Info;

    iget-object v1, v2, Lcom/youku/vo/SearchOfVideo$Info;->video_id:Ljava/lang/String;

    .line 400
    .local v1, "video_id":Ljava/lang/String;
    iget-object v2, p1, Lcom/youku/vo/SearchOfVideo;->skip_inf:Lcom/youku/vo/SearchOfVideo$Info;

    iget-object v0, v2, Lcom/youku/vo/SearchOfVideo$Info;->album_id:Ljava/lang/String;

    .line 401
    .local v0, "album_id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 402
    iget-object v2, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v4, p1, Lcom/youku/vo/SearchOfVideo;->title:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 404
    iget-object v2, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iget-object v4, p1, Lcom/youku/vo/SearchOfVideo;->title:Ljava/lang/String;

    invoke-static {v2, v0, v3, v4}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private goInner(Ljava/lang/String;)V
    .locals 5
    .param p1, "showId"    # Ljava/lang/String;

    .prologue
    .line 885
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 886
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "refercode"

    const-string v3, "myChannel|dlAlbum"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const-string v2, "\u7f13\u5b58\u9875\u5df2\u7f13\u5b58\u5267\u96c6\u6587\u4ef6\u5939\u70b9\u51fb"

    const-class v3, Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u7f13\u5b58\u9875-\u7f13\u5b58\u5267\u96c6\u6587\u4ef6\u5939"

    invoke-static {v2, v3, v4, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 889
    iget-object v2, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 890
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 891
    .local v1, "mIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tudou/ui/activity/CacheFolderActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 892
    const-string v2, "showId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    iget-object v2, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 900
    :goto_0
    return-void

    .line 895
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 896
    .restart local v1    # "mIntent":Landroid/content/Intent;
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-class v3, Lcom/tudou/ui/activity/CacheFolderActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 897
    const-string v2, "showId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    iget-object v2, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private goPlayer(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 854
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->isSeries()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getShowid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/youku/adapter/AccountAdapter;->goInner(Ljava/lang/String;)V

    .line 879
    :goto_0
    return-void

    .line 858
    :cond_0
    invoke-direct {p0, p1}, Lcom/youku/adapter/AccountAdapter;->hasFree(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 859
    const-string v2, "\u7cfb\u7edf\u7a7a\u95f4\u4e0d\u8db3\uff0c\u65e0\u6cd5\u64ad\u653e\u7f13\u5b58\u89c6\u9891\u3002"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 862
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 863
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "refercode"

    const-string v3, "myChannel|downloadedVideoClick"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    const-string v2, "\u7f13\u5b58\u9875\u5df2\u7f13\u5b58\u89c6\u9891\u70b9\u51fb"

    const-class v3, Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u7f13\u5b58\u9875-\u7f13\u5b58\u5b8c\u6210\u5217\u8868\u70b9\u51fb\u4e8b\u4ef6"

    invoke-static {v2, v3, v4, v1}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 866
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    .line 867
    .local v0, "download":Lcom/tudou/service/download/DownloadManager;
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 869
    const v2, 0x7f0d0126

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 872
    :cond_2
    iget v2, p1, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    mul-int/lit16 v2, v2, 0x3e8

    iget v3, p1, Lcom/tudou/service/download/DownloadInfo;->seconds:I

    mul-int/lit16 v3, v3, 0x3e8

    const v4, 0xea60

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_3

    .line 873
    iget-object v2, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Lcom/tudou/android/TudouApi;->goLocalPlayerWithPoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 876
    :cond_3
    iget-object v2, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    invoke-static {v2, v3, v4, v5}, Lcom/tudou/android/TudouApi;->goLocalPlayerWithPoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private goUgc(Lcom/youku/vo/SearchOfPodcasts;)V
    .locals 5
    .param p1, "podCast"    # Lcom/youku/vo/SearchOfPodcasts;

    .prologue
    .line 409
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tudou/ui/activity/NewPodcastActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 411
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "username"

    iget-object v3, p1, Lcom/youku/vo/SearchOfPodcasts;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v2, "userid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/vo/SearchOfPodcasts;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v2, "from"

    const-string v3, "attention"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 415
    iget-object v2, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 416
    return-void
.end method

.method private hasFree(Lcom/tudou/service/download/DownloadInfo;)Z
    .locals 8
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v2, 0x0

    .line 903
    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    const-string v4, "/tudou/offlinedata/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 904
    .local v1, "temp":[Ljava/lang/String;
    new-instance v0, Lcom/tudou/service/download/SDCardManager;

    aget-object v3, v1, v2

    invoke-direct {v0, v3}, Lcom/tudou/service/download/SDCardManager;-><init>(Ljava/lang/String;)V

    .line 905
    .local v0, "m":Lcom/tudou/service/download/SDCardManager;
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 909
    :cond_0
    :goto_0
    return v2

    .line 907
    :cond_1
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 909
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private initCacheItemHolder(Landroid/view/View;)Lcom/youku/adapter/AccountAdapter$CacheItemHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 713
    new-instance v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;

    invoke-direct {v0, p0}, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;-><init>(Lcom/youku/adapter/AccountAdapter;)V

    .line 714
    .local v0, "cih":Lcom/youku/adapter/AccountAdapter$CacheItemHolder;
    const v1, 0x7f0c0081

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->layout1:Landroid/view/View;

    .line 715
    const v1, 0x7f0c0082

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/YoukuImageView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->posterImg1:Lcom/youku/widget/YoukuImageView;

    .line 716
    const v1, 0x7f0c0086

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->albumImg1:Landroid/widget/ImageView;

    .line 717
    const v1, 0x7f0c0088

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->pointImg1:Landroid/widget/ImageView;

    .line 718
    const v1, 0x7f0c0087

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->albumCountTv1:Landroid/widget/TextView;

    .line 719
    const v1, 0x7f0c0089

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->titleTv1:Landroid/widget/TextView;

    .line 721
    const v1, 0x7f0c0083

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->downloadingLayout:Landroid/view/View;

    .line 722
    const v1, 0x7f0c0084

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->downloadingArrowImg:Landroid/widget/ImageView;

    .line 724
    const v1, 0x7f0c008a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->layout2:Landroid/view/View;

    .line 725
    const v1, 0x7f0c008b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/YoukuImageView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->posterImg2:Lcom/youku/widget/YoukuImageView;

    .line 726
    const v1, 0x7f0c008c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->albumImg2:Landroid/widget/ImageView;

    .line 727
    const v1, 0x7f0c008e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->pointImg2:Landroid/widget/ImageView;

    .line 728
    const v1, 0x7f0c008d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->albumCountTv2:Landroid/widget/TextView;

    .line 729
    const v1, 0x7f0c008f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->titleTv2:Landroid/widget/TextView;

    .line 730
    const v1, 0x7f0c0090

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->allCacheBtn:Landroid/widget/Button;

    .line 731
    return-object v0
.end method

.method private initHistoryItemHolder(Landroid/view/View;)Lcom/youku/adapter/AccountAdapter$HistoryItemHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 706
    new-instance v0, Lcom/youku/adapter/AccountAdapter$HistoryItemHolder;

    invoke-direct {v0, p0}, Lcom/youku/adapter/AccountAdapter$HistoryItemHolder;-><init>(Lcom/youku/adapter/AccountAdapter;)V

    .line 707
    .local v0, "hih":Lcom/youku/adapter/AccountAdapter$HistoryItemHolder;
    const v1, 0x7f0c00a4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$HistoryItemHolder;->titleTv:Landroid/widget/TextView;

    .line 708
    const v1, 0x7f0c00a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$HistoryItemHolder;->playPositionTv:Landroid/widget/TextView;

    .line 709
    return-object v0
.end method

.method private initRecommendItemHolder(Landroid/view/View;)Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 743
    new-instance v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;

    invoke-direct {v0, p0}, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;-><init>(Lcom/youku/adapter/AccountAdapter;)V

    .line 744
    .local v0, "rih":Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;
    const v1, 0x7f0c00b2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->videoLayout:Landroid/view/View;

    .line 745
    const v1, 0x7f0c00b3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->videoLayout1:Landroid/view/View;

    .line 746
    const v1, 0x7f0c00b4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/YoukuImageView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->posterImg1:Lcom/youku/widget/YoukuImageView;

    .line 747
    const v1, 0x7f0c00b5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->titleTv1:Landroid/widget/TextView;

    .line 748
    const v1, 0x7f0c00b6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->descTv1:Landroid/widget/TextView;

    .line 749
    const v1, 0x7f0c00b7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->videoLayout2:Landroid/view/View;

    .line 750
    const v1, 0x7f0c00b8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/YoukuImageView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->posterImg2:Lcom/youku/widget/YoukuImageView;

    .line 751
    const v1, 0x7f0c00b9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->titleTv2:Landroid/widget/TextView;

    .line 752
    const v1, 0x7f0c00ba

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->descTv2:Landroid/widget/TextView;

    .line 754
    const v1, 0x7f0c00bb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcLayout:Landroid/view/View;

    .line 755
    const v1, 0x7f0c00bc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcLayout1:Landroid/view/View;

    .line 756
    const v1, 0x7f0c00bd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcPoster1:Landroid/widget/ImageView;

    .line 757
    const v1, 0x7f0c00be

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcVImg1:Landroid/widget/ImageView;

    .line 758
    const v1, 0x7f0c00bf

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcTitle1:Landroid/widget/TextView;

    .line 759
    const v1, 0x7f0c00c0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcTag1:Landroid/widget/TextView;

    .line 761
    const v1, 0x7f0c00c1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcLayout2:Landroid/view/View;

    .line 762
    const v1, 0x7f0c00c2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcPoster2:Landroid/widget/ImageView;

    .line 763
    const v1, 0x7f0c00c3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcVImg2:Landroid/widget/ImageView;

    .line 764
    const v1, 0x7f0c00c4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcTitle2:Landroid/widget/TextView;

    .line 765
    const v1, 0x7f0c00c5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcTag2:Landroid/widget/TextView;

    .line 766
    return-object v0
.end method

.method private initTitleHolder(Landroid/view/View;)Lcom/youku/adapter/AccountAdapter$TitleViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 735
    new-instance v0, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;

    invoke-direct {v0, p0}, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;-><init>(Lcom/youku/adapter/AccountAdapter;)V

    .line 736
    .local v0, "htv":Lcom/youku/adapter/AccountAdapter$TitleViewHolder;
    const v1, 0x7f0c00a8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->titleTv:Landroid/widget/TextView;

    .line 737
    const v1, 0x7f0c00c6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->allTv:Landroid/widget/TextView;

    .line 738
    const v1, 0x7f0c00c7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->bottomDividerLine:Landroid/view/View;

    .line 739
    return-object v0
.end method

.method private initViewHolder(Landroid/view/View;I)Landroid/view/View;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    const v7, 0x7f030007

    const/4 v8, 0x0

    .line 667
    packed-switch p2, :pswitch_data_0

    .line 702
    :goto_0
    return-object p1

    .line 669
    :pswitch_0
    iget-object v6, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 670
    invoke-direct {p0, p1}, Lcom/youku/adapter/AccountAdapter;->initTitleHolder(Landroid/view/View;)Lcom/youku/adapter/AccountAdapter$TitleViewHolder;

    move-result-object v3

    .line 671
    .local v3, "htv":Lcom/youku/adapter/AccountAdapter$TitleViewHolder;
    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 674
    .end local v3    # "htv":Lcom/youku/adapter/AccountAdapter$TitleViewHolder;
    :pswitch_1
    iget-object v6, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030003

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 675
    invoke-direct {p0, p1}, Lcom/youku/adapter/AccountAdapter;->initHistoryItemHolder(Landroid/view/View;)Lcom/youku/adapter/AccountAdapter$HistoryItemHolder;

    move-result-object v2

    .line 676
    .local v2, "hih":Lcom/youku/adapter/AccountAdapter$HistoryItemHolder;
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 679
    .end local v2    # "hih":Lcom/youku/adapter/AccountAdapter$HistoryItemHolder;
    :pswitch_2
    iget-object v6, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 680
    invoke-direct {p0, p1}, Lcom/youku/adapter/AccountAdapter;->initTitleHolder(Landroid/view/View;)Lcom/youku/adapter/AccountAdapter$TitleViewHolder;

    move-result-object v1

    .line 681
    .local v1, "ctv":Lcom/youku/adapter/AccountAdapter$TitleViewHolder;
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 684
    .end local v1    # "ctv":Lcom/youku/adapter/AccountAdapter$TitleViewHolder;
    :pswitch_3
    iget-object v6, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/high16 v7, 0x7f030000

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 685
    invoke-direct {p0, p1}, Lcom/youku/adapter/AccountAdapter;->initCacheItemHolder(Landroid/view/View;)Lcom/youku/adapter/AccountAdapter$CacheItemHolder;

    move-result-object v0

    .line 686
    .local v0, "cih":Lcom/youku/adapter/AccountAdapter$CacheItemHolder;
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 689
    .end local v0    # "cih":Lcom/youku/adapter/AccountAdapter$CacheItemHolder;
    :pswitch_4
    iget-object v6, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 690
    invoke-direct {p0, p1}, Lcom/youku/adapter/AccountAdapter;->initTitleHolder(Landroid/view/View;)Lcom/youku/adapter/AccountAdapter$TitleViewHolder;

    move-result-object v5

    .line 691
    .local v5, "rtv":Lcom/youku/adapter/AccountAdapter$TitleViewHolder;
    invoke-virtual {p1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 694
    .end local v5    # "rtv":Lcom/youku/adapter/AccountAdapter$TitleViewHolder;
    :pswitch_5
    iget-object v6, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030006

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 695
    invoke-direct {p0, p1}, Lcom/youku/adapter/AccountAdapter;->initRecommendItemHolder(Landroid/view/View;)Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;

    move-result-object v4

    .line 696
    .local v4, "rih":Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;
    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 699
    .end local v4    # "rih":Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;
    :pswitch_6
    new-instance p1, Lcom/youku/widget/TudouModuleH5;

    .end local p1    # "view":Landroid/view/View;
    iget-object v6, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-direct {p1, v6, v7}, Lcom/youku/widget/TudouModuleH5;-><init>(Landroid/content/Context;Z)V

    .restart local p1    # "view":Landroid/view/View;
    goto :goto_0

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private isShowRecommend()Z
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/youku/adapter/AccountAdapter;->mDownloadingCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/youku/adapter/AccountAdapter;->mCacheSize:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/adapter/AccountAdapter;->mRecommendData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/adapter/AccountAdapter;->mRecommendVideoSize:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onHistoryClick()V
    .locals 4

    .prologue
    .line 834
    const-string v1, "account_click_key"

    const-wide/16 v2, 0x12c

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 844
    :goto_0
    return-void

    .line 837
    :cond_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 838
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 840
    :cond_1
    const-string v1, "\u6211\u7684\u7a7a\u95f4\u5386\u53f2\u6309\u94ae\u70b9\u51fb"

    const-string v2, "\u89c2\u770b\u8bb0\u5f55"

    const-string v3, "myChannel|history"

    invoke-virtual {p0, v1, v2, v3}, Lcom/youku/adapter/AccountAdapter;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 842
    .local v0, "goHistory":Landroid/content/Intent;
    iget-object v1, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 843
    iget-object v1, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private refreshCacheItem1(ILcom/youku/adapter/AccountAdapter$CacheItemHolder;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "holder"    # Lcom/youku/adapter/AccountAdapter$CacheItemHolder;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 568
    iget-object v3, p0, Lcom/youku/adapter/AccountAdapter;->mCacheData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 569
    .local v1, "downloadInfo":Lcom/tudou/service/download/DownloadInfo;
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->downloadingLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 570
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->downloadingLayout:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 571
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->titleTv1:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->posterImg1:Lcom/youku/widget/YoukuImageView;

    invoke-direct {p0, v3, v1}, Lcom/youku/adapter/AccountAdapter;->setCacheImg(Landroid/widget/ImageView;Lcom/tudou/service/download/DownloadInfo;)V

    .line 573
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->isSeries()Z

    move-result v3

    if-nez v3, :cond_1

    .line 574
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->albumImg1:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->albumCountTv1:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->albumCountTv1:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v3}, Lcom/youku/adapter/AccountAdapter;->refreshCachePlayTime(Lcom/tudou/service/download/DownloadInfo;Landroid/widget/TextView;)V

    .line 577
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getPlayTime()I

    move-result v3

    if-eqz v3, :cond_0

    .line 578
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->pointImg1:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 582
    :goto_0
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->layout1:Landroid/view/View;

    invoke-direct {p0, v3, v1}, Lcom/youku/adapter/AccountAdapter;->setCacheVideoOnClickListener(Landroid/view/View;Lcom/tudou/service/download/DownloadInfo;)V

    .line 600
    :goto_1
    return-void

    .line 580
    :cond_0
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->pointImg1:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 584
    :cond_1
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->titleTv1:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->albumImg1:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->albumCountTv1:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    iget-object v4, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->albumCountTv1:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/youku/adapter/AccountAdapter;->mAlbumMap:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\u4e2a\u89c6\u9891"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    .line 592
    .local v2, "manager":Lcom/tudou/service/download/DownloadManager;
    iget-object v3, v1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tudou/service/download/DownloadManager;->isAlbumOpened(Ljava/lang/String;)Z

    move-result v0

    .line 593
    .local v0, "albumOpened":Z
    if-eqz v0, :cond_2

    .line 594
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->pointImg1:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 598
    :goto_2
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->layout1:Landroid/view/View;

    iget-object v4, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->pointImg1:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/youku/adapter/AccountAdapter;->setAlbumOnClickListener(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    .line 596
    :cond_2
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->pointImg1:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private refreshCacheItem2(ILcom/youku/adapter/AccountAdapter$CacheItemHolder;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "holder"    # Lcom/youku/adapter/AccountAdapter$CacheItemHolder;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 511
    iget-object v3, p0, Lcom/youku/adapter/AccountAdapter;->mCacheData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 512
    .local v1, "downloadInfo":Lcom/tudou/service/download/DownloadInfo;
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->titleTv2:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->posterImg2:Lcom/youku/widget/YoukuImageView;

    invoke-direct {p0, v3, v1}, Lcom/youku/adapter/AccountAdapter;->setCacheImg(Landroid/widget/ImageView;Lcom/tudou/service/download/DownloadInfo;)V

    .line 514
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->isSeries()Z

    move-result v3

    if-nez v3, :cond_1

    .line 515
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->albumImg2:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->albumCountTv2:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->albumCountTv2:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v3}, Lcom/youku/adapter/AccountAdapter;->refreshCachePlayTime(Lcom/tudou/service/download/DownloadInfo;Landroid/widget/TextView;)V

    .line 518
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getPlayTime()I

    move-result v3

    if-eqz v3, :cond_0

    .line 519
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->pointImg2:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 523
    :goto_0
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->layout2:Landroid/view/View;

    invoke-direct {p0, v3, v1}, Lcom/youku/adapter/AccountAdapter;->setCacheVideoOnClickListener(Landroid/view/View;Lcom/tudou/service/download/DownloadInfo;)V

    .line 541
    :goto_1
    return-void

    .line 521
    :cond_0
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->pointImg2:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 525
    :cond_1
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->titleTv2:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->albumImg2:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 527
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->albumCountTv2:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    iget-object v4, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->albumCountTv2:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/youku/adapter/AccountAdapter;->mAlbumMap:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\u4e2a\u89c6\u9891"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    .line 533
    .local v2, "manager":Lcom/tudou/service/download/DownloadManager;
    iget-object v3, v1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tudou/service/download/DownloadManager;->isAlbumOpened(Ljava/lang/String;)Z

    move-result v0

    .line 534
    .local v0, "albumOpened":Z
    if-eqz v0, :cond_2

    .line 535
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->pointImg2:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 539
    :goto_2
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->layout2:Landroid/view/View;

    iget-object v4, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->pointImg2:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/youku/adapter/AccountAdapter;->setAlbumOnClickListener(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    .line 537
    :cond_2
    iget-object v3, p2, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->pointImg2:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private refreshCacheViews(Landroid/view/View;I)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x4

    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;

    .line 425
    .local v0, "holder":Lcom/youku/adapter/AccountAdapter$CacheItemHolder;
    iget v4, p0, Lcom/youku/adapter/AccountAdapter;->mDownloadingCount:I

    if-nez v4, :cond_3

    iget v4, p0, Lcom/youku/adapter/AccountAdapter;->mCacheSize:I

    const/4 v5, 0x5

    if-le v4, v5, :cond_2

    .line 427
    .local v2, "isShowAllBtn":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/youku/adapter/AccountAdapter;->getLastCacheItemPositon()I

    move-result v4

    if-ne p2, v4, :cond_4

    .line 428
    iget-object v4, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->allCacheBtn:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 429
    iget-object v4, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->allCacheBtn:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/youku/adapter/AccountAdapter;->setAllCacheOnClickListener(Landroid/view/View;)V

    .line 433
    :goto_1
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/youku/adapter/AccountAdapter;->getFistItemPositon(I)I

    move-result v4

    sub-int/2addr p2, v4

    .line 434
    iget v4, p0, Lcom/youku/adapter/AccountAdapter;->mDownloadingCount:I

    if-nez v4, :cond_5

    mul-int/lit8 v1, p2, 0x2

    .line 435
    .local v1, "index":I
    :goto_2
    if-nez p2, :cond_9

    .line 436
    iget v4, p0, Lcom/youku/adapter/AccountAdapter;->mDownloadingCount:I

    if-eqz v4, :cond_7

    .line 437
    iget-object v4, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->titleTv1:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/youku/adapter/AccountAdapter;->mDownloadingCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u4e2a\u89c6\u9891\u6b63\u5728\u7f13\u5b58"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v4, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->albumCountTv1:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    iget-object v4, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->posterImg1:Lcom/youku/widget/YoukuImageView;

    const v5, 0x7f02000b

    invoke-virtual {v4, v5}, Lcom/youku/widget/YoukuImageView;->setImageResource(I)V

    .line 440
    iget-object v4, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->albumImg1:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    iget-object v4, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->pointImg1:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    iget-object v4, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->layout1:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/youku/adapter/AccountAdapter;->setDownloadingItemOnClickListener(Landroid/view/View;)V

    .line 443
    iget-object v4, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->downloadingLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 444
    iget-boolean v4, p0, Lcom/youku/adapter/AccountAdapter;->isDoDownloadingAnimation:Z

    if-eqz v4, :cond_6

    .line 445
    iget-object v4, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->downloadingArrowImg:Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcom/youku/adapter/AccountAdapter;->showDownloadingAnimation(Landroid/widget/ImageView;)V

    .line 454
    :cond_1
    :goto_3
    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/youku/adapter/AccountAdapter;->mCacheData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 455
    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4, v0}, Lcom/youku/adapter/AccountAdapter;->refreshCacheItem2(ILcom/youku/adapter/AccountAdapter$CacheItemHolder;)V

    .line 456
    iget-object v4, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->layout2:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 469
    :goto_4
    return-void

    .end local v1    # "index":I
    .end local v2    # "isShowAllBtn":Z
    :cond_2
    move v2, v3

    .line 425
    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/youku/adapter/AccountAdapter;->mCacheSize:I

    if-gt v4, v8, :cond_0

    move v2, v3

    goto/16 :goto_0

    .line 431
    .restart local v2    # "isShowAllBtn":Z
    :cond_4
    iget-object v4, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->allCacheBtn:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 434
    :cond_5
    mul-int/lit8 v4, p2, 0x2

    add-int/lit8 v1, v4, -0x1

    goto :goto_2

    .line 447
    .restart local v1    # "index":I
    :cond_6
    iget-object v4, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->downloadingArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_3

    .line 450
    :cond_7
    iget-object v4, p0, Lcom/youku/adapter/AccountAdapter;->mCacheData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 451
    invoke-direct {p0, v1, v0}, Lcom/youku/adapter/AccountAdapter;->refreshCacheItem1(ILcom/youku/adapter/AccountAdapter$CacheItemHolder;)V

    goto :goto_3

    .line 458
    :cond_8
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->layout2:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 461
    :cond_9
    invoke-direct {p0, v1, v0}, Lcom/youku/adapter/AccountAdapter;->refreshCacheItem1(ILcom/youku/adapter/AccountAdapter$CacheItemHolder;)V

    .line 462
    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/youku/adapter/AccountAdapter;->mCacheData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 463
    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4, v0}, Lcom/youku/adapter/AccountAdapter;->refreshCacheItem2(ILcom/youku/adapter/AccountAdapter$CacheItemHolder;)V

    .line 464
    iget-object v4, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->layout2:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 466
    :cond_a
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$CacheItemHolder;->layout2:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private refreshRecommendViews(Landroid/view/View;I)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;

    .line 329
    .local v0, "holder":Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/youku/adapter/AccountAdapter;->getFistItemPositon(I)I

    move-result v3

    sub-int v1, p2, v3

    .line 330
    .local v1, "index":I
    iget-object v3, p0, Lcom/youku/adapter/AccountAdapter;->mRecommendData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchOfData;

    .line 331
    .local v2, "recommendData":Lcom/youku/vo/SearchOfData;
    iget v3, v2, Lcom/youku/vo/SearchOfData;->viewType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 332
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->titleTv1:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/youku/vo/SearchOfData;->video1:Lcom/youku/vo/SearchOfVideo;

    iget-object v4, v4, Lcom/youku/vo/SearchOfVideo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->descTv1:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/youku/vo/SearchOfData;->video1:Lcom/youku/vo/SearchOfVideo;

    iget-object v4, v4, Lcom/youku/vo/SearchOfVideo;->sub_title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v3, v2, Lcom/youku/vo/SearchOfData;->video1:Lcom/youku/vo/SearchOfVideo;

    iget-object v3, v3, Lcom/youku/vo/SearchOfVideo;->image_448_252:Ljava/lang/String;

    iget-object v4, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->posterImg1:Lcom/youku/widget/YoukuImageView;

    invoke-direct {p0, v3, v4}, Lcom/youku/adapter/AccountAdapter;->setImg(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 335
    iget-object v3, v2, Lcom/youku/vo/SearchOfData;->video2:Lcom/youku/vo/SearchOfVideo;

    if-eqz v3, :cond_1

    .line 336
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->titleTv2:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/youku/vo/SearchOfData;->video2:Lcom/youku/vo/SearchOfVideo;

    iget-object v4, v4, Lcom/youku/vo/SearchOfVideo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->descTv2:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/youku/vo/SearchOfData;->video2:Lcom/youku/vo/SearchOfVideo;

    iget-object v4, v4, Lcom/youku/vo/SearchOfVideo;->sub_title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v3, v2, Lcom/youku/vo/SearchOfData;->video2:Lcom/youku/vo/SearchOfVideo;

    iget-object v3, v3, Lcom/youku/vo/SearchOfVideo;->image_448_252:Ljava/lang/String;

    iget-object v4, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->posterImg2:Lcom/youku/widget/YoukuImageView;

    invoke-direct {p0, v3, v4}, Lcom/youku/adapter/AccountAdapter;->setImg(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 339
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->videoLayout2:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->videoLayout2:Landroid/view/View;

    new-instance v4, Lcom/youku/adapter/AccountAdapter$1;

    invoke-direct {v4, p0, v2}, Lcom/youku/adapter/AccountAdapter$1;-><init>(Lcom/youku/adapter/AccountAdapter;Lcom/youku/vo/SearchOfData;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    :goto_0
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcLayout:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 353
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->videoLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->videoLayout1:Landroid/view/View;

    new-instance v4, Lcom/youku/adapter/AccountAdapter$2;

    invoke-direct {v4, p0, v2}, Lcom/youku/adapter/AccountAdapter$2;-><init>(Lcom/youku/adapter/AccountAdapter;Lcom/youku/vo/SearchOfData;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    :cond_0
    :goto_1
    return-void

    .line 350
    :cond_1
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->videoLayout2:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 363
    :cond_2
    iget v3, v2, Lcom/youku/vo/SearchOfData;->viewType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 364
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcTitle1:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/youku/vo/SearchOfData;->podcast1:Lcom/youku/vo/SearchOfPodcasts;

    iget-object v4, v4, Lcom/youku/vo/SearchOfPodcasts;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcTag1:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/youku/vo/SearchOfData;->podcast1:Lcom/youku/vo/SearchOfPodcasts;

    iget-object v4, v4, Lcom/youku/vo/SearchOfPodcasts;->sub_title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v3, v2, Lcom/youku/vo/SearchOfData;->podcast1:Lcom/youku/vo/SearchOfPodcasts;

    iget-object v3, v3, Lcom/youku/vo/SearchOfPodcasts;->userpicurl:Ljava/lang/String;

    iget-object v4, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcPoster1:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4, v6}, Lcom/youku/adapter/AccountAdapter;->setImg(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 367
    iget-object v3, v2, Lcom/youku/vo/SearchOfData;->podcast2:Lcom/youku/vo/SearchOfPodcasts;

    if-eqz v3, :cond_3

    .line 368
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcTitle2:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/youku/vo/SearchOfData;->podcast2:Lcom/youku/vo/SearchOfPodcasts;

    iget-object v4, v4, Lcom/youku/vo/SearchOfPodcasts;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcTag2:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/youku/vo/SearchOfData;->podcast2:Lcom/youku/vo/SearchOfPodcasts;

    iget-object v4, v4, Lcom/youku/vo/SearchOfPodcasts;->sub_title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v3, v2, Lcom/youku/vo/SearchOfData;->podcast2:Lcom/youku/vo/SearchOfPodcasts;

    iget-object v3, v3, Lcom/youku/vo/SearchOfPodcasts;->userpicurl:Ljava/lang/String;

    iget-object v4, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcPoster2:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4, v6}, Lcom/youku/adapter/AccountAdapter;->setImg(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 371
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcLayout2:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcLayout2:Landroid/view/View;

    new-instance v4, Lcom/youku/adapter/AccountAdapter$3;

    invoke-direct {v4, p0, v2}, Lcom/youku/adapter/AccountAdapter$3;-><init>(Lcom/youku/adapter/AccountAdapter;Lcom/youku/vo/SearchOfData;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    :goto_2
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->videoLayout:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcLayout1:Landroid/view/View;

    new-instance v4, Lcom/youku/adapter/AccountAdapter$4;

    invoke-direct {v4, p0, v2}, Lcom/youku/adapter/AccountAdapter$4;-><init>(Lcom/youku/adapter/AccountAdapter;Lcom/youku/vo/SearchOfData;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 382
    :cond_3
    iget-object v3, v0, Lcom/youku/adapter/AccountAdapter$RecommendItemHolder;->ugcLayout2:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private setAlbumOnClickListener(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "point"    # Landroid/view/View;
    .param p3, "showId"    # Ljava/lang/String;

    .prologue
    .line 609
    new-instance v0, Lcom/youku/adapter/AccountAdapter$8;

    invoke-direct {v0, p0, p3, p2}, Lcom/youku/adapter/AccountAdapter$8;-><init>(Lcom/youku/adapter/AccountAdapter;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    return-void
.end method

.method private setAllCacheOnClickListener(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 484
    new-instance v0, Lcom/youku/adapter/AccountAdapter$5;

    invoke-direct {v0, p0}, Lcom/youku/adapter/AccountAdapter$5;-><init>(Lcom/youku/adapter/AccountAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    return-void
.end method

.method private setCacheImg(Landroid/widget/ImageView;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 4
    .param p1, "img"    # Landroid/widget/ImageView;
    .param p2, "downloadInfo"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 603
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 604
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 605
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 606
    return-void
.end method

.method private setCacheVideoOnClickListener(Landroid/view/View;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "downloadInfo"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 556
    new-instance v0, Lcom/youku/adapter/AccountAdapter$7;

    invoke-direct {v0, p0, p2}, Lcom/youku/adapter/AccountAdapter$7;-><init>(Lcom/youku/adapter/AccountAdapter;Lcom/tudou/service/download/DownloadInfo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    return-void
.end method

.method private setData(Landroid/view/View;II)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I
    .param p3, "position"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 271
    if-nez p2, :cond_2

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;

    .line 273
    .local v2, "holder":Lcom/youku/adapter/AccountAdapter$TitleViewHolder;
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->titleTv:Landroid/widget/TextView;

    const-string v5, "\u5386\u53f2"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 275
    .local v3, "tp":Landroid/text/TextPaint;
    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 276
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->allTv:Landroid/widget/TextView;

    const-string v5, "\u5168\u90e8"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->allTv:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget v4, p0, Lcom/youku/adapter/AccountAdapter;->mHisSize:I

    if-nez v4, :cond_1

    .line 279
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->bottomDividerLine:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 325
    .end local v2    # "holder":Lcom/youku/adapter/AccountAdapter$TitleViewHolder;
    .end local v3    # "tp":Landroid/text/TextPaint;
    :cond_0
    :goto_0
    return-void

    .line 281
    .restart local v2    # "holder":Lcom/youku/adapter/AccountAdapter$TitleViewHolder;
    .restart local v3    # "tp":Landroid/text/TextPaint;
    :cond_1
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->bottomDividerLine:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 283
    .end local v2    # "holder":Lcom/youku/adapter/AccountAdapter$TitleViewHolder;
    .end local v3    # "tp":Landroid/text/TextPaint;
    :cond_2
    if-ne p2, v7, :cond_4

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;

    .line 285
    .restart local v2    # "holder":Lcom/youku/adapter/AccountAdapter$TitleViewHolder;
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->titleTv:Landroid/widget/TextView;

    const-string v5, "\u7f13\u5b58"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->allTv:Landroid/widget/TextView;

    const-string v5, "\u5168\u90e8"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 288
    .restart local v3    # "tp":Landroid/text/TextPaint;
    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 289
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->allTv:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget v4, p0, Lcom/youku/adapter/AccountAdapter;->mDownloadingCount:I

    if-nez v4, :cond_3

    iget v4, p0, Lcom/youku/adapter/AccountAdapter;->mCacheSize:I

    if-nez v4, :cond_3

    .line 291
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->bottomDividerLine:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 293
    :cond_3
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->bottomDividerLine:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 295
    .end local v2    # "holder":Lcom/youku/adapter/AccountAdapter$TitleViewHolder;
    .end local v3    # "tp":Landroid/text/TextPaint;
    :cond_4
    if-ne p2, v4, :cond_6

    .line 296
    invoke-direct {p0, v4}, Lcom/youku/adapter/AccountAdapter;->getFistItemPositon(I)I

    move-result v4

    sub-int/2addr p3, v4

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/adapter/AccountAdapter$HistoryItemHolder;

    .line 298
    .local v2, "holder":Lcom/youku/adapter/AccountAdapter$HistoryItemHolder;
    iget-object v4, p0, Lcom/youku/adapter/AccountAdapter;->mPlayHistoryData:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/HistoryVideo;

    .line 299
    .local v1, "historyVideo":Lcom/youku/vo/HistoryVideo;
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$HistoryItemHolder;->titleTv:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/youku/vo/HistoryVideo;->title_new:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {v1}, Lcom/youku/vo/HistoryVideo;->getIsPlaytEnd()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 301
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$HistoryItemHolder;->playPositionTv:Landroid/widget/TextView;

    const-string v5, "\u5df2\u64ad\u653e\u5b8c"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 303
    :cond_5
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$HistoryItemHolder;->playPositionTv:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u89c2\u770b\u81f3 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/youku/vo/HistoryVideo;->lvt:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Lcom/youku/util/Util;->formatTime(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 305
    .end local v1    # "historyVideo":Lcom/youku/vo/HistoryVideo;
    .end local v2    # "holder":Lcom/youku/adapter/AccountAdapter$HistoryItemHolder;
    :cond_6
    if-ne p2, v5, :cond_7

    .line 306
    invoke-direct {p0, p1, p3}, Lcom/youku/adapter/AccountAdapter;->refreshCacheViews(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 307
    :cond_7
    const/4 v4, 0x4

    if-ne p2, v4, :cond_9

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;

    .line 309
    .local v2, "holder":Lcom/youku/adapter/AccountAdapter$TitleViewHolder;
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->titleTv:Landroid/widget/TextView;

    const-string v5, "\u5927\u5bb6\u90fd\u5728\u770b"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->allTv:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 312
    .restart local v3    # "tp":Landroid/text/TextPaint;
    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 313
    iget-object v4, p0, Lcom/youku/adapter/AccountAdapter;->mRecommendData:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/youku/adapter/AccountAdapter;->mRecommendData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_8

    .line 314
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->bottomDividerLine:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 316
    :cond_8
    iget-object v4, v2, Lcom/youku/adapter/AccountAdapter$TitleViewHolder;->bottomDividerLine:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 318
    .end local v2    # "holder":Lcom/youku/adapter/AccountAdapter$TitleViewHolder;
    .end local v3    # "tp":Landroid/text/TextPaint;
    :cond_9
    const/4 v4, 0x5

    if-ne p2, v4, :cond_a

    .line 319
    invoke-direct {p0, p1, p3}, Lcom/youku/adapter/AccountAdapter;->refreshRecommendViews(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 320
    :cond_a
    const/4 v4, 0x6

    if-ne p2, v4, :cond_0

    move-object v0, p1

    .line 321
    check-cast v0, Lcom/youku/widget/TudouModuleH5;

    .line 322
    .local v0, "aView":Lcom/youku/widget/TudouModuleH5;
    sget-object v4, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    if-eqz v4, :cond_0

    .line 323
    sget-object v4, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v4, v4, Lcom/youku/vo/Initial;->my_page_inf:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/Initial$PageModule;

    iget-object v4, v4, Lcom/youku/vo/Initial$PageModule;->skip_inf:Lcom/youku/vo/SkipInfo;

    invoke-virtual {v0, v4}, Lcom/youku/widget/TudouModuleH5;->setData(Lcom/youku/vo/SkipInfo;)V

    goto/16 :goto_0
.end method

.method private setDownloadingItemOnClickListener(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 497
    new-instance v0, Lcom/youku/adapter/AccountAdapter$6;

    invoke-direct {v0, p0}, Lcom/youku/adapter/AccountAdapter$6;-><init>(Lcom/youku/adapter/AccountAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    return-void
.end method

.method private setImg(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "img"    # Landroid/widget/ImageView;

    .prologue
    .line 627
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/adapter/AccountAdapter;->setImg(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 628
    return-void
.end method

.method private setImg(Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "img"    # Landroid/widget/ImageView;
    .param p3, "isRound"    # Z

    .prologue
    .line 631
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 632
    iget-object v0, p0, Lcom/youku/adapter/AccountAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/tudou/ui/activity/BaseActivity;

    .line 633
    .local v0, "activity":Lcom/tudou/ui/activity/BaseActivity;
    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    .line 634
    .local v1, "imageLoader":Lcom/nostra13/universalimageloader/core/ImageLoader;
    new-instance v2, Lcom/youku/adapter/AccountAdapter$9;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/youku/adapter/AccountAdapter$9;-><init>(Lcom/youku/adapter/AccountAdapter;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    invoke-virtual {v1, p1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 664
    return-void
.end method

.method private showDownloadingAnimation(Landroid/widget/ImageView;)V
    .locals 9
    .param p1, "downloadingArrowImg"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 473
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v6, -0x4059999a    # -1.3f

    const v8, 0x3fa66666    # 1.3f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 476
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 477
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 478
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 479
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 480
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 481
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/youku/adapter/AccountAdapter;->genItemTypeList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/adapter/AccountAdapter;->mItemTypeList:Ljava/util/List;

    .line 199
    iget-object v0, p0, Lcom/youku/adapter/AccountAdapter;->mItemTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/youku/adapter/AccountAdapter;->getItemViewType(I)I

    move-result v1

    .line 248
    .local v1, "type":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 249
    add-int/lit8 v0, p1, -0x1

    .line 250
    .local v0, "index":I
    iget-object v2, p0, Lcom/youku/adapter/AccountAdapter;->mPlayHistoryData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 252
    .end local v0    # "index":I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 257
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/youku/adapter/AccountAdapter;->mItemTypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/youku/adapter/AccountAdapter;->getItemViewType(I)I

    move-result v0

    .line 263
    .local v0, "type":I
    if-nez p2, :cond_0

    .line 264
    invoke-direct {p0, p2, v0}, Lcom/youku/adapter/AccountAdapter;->initViewHolder(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    .line 266
    :cond_0
    invoke-direct {p0, p2, v0, p1}, Lcom/youku/adapter/AccountAdapter;->setData(Landroid/view/View;II)V

    .line 267
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x7

    return v0
.end method

.method public refreshCachePlayTime(Lcom/tudou/service/download/DownloadInfo;Landroid/widget/TextView;)V
    .locals 4
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .param p2, "view"    # Landroid/widget/TextView;

    .prologue
    .line 544
    iget-boolean v0, p1, Lcom/tudou/service/download/DownloadInfo;->isplay:Z

    if-eqz v0, :cond_1

    .line 545
    const-string v0, "\u5df2\u770b\u5b8c"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getPlayTime()I

    move-result v0

    if-nez v0, :cond_2

    .line 547
    iget v0, p1, Lcom/tudou/service/download/DownloadInfo;->seconds:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Lcom/youku/util/Util;->formatTime(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 548
    :cond_2
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getPlayTime()I

    move-result v0

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getSeconds()I

    move-result v1

    add-int/lit8 v1, v1, -0x3c

    if-le v0, v1, :cond_3

    .line 549
    const-string v0, "\u5df2\u770b\u5b8c"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 550
    :cond_3
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getPlayTime()I

    move-result v0

    if-lez v0, :cond_0

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89c2\u770b\u81f3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getPlayTime()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v2, v3}, Lcom/youku/util/Util;->formatTime(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setAlbumMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "albumMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;>;"
    iput-object p1, p0, Lcom/youku/adapter/AccountAdapter;->mAlbumMap:Ljava/util/HashMap;

    .line 124
    return-void
.end method

.method public setCacheData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "downloadedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    iput-object p1, p0, Lcom/youku/adapter/AccountAdapter;->mCacheData:Ljava/util/ArrayList;

    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/service/download/DownloadInfo;->compareBySeq:Z

    .line 110
    iget-object v0, p0, Lcom/youku/adapter/AccountAdapter;->mCacheData:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 111
    return-void
.end method

.method public setDownloadingAnimationToggle(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 770
    iput-boolean p1, p0, Lcom/youku/adapter/AccountAdapter;->isDoDownloadingAnimation:Z

    .line 771
    return-void
.end method

.method public setDownloadingCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/youku/adapter/AccountAdapter;->mDownloadingCount:I

    .line 115
    return-void
.end method

.method public setPlayHistoryData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideo;>;"
    iput-object p1, p0, Lcom/youku/adapter/AccountAdapter;->mPlayHistoryData:Ljava/util/ArrayList;

    .line 105
    return-void
.end method

.method public setRecommendData(Ljava/util/ArrayList;I)V
    .locals 0
    .param p2, "videoCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchOfData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "recommendData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchOfData;>;"
    iput-object p1, p0, Lcom/youku/adapter/AccountAdapter;->mRecommendData:Ljava/util/ArrayList;

    .line 119
    iput p2, p0, Lcom/youku/adapter/AccountAdapter;->mRecommendVideoSize:I

    .line 120
    return-void
.end method

.method public trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "extendValue"    # Ljava/lang/String;

    .prologue
    .line 847
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 848
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "refercode"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    const-class v1, Lcom/youku/adapter/AccountAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 851
    return-void
.end method
