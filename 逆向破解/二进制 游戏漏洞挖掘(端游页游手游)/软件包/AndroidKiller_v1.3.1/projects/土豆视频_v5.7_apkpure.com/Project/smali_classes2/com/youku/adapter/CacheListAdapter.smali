.class public Lcom/youku/adapter/CacheListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CacheListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/adapter/CacheListAdapter$OnSetEditListener;,
        Lcom/youku/adapter/CacheListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final TYPE_ED_ITEM:I

.field private final TYPE_ING_ITEM:I

.field private adapterTag:I

.field clickChangeStatus:Landroid/view/View$OnClickListener;

.field private context:Landroid/app/Activity;

.field private deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

.field private downingcount:I

.field private downloadedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private downloadedList_show:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private downloadingInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private editable:Z

.field private errcount:I

.field goLocalVideo:Landroid/view/View$OnClickListener;

.field private loader:Lcom/tudou/service/download/AsyncImageLoader;

.field private mInflater:Landroid/view/LayoutInflater;

.field public onSetEditListener:Lcom/youku/adapter/CacheListAdapter$OnSetEditListener;

.field private pausecount:I

.field private tag:Ljava/lang/String;

.field private waitcount:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    const-string v0, "CacheListAdapter"

    iput-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->tag:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/youku/util/DeleteAbleItemList;->getInstance()Lcom/youku/util/DeleteAbleItemList;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    .line 66
    iput-boolean v1, p0, Lcom/youku/adapter/CacheListAdapter;->editable:Z

    .line 69
    iput v1, p0, Lcom/youku/adapter/CacheListAdapter;->TYPE_ED_ITEM:I

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/adapter/CacheListAdapter;->TYPE_ING_ITEM:I

    .line 79
    iput v1, p0, Lcom/youku/adapter/CacheListAdapter;->adapterTag:I

    .line 262
    new-instance v0, Lcom/youku/adapter/CacheListAdapter$1;

    invoke-direct {v0, p0}, Lcom/youku/adapter/CacheListAdapter$1;-><init>(Lcom/youku/adapter/CacheListAdapter;)V

    iput-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->goLocalVideo:Landroid/view/View$OnClickListener;

    .line 548
    new-instance v0, Lcom/youku/adapter/CacheListAdapter$3;

    invoke-direct {v0, p0}, Lcom/youku/adapter/CacheListAdapter$3;-><init>(Lcom/youku/adapter/CacheListAdapter;)V

    iput-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->clickChangeStatus:Landroid/view/View$OnClickListener;

    .line 100
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 101
    iput-object p1, p0, Lcom/youku/adapter/CacheListAdapter;->context:Landroid/app/Activity;

    .line 102
    invoke-static {}, Lcom/tudou/service/download/AsyncImageLoader;->getInstance()Lcom/tudou/service/download/AsyncImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->loader:Lcom/tudou/service/download/AsyncImageLoader;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/youku/adapter/CacheListAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CacheListAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/adapter/CacheListAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CacheListAdapter;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/youku/adapter/CacheListAdapter;->editable:Z

    return v0
.end method

.method private getDownloadingInfo(Ljava/util/ArrayList;)Lcom/tudou/service/download/DownloadInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;)",
            "Lcom/tudou/service/download/DownloadInfo;"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "downloadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    const/4 v1, 0x0

    .line 347
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 348
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v2

    if-nez v2, :cond_2

    .line 350
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 354
    .restart local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_0
    if-nez v1, :cond_1

    .line 355
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 356
    .restart local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_1
    return-object v1

    .line 347
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getItemDonwloadInfo(ILcom/tudou/service/download/DownloadInfo;)Lcom/tudou/service/download/DownloadInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 325
    iget v0, p0, Lcom/youku/adapter/CacheListAdapter;->adapterTag:I

    packed-switch v0, :pswitch_data_0

    .line 341
    :cond_0
    :goto_0
    return-object p2

    .line 327
    :pswitch_0
    if-nez p1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->downloadingInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/youku/adapter/CacheListAdapter;->getDownloadingInfo(Ljava/util/ArrayList;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object p2

    goto :goto_0

    .line 331
    :pswitch_1
    if-ltz p1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "info":Lcom/tudou/service/download/DownloadInfo;
    check-cast p2, Lcom/tudou/service/download/DownloadInfo;

    .restart local p2    # "info":Lcom/tudou/service/download/DownloadInfo;
    goto :goto_0

    .line 335
    :pswitch_2
    if-nez p1, :cond_1

    .line 336
    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->downloadingInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/youku/adapter/CacheListAdapter;->getDownloadingInfo(Ljava/util/ArrayList;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object p2

    goto :goto_0

    .line 337
    :cond_1
    if-lez p1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->downloadedList_show:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "info":Lcom/tudou/service/download/DownloadInfo;
    check-cast p2, Lcom/tudou/service/download/DownloadInfo;

    .restart local p2    # "info":Lcom/tudou/service/download/DownloadInfo;
    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSeriesCount(Lcom/tudou/service/download/DownloadInfo;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tudou/service/download/DownloadInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 531
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v4, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 533
    .local v0, "count":I
    const/4 v3, 0x0

    .line 534
    .local v3, "j":I
    iget-object v6, p0, Lcom/youku/adapter/CacheListAdapter;->downloadedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 535
    .local v1, "i":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getShowid()Ljava/lang/String;

    move-result-object v5

    .line 536
    .local v5, "tempId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getShowid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 537
    add-int/lit8 v0, v0, 0x1

    .line 538
    iget v6, v1, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    if-nez v6, :cond_0

    .line 539
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 543
    .end local v1    # "i":Lcom/tudou/service/download/DownloadInfo;
    .end local v5    # "tempId":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    return-object v4
.end method

.method private initCacheViewHolder(Landroid/view/View;Lcom/youku/adapter/CacheListAdapter$ViewHolder;)Lcom/youku/adapter/CacheListAdapter$ViewHolder;
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "viewHolder"    # Lcom/youku/adapter/CacheListAdapter$ViewHolder;

    .prologue
    .line 360
    new-instance p2, Lcom/youku/adapter/CacheListAdapter$ViewHolder;

    .end local p2    # "viewHolder":Lcom/youku/adapter/CacheListAdapter$ViewHolder;
    invoke-direct {p2, p0}, Lcom/youku/adapter/CacheListAdapter$ViewHolder;-><init>(Lcom/youku/adapter/CacheListAdapter;)V

    .line 362
    .restart local p2    # "viewHolder":Lcom/youku/adapter/CacheListAdapter$ViewHolder;
    const v0, 0x7f0c06d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    .line 364
    const v0, 0x7f0c06d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 365
    const v0, 0x7f0c06d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 366
    iget-object v0, p2, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 367
    const v0, 0x7f0c06d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->statusImg:Landroid/widget/ImageView;

    .line 368
    const v0, 0x7f0c06d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->deIcon:Landroid/widget/TextView;

    .line 369
    const v0, 0x7f0c06e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cachingSubTitle:Landroid/widget/TextView;

    .line 371
    const v0, 0x7f0c06d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    .line 372
    const v0, 0x7f0c06e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheImageFile:Landroid/widget/ImageView;

    .line 374
    const v0, 0x7f0c06eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheOutDriver:Landroid/view/View;

    .line 375
    const v0, 0x7f0c06ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheDriver:Landroid/view/View;

    .line 376
    const v0, 0x7f0c06d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheNew:Landroid/widget/ImageView;

    .line 377
    const v0, 0x7f0c06e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheShaddow:Landroid/view/View;

    .line 378
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 379
    return-object p2
.end method

.method private setCacheHeaderView(Ljava/lang/String;ZLandroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "show"    # Z
    .param p3, "inflater"    # Landroid/view/LayoutInflater;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 279
    const v6, 0x7f030160

    invoke-virtual {p3, v6, p4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 281
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f0c06ca

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 283
    .local v4, "headerText":Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    const v6, 0x7f0c06cb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 285
    .local v3, "cachingCount":Landroid/widget/TextView;
    const v6, 0x7f0c06cc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 287
    .local v0, "cacheEditLayout":Landroid/widget/LinearLayout;
    new-instance v6, Lcom/youku/adapter/CacheListAdapter$2;

    invoke-direct {v6, p0}, Lcom/youku/adapter/CacheListAdapter$2;-><init>(Lcom/youku/adapter/CacheListAdapter;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    const v6, 0x7f0c06ce

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 299
    .local v2, "cachedEditText":Landroid/widget/TextView;
    const v6, 0x7f0c06cd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 301
    .local v1, "cachedEditImg":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/youku/adapter/CacheListAdapter;->isEditable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 302
    const-string v6, "\u53d6\u6d88"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const v6, -0x9a00

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    :goto_0
    if-eqz p2, :cond_2

    .line 311
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v6, p0, Lcom/youku/adapter/CacheListAdapter;->downloadingInfos:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 313
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<font color=\"#ff6600\">("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/adapter/CacheListAdapter;->downloadingInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")</font"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :cond_0
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    :goto_1
    return-object v5

    .line 306
    :cond_1
    const-string v6, "\u7f16\u8f91"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    const v6, -0x99999a

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setLocalView()Landroid/view/View;
    .locals 4

    .prologue
    .line 255
    iget-object v1, p0, Lcom/youku/adapter/CacheListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030070

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 256
    .local v0, "view1":Landroid/view/View;
    const v1, 0x7f0c025c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 257
    const v1, 0x7f0c025d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u89c2\u770b\u672c\u5730\u89c6\u9891"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v1, p0, Lcom/youku/adapter/CacheListAdapter;->goLocalVideo:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    return-object v0
.end method

.method private setView(Lcom/youku/adapter/CacheListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;II)V
    .locals 11
    .param p1, "viewHolder"    # Lcom/youku/adapter/CacheListAdapter$ViewHolder;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .param p3, "position"    # I
    .param p4, "viewType"    # I

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 384
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget v0, p0, Lcom/youku/adapter/CacheListAdapter;->adapterTag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 396
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheShaddow:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 412
    :cond_2
    :goto_1
    if-nez p4, :cond_11

    .line 413
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cachingSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheDriver:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheOutDriver:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 416
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->isSeries()Z

    move-result v0

    if-nez v0, :cond_d

    .line 417
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :goto_2
    iget-boolean v0, p0, Lcom/youku/adapter/CacheListAdapter;->editable:Z

    if-eqz v0, :cond_10

    .line 427
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->statusImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v0, p2}, Lcom/youku/util/DeleteAbleItemList;->containsItemSelect(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 430
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->statusImg:Landroid/widget/ImageView;

    const v1, 0x7f0207fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->statusImg:Landroid/widget/ImageView;

    const-string v1, "delete"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 457
    :cond_3
    :goto_3
    if-ne p4, v9, :cond_13

    .line 458
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 459
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 460
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->deIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->downloadingInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 462
    const-string v7, ""

    .line 463
    .local v7, "downloadingTxt":Ljava/lang/String;
    iget v0, p0, Lcom/youku/adapter/CacheListAdapter;->downingcount:I

    if-eqz v0, :cond_4

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/CacheListAdapter;->downingcount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e2a\u7f13\u5b58\u4e2d\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 466
    :cond_4
    iget v0, p0, Lcom/youku/adapter/CacheListAdapter;->pausecount:I

    if-eqz v0, :cond_5

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/CacheListAdapter;->pausecount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e2a\u6682\u505c\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 469
    :cond_5
    iget v0, p0, Lcom/youku/adapter/CacheListAdapter;->waitcount:I

    if-eqz v0, :cond_6

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/CacheListAdapter;->waitcount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e2a\u7b49\u5f85\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 472
    :cond_6
    iget v0, p0, Lcom/youku/adapter/CacheListAdapter;->errcount:I

    if-eqz v0, :cond_7

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/CacheListAdapter;->errcount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e2a\u5931\u8d25\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 475
    :cond_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 476
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 478
    :cond_8
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheImageFile:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 398
    .end local v7    # "downloadingTxt":Ljava/lang/String;
    :cond_9
    iget v0, p0, Lcom/youku/adapter/CacheListAdapter;->adapterTag:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 399
    if-ne p3, v9, :cond_a

    .line 400
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheShaddow:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 402
    :cond_a
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheShaddow:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 404
    :cond_b
    iget v0, p0, Lcom/youku/adapter/CacheListAdapter;->adapterTag:I

    if-ne v0, v9, :cond_2

    .line 405
    if-nez p3, :cond_c

    .line 406
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheShaddow:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 408
    :cond_c
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheShaddow:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 419
    :cond_d
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v0

    if-eq v0, v9, :cond_e

    .line 420
    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info.subtitle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 423
    :cond_e
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 434
    :cond_f
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->statusImg:Landroid/widget/ImageView;

    const v1, 0x7f0207ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 436
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->statusImg:Landroid/widget/ImageView;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 439
    :cond_10
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->statusImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 441
    :cond_11
    if-ne p4, v9, :cond_3

    .line 442
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5728\u7f13\u5b58 <font color=\"#ff6600\">("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/adapter/CacheListAdapter;->waitcount:I

    iget v3, p0, Lcom/youku/adapter/CacheListAdapter;->pausecount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/youku/adapter/CacheListAdapter;->downingcount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/youku/adapter/CacheListAdapter;->errcount:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")</font"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->isSeries()Z

    move-result v0

    if-nez v0, :cond_12

    .line 447
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cachingSubTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    :goto_4
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheDriver:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheOutDriver:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->statusImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheNew:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 449
    :cond_12
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cachingSubTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 482
    :cond_13
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->isSeries()Z

    move-result v0

    if-nez v0, :cond_17

    .line 483
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->deIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 484
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->deIcon:Landroid/widget/TextView;

    iget v1, p2, Lcom/tudou/service/download/DownloadInfo;->seconds:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Lcom/youku/util/Util;->formatTime(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/CacheListAdapter;->showDeIcon(Lcom/youku/adapter/CacheListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V

    .line 488
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheImageFile:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 489
    iget-boolean v0, p2, Lcom/tudou/service/download/DownloadInfo;->isplay:Z

    if-eqz v0, :cond_14

    .line 490
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheNew:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 491
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    const-string v1, "\u5df2\u770b\u5b8c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    :goto_5
    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->loader:Lcom/tudou/service/download/AsyncImageLoader;

    iget-object v1, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/tudou/service/download/DownloadInfo;->imgUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "1.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "cache"

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/service/download/AsyncImageLoader;->loadDrawable(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 521
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_19

    .line 522
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    const v1, 0x7f020371

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 493
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_14
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getPlayTime()I

    move-result v0

    if-nez v0, :cond_15

    .line 494
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheNew:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 496
    :cond_15
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getPlayTime()I

    move-result v0

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSeconds()I

    move-result v1

    add-int/lit8 v1, v1, -0x3c

    if-le v0, v1, :cond_16

    .line 497
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheNew:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    const-string v1, "\u5df2\u770b\u5b8c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 501
    :cond_16
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheNew:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u89c2\u770b "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getPlayTime()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/youku/util/Util;->formatTime(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSeconds()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/youku/util/Util;->formatTime(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 508
    :cond_17
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->deIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    invoke-direct {p0, p2}, Lcom/youku/adapter/CacheListAdapter;->getSeriesCount(Lcom/tudou/service/download/DownloadInfo;)Ljava/util/ArrayList;

    move-result-object v8

    .line 510
    .local v8, "seriesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_18

    .line 512
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheNew:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    :goto_6
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a\u89c6\u9891"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheImageFile:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 514
    :cond_18
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheNew:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 524
    .end local v8    # "seriesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_19
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private showDeIcon(Lcom/youku/adapter/CacheListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 1
    .param p1, "viewHolder"    # Lcom/youku/adapter/CacheListAdapter$ViewHolder;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 610
    sget-boolean v0, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-eqz v0, :cond_0

    .line 611
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/CacheListAdapter;->showHighEndIcon(Lcom/youku/adapter/CacheListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V

    .line 615
    :goto_0
    return-void

    .line 613
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/CacheListAdapter;->showLowEndIcon(Lcom/youku/adapter/CacheListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V

    goto :goto_0
.end method

.method private showHighEndIcon(Lcom/youku/adapter/CacheListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 8
    .param p1, "viewHolder"    # Lcom/youku/adapter/CacheListAdapter$ViewHolder;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 624
    const-string v0, "dazhu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormto()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormto()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    const-string v0, "tudou"

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormto()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 627
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v0

    if-ne v4, v0, :cond_1

    .line 628
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6807\u6e05 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v0

    if-ne v5, v0, :cond_2

    .line 631
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9ad8\u6e05 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 633
    :cond_2
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v0

    if-eq v6, v0, :cond_3

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v0

    if-ne v7, v0, :cond_0

    .line 635
    :cond_3
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d85\u6e05 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 638
    :cond_4
    const-string v0, "youku"

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormto()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v0

    if-eq v4, v0, :cond_5

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v0

    if-eq v5, v0, :cond_5

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v0

    if-ne v7, v0, :cond_6

    .line 641
    :cond_5
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6807\u6e05 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 643
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v1

    if-eq v0, v1, :cond_7

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v0

    if-ne v6, v0, :cond_8

    .line 644
    :cond_7
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9ad8\u6e05 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 646
    :cond_8
    const/4 v0, 0x7

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 647
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d85\u6e05 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private showLowEndIcon(Lcom/youku/adapter/CacheListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 4
    .param p1, "viewHolder"    # Lcom/youku/adapter/CacheListAdapter$ViewHolder;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 618
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormto()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p1, Lcom/youku/adapter/CacheListAdapter$ViewHolder;->cacheSize:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v2

    long-to-float v1, v2

    invoke-static {v1}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/youku/adapter/CacheListAdapter;->adapterTag:I

    packed-switch v0, :pswitch_data_0

    .line 128
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    .line 130
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 199
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    iget v2, p0, Lcom/youku/adapter/CacheListAdapter;->adapterTag:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 184
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 167
    goto :goto_0

    .line 170
    :pswitch_2
    if-eqz p1, :cond_0

    move v0, v1

    .line 173
    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 204
    const/4 v2, 0x0

    .line 206
    .local v2, "viewHolder":Lcom/youku/adapter/CacheListAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/youku/adapter/CacheListAdapter;->getItemViewType(I)I

    move-result v1

    .line 207
    .local v1, "type":I
    iget-object v3, p0, Lcom/youku/adapter/CacheListAdapter;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "viewType -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    if-nez p2, :cond_1

    .line 211
    packed-switch v1, :pswitch_data_0

    .line 248
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 249
    .local v0, "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-direct {p0, p1, v0}, Lcom/youku/adapter/CacheListAdapter;->getItemDonwloadInfo(ILcom/tudou/service/download/DownloadInfo;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v0

    .line 250
    invoke-direct {p0, v2, v0, p1, v1}, Lcom/youku/adapter/CacheListAdapter;->setView(Lcom/youku/adapter/CacheListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;II)V

    .line 251
    return-object p2

    .line 213
    .end local v0    # "info":Lcom/tudou/service/download/DownloadInfo;
    :pswitch_0
    iget-object v3, p0, Lcom/youku/adapter/CacheListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030161

    invoke-virtual {v3, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 215
    invoke-direct {p0, p2, v2}, Lcom/youku/adapter/CacheListAdapter;->initCacheViewHolder(Landroid/view/View;Lcom/youku/adapter/CacheListAdapter$ViewHolder;)Lcom/youku/adapter/CacheListAdapter$ViewHolder;

    move-result-object v2

    .line 216
    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v3, p0, Lcom/youku/adapter/CacheListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030164

    invoke-virtual {v3, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 220
    invoke-direct {p0, p2, v2}, Lcom/youku/adapter/CacheListAdapter;->initCacheViewHolder(Landroid/view/View;Lcom/youku/adapter/CacheListAdapter$ViewHolder;)Lcom/youku/adapter/CacheListAdapter$ViewHolder;

    move-result-object v2

    goto :goto_0

    .line 232
    :cond_1
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 235
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "viewHolder":Lcom/youku/adapter/CacheListAdapter$ViewHolder;
    check-cast v2, Lcom/youku/adapter/CacheListAdapter$ViewHolder;

    .line 236
    .restart local v2    # "viewHolder":Lcom/youku/adapter/CacheListAdapter$ViewHolder;
    if-nez v2, :cond_0

    .line 237
    invoke-direct {p0, p2, v2}, Lcom/youku/adapter/CacheListAdapter;->initCacheViewHolder(Landroid/view/View;Lcom/youku/adapter/CacheListAdapter$ViewHolder;)Lcom/youku/adapter/CacheListAdapter$ViewHolder;

    move-result-object v2

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 232
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x2

    return v0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/youku/adapter/CacheListAdapter;->editable:Z

    return v0
.end method

.method public setData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 1
    .param p4, "adapterTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "downloadedList_show":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .local p2, "downloadedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .local p3, "downloadingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->downloadedList_show:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->downloadedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->downloadedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->downloadingInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->downloadingInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->downloadedList_show:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->downloadedList:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/youku/adapter/CacheListAdapter;->downloadingInfos:Ljava/util/ArrayList;

    .line 120
    iput p4, p0, Lcom/youku/adapter/CacheListAdapter;->adapterTag:I

    .line 121
    return-void
.end method

.method public setDowningcount(I)V
    .locals 0
    .param p1, "downingcount"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/youku/adapter/CacheListAdapter;->downingcount:I

    .line 93
    return-void
.end method

.method public setEditable(Z)V
    .locals 0
    .param p1, "editable"    # Z

    .prologue
    .line 576
    iput-boolean p1, p0, Lcom/youku/adapter/CacheListAdapter;->editable:Z

    .line 577
    return-void
.end method

.method public setErrorcount(I)V
    .locals 0
    .param p1, "errcount"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/youku/adapter/CacheListAdapter;->errcount:I

    .line 97
    return-void
.end method

.method public setOnSetEditListener(Lcom/youku/adapter/CacheListAdapter$OnSetEditListener;)V
    .locals 0
    .param p1, "onSetEditListener"    # Lcom/youku/adapter/CacheListAdapter$OnSetEditListener;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/youku/adapter/CacheListAdapter;->onSetEditListener:Lcom/youku/adapter/CacheListAdapter$OnSetEditListener;

    .line 662
    return-void
.end method

.method public setPausecount(I)V
    .locals 0
    .param p1, "pausecount"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/youku/adapter/CacheListAdapter;->pausecount:I

    .line 89
    return-void
.end method

.method public setWaitcount(I)V
    .locals 0
    .param p1, "waitcount"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/youku/adapter/CacheListAdapter;->waitcount:I

    .line 85
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 565
    if-eqz p1, :cond_0

    .line 566
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 568
    :cond_0
    return-void
.end method
