.class public Lcom/tudou/adapter/HotHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "HotHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/HotHistoryAdapter$OnClearListener;,
        Lcom/tudou/adapter/HotHistoryAdapter$OnHistoryClickListener;,
        Lcom/tudou/adapter/HotHistoryAdapter$OnPodCastClickListener;,
        Lcom/tudou/adapter/HotHistoryAdapter$OnVideoClickListener;,
        Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;,
        Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;,
        Lcom/tudou/adapter/HotHistoryAdapter$VideoHolder;
    }
.end annotation


# instance fields
.field private final BNOT_EMPTY:I

.field private final BOTH_EMPTY:I

.field private final HIST_EMPTY:I

.field private final HOTT_EMPTY:I

.field private final TYPE_HEAD_HIS:I

.field private final TYPE_HEAD_HOT:I

.field private final TYPE_HIS:I

.field private final TYPE_HOT_CHANNEL:I

.field private final TYPE_HOT_VIDEO:I

.field private context:Landroid/content/Context;

.field private histories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchOfHistory;",
            ">;"
        }
    .end annotation
.end field

.field private onClearListener:Lcom/tudou/adapter/HotHistoryAdapter$OnClearListener;

.field private onHistoryClickListener:Lcom/tudou/adapter/HotHistoryAdapter$OnHistoryClickListener;

.field private onPodCastClickListener:Lcom/tudou/adapter/HotHistoryAdapter$OnPodCastClickListener;

.field private onVideoClickListener:Lcom/tudou/adapter/HotHistoryAdapter$OnVideoClickListener;

.field private sManager:Lcom/tudou/ui/fragment/SearchManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/adapter/HotHistoryAdapter;->TYPE_HIS:I

    .line 33
    iput v1, p0, Lcom/tudou/adapter/HotHistoryAdapter;->TYPE_HEAD_HIS:I

    .line 34
    iput v4, p0, Lcom/tudou/adapter/HotHistoryAdapter;->TYPE_HEAD_HOT:I

    .line 35
    iput v2, p0, Lcom/tudou/adapter/HotHistoryAdapter;->TYPE_HOT_VIDEO:I

    .line 36
    iput v3, p0, Lcom/tudou/adapter/HotHistoryAdapter;->TYPE_HOT_CHANNEL:I

    .line 473
    iput v1, p0, Lcom/tudou/adapter/HotHistoryAdapter;->BOTH_EMPTY:I

    .line 477
    iput v2, p0, Lcom/tudou/adapter/HotHistoryAdapter;->HIST_EMPTY:I

    .line 481
    iput v3, p0, Lcom/tudou/adapter/HotHistoryAdapter;->HOTT_EMPTY:I

    .line 485
    iput v4, p0, Lcom/tudou/adapter/HotHistoryAdapter;->BNOT_EMPTY:I

    .line 44
    iput-object p1, p0, Lcom/tudou/adapter/HotHistoryAdapter;->context:Landroid/content/Context;

    .line 45
    check-cast p1, Lcom/tudou/ui/fragment/SearchTudouActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p1}, Lcom/tudou/ui/fragment/SearchManager;->getInstance(Landroid/app/Activity;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/HotHistoryAdapter;)Lcom/tudou/adapter/HotHistoryAdapter$OnClearListener;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/HotHistoryAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter;->onClearListener:Lcom/tudou/adapter/HotHistoryAdapter$OnClearListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/adapter/HotHistoryAdapter;)Lcom/tudou/adapter/HotHistoryAdapter$OnHistoryClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/HotHistoryAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter;->onHistoryClickListener:Lcom/tudou/adapter/HotHistoryAdapter$OnHistoryClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/adapter/HotHistoryAdapter;)Lcom/tudou/adapter/HotHistoryAdapter$OnVideoClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/HotHistoryAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter;->onVideoClickListener:Lcom/tudou/adapter/HotHistoryAdapter$OnVideoClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/adapter/HotHistoryAdapter;)Lcom/tudou/adapter/HotHistoryAdapter$OnPodCastClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/HotHistoryAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter;->onPodCastClickListener:Lcom/tudou/adapter/HotHistoryAdapter$OnPodCastClickListener;

    return-object v0
.end method

.method private getTypeByHistoryHot()I
    .locals 1

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/tudou/adapter/HotHistoryAdapter;->historyIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tudou/adapter/HotHistoryAdapter;->hotIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    const/4 v0, 0x1

    .line 466
    :goto_0
    return v0

    .line 461
    :cond_0
    invoke-direct {p0}, Lcom/tudou/adapter/HotHistoryAdapter;->historyIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tudou/adapter/HotHistoryAdapter;->hotIsEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    const/4 v0, 0x2

    goto :goto_0

    .line 463
    :cond_1
    invoke-direct {p0}, Lcom/tudou/adapter/HotHistoryAdapter;->historyIsEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/tudou/adapter/HotHistoryAdapter;->hotIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    const/4 v0, 0x3

    goto :goto_0

    .line 466
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private historyIsEmpty()Z
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/tudou/adapter/HotHistoryAdapter;->getHistories()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tudou/adapter/HotHistoryAdapter;->getHistories()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 447
    :cond_0
    const/4 v0, 0x1

    .line 448
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hotIsEmpty()Z
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 453
    :cond_0
    const/4 v0, 0x1

    .line 454
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPodImg(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    new-instance v2, Lcom/tudou/adapter/HotHistoryAdapter$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/tudou/adapter/HotHistoryAdapter$6;-><init>(Lcom/tudou/adapter/HotHistoryAdapter;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 378
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "count":I
    iget-object v1, p0, Lcom/tudou/adapter/HotHistoryAdapter;->histories:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/adapter/HotHistoryAdapter;->histories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    add-int/lit8 v0, v0, 0x2

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/tudou/adapter/HotHistoryAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/adapter/HotHistoryAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/tudou/adapter/HotHistoryAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v2, v2, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v0, v1, v2

    .line 94
    :cond_1
    return v0
.end method

.method public getHistories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchOfHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter;->histories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 104
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/tudou/adapter/HotHistoryAdapter;->getTypeByHistoryHot()I

    move-result v0

    .line 56
    .local v0, "type":I
    const/4 v1, -0x1

    .line 57
    .local v1, "viewType":I
    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return v1

    .line 59
    :pswitch_0
    if-nez p1, :cond_0

    .line 60
    const/4 v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 62
    const/4 v1, 0x0

    goto :goto_0

    .line 63
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 64
    const/4 v1, 0x4

    goto :goto_0

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/tudou/adapter/HotHistoryAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v2, v2, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchOfData;

    iget v1, v2, Lcom/youku/vo/SearchOfData;->viewType:I

    .line 68
    goto :goto_0

    .line 70
    :pswitch_1
    if-nez p1, :cond_3

    .line 71
    const/4 v1, 0x4

    goto :goto_0

    .line 73
    :cond_3
    iget-object v2, p0, Lcom/tudou/adapter/HotHistoryAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v2, v2, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchOfData;

    iget v1, v2, Lcom/youku/vo/SearchOfData;->viewType:I

    .line 75
    goto :goto_0

    .line 77
    :pswitch_2
    if-nez p1, :cond_4

    .line 78
    const/4 v1, 0x1

    goto :goto_0

    .line 80
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getOnClearListener()Lcom/tudou/adapter/HotHistoryAdapter$OnClearListener;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter;->onClearListener:Lcom/tudou/adapter/HotHistoryAdapter$OnClearListener;

    return-object v0
.end method

.method public getOnHistoryClickListener()Lcom/tudou/adapter/HotHistoryAdapter$OnHistoryClickListener;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter;->onHistoryClickListener:Lcom/tudou/adapter/HotHistoryAdapter$OnHistoryClickListener;

    return-object v0
.end method

.method public getOnPodCastClickListener()Lcom/tudou/adapter/HotHistoryAdapter$OnPodCastClickListener;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter;->onPodCastClickListener:Lcom/tudou/adapter/HotHistoryAdapter$OnPodCastClickListener;

    return-object v0
.end method

.method public getOnVideoClickListener()Lcom/tudou/adapter/HotHistoryAdapter$OnVideoClickListener;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter;->onVideoClickListener:Lcom/tudou/adapter/HotHistoryAdapter$OnVideoClickListener;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "p"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/tudou/adapter/HotHistoryAdapter;->getItemViewType(I)I

    move-result v2

    .line 110
    .local v2, "itemViewType":I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_1

    .line 113
    iget-object v8, p0, Lcom/tudou/adapter/HotHistoryAdapter;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030139

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 115
    invoke-virtual {p0, p2}, Lcom/tudou/adapter/HotHistoryAdapter;->initHeadHolder(Landroid/view/View;)Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;

    move-result-object v1

    .line 119
    .local v1, "holder":Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;->headTitle:Landroid/widget/TextView;

    const-string v9, "\u641c\u7d22\u5386\u53f2"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;->headDelete:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;->headDelete:Landroid/widget/TextView;

    new-instance v9, Lcom/tudou/adapter/HotHistoryAdapter$1;

    invoke-direct {v9, p0}, Lcom/tudou/adapter/HotHistoryAdapter$1;-><init>(Lcom/tudou/adapter/HotHistoryAdapter;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;->headLine:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 248
    .end local v1    # "holder":Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;
    :cond_0
    :goto_0
    return-object p2

    .line 130
    :cond_1
    const/4 v8, 0x4

    if-ne v2, v8, :cond_2

    .line 133
    iget-object v8, p0, Lcom/tudou/adapter/HotHistoryAdapter;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030139

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 135
    invoke-virtual {p0, p2}, Lcom/tudou/adapter/HotHistoryAdapter;->initHeadHolder(Landroid/view/View;)Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;

    move-result-object v1

    .line 139
    .restart local v1    # "holder":Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;->headTitle:Landroid/widget/TextView;

    const-string v9, "\u5927\u5bb6\u90fd\u5728\u770b"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;->headDelete:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;->headLine:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 142
    .end local v1    # "holder":Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;
    :cond_2
    if-nez v2, :cond_3

    .line 144
    iget-object v8, p0, Lcom/tudou/adapter/HotHistoryAdapter;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03013a

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 146
    const v8, 0x7f0c05b5

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/youku/widget/MultipleTextView;

    .line 147
    .local v3, "mTextView":Lcom/youku/widget/MultipleTextView;
    iget-object v8, p0, Lcom/tudou/adapter/HotHistoryAdapter;->histories:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Lcom/youku/widget/MultipleTextView;->setTextViews(Ljava/util/List;)V

    .line 148
    new-instance v8, Lcom/tudou/adapter/HotHistoryAdapter$2;

    invoke-direct {v8, p0}, Lcom/tudou/adapter/HotHistoryAdapter$2;-><init>(Lcom/tudou/adapter/HotHistoryAdapter;)V

    invoke-virtual {v3, v8}, Lcom/youku/widget/MultipleTextView;->setOnMultipleTVItemClickListener(Lcom/youku/widget/MultipleTextView$OnMultipleTVItemClickListener;)V

    goto :goto_0

    .line 156
    .end local v3    # "mTextView":Lcom/youku/widget/MultipleTextView;
    :cond_3
    const/4 v8, 0x2

    if-ne v2, v8, :cond_6

    .line 160
    iget-object v8, p0, Lcom/tudou/adapter/HotHistoryAdapter;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030143

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 162
    invoke-virtual {p0, p2}, Lcom/tudou/adapter/HotHistoryAdapter;->initVideoHolder(Landroid/view/View;)Lcom/tudou/adapter/HotHistoryAdapter$VideoHolder;

    move-result-object v1

    .line 166
    .local v1, "holder":Lcom/tudou/adapter/HotHistoryAdapter$VideoHolder;
    const/4 v6, 0x0

    .line 167
    .local v6, "temppos":I
    invoke-direct {p0}, Lcom/tudou/adapter/HotHistoryAdapter;->getTypeByHistoryHot()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    .line 168
    add-int/lit8 v6, p1, -0x3

    .line 171
    :goto_1
    move v0, v6

    .line 172
    .local v0, "finalTemppos":I
    iget-object v8, p0, Lcom/tudou/adapter/HotHistoryAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v8, v8, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/vo/SearchOfData;

    iget-object v7, v8, Lcom/youku/vo/SearchOfData;->video:Lcom/youku/vo/SearchOfVideo;

    .line 173
    .local v7, "video":Lcom/youku/vo/SearchOfVideo;
    if-eqz v7, :cond_4

    .line 174
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$VideoHolder;->videoTitle:Landroid/widget/TextView;

    iget-object v9, v7, Lcom/youku/vo/SearchOfVideo;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$VideoHolder;->videoDetail:Landroid/widget/TextView;

    iget-object v9, v7, Lcom/youku/vo/SearchOfVideo;->actors:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$VideoHolder;->videoPlayCount:Landroid/widget/TextView;

    iget-object v9, v7, Lcom/youku/vo/SearchOfVideo;->sub_title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v8, p0, Lcom/tudou/adapter/HotHistoryAdapter;->context:Landroid/content/Context;

    check-cast v8, Lcom/tudou/ui/fragment/SearchTudouActivity;

    invoke-virtual {v8}, Lcom/tudou/ui/fragment/SearchTudouActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    iget-object v9, v7, Lcom/youku/vo/SearchOfVideo;->image_448_252:Ljava/lang/String;

    iget-object v10, v1, Lcom/tudou/adapter/HotHistoryAdapter$VideoHolder;->videoImg:Landroid/widget/ImageView;

    invoke-virtual {v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 181
    :cond_4
    new-instance v8, Lcom/tudou/adapter/HotHistoryAdapter$3;

    invoke-direct {v8, p0, v7, v0}, Lcom/tudou/adapter/HotHistoryAdapter$3;-><init>(Lcom/tudou/adapter/HotHistoryAdapter;Lcom/youku/vo/SearchOfVideo;I)V

    invoke-virtual {p2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 170
    .end local v0    # "finalTemppos":I
    .end local v7    # "video":Lcom/youku/vo/SearchOfVideo;
    :cond_5
    add-int/lit8 v6, p1, -0x1

    goto :goto_1

    .line 189
    .end local v1    # "holder":Lcom/tudou/adapter/HotHistoryAdapter$VideoHolder;
    .end local v6    # "temppos":I
    :cond_6
    const/4 v8, 0x3

    if-ne v2, v8, :cond_0

    .line 193
    iget-object v8, p0, Lcom/tudou/adapter/HotHistoryAdapter;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03013c

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 194
    invoke-virtual {p0, p2}, Lcom/tudou/adapter/HotHistoryAdapter;->initPodHolder(Landroid/view/View;)Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;

    move-result-object v1

    .line 198
    .local v1, "holder":Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;
    const/4 v6, 0x0

    .line 199
    .restart local v6    # "temppos":I
    invoke-direct {p0}, Lcom/tudou/adapter/HotHistoryAdapter;->getTypeByHistoryHot()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_7

    .line 200
    add-int/lit8 v6, p1, -0x3

    .line 204
    :goto_2
    move v0, v6

    .line 205
    .restart local v0    # "finalTemppos":I
    iget-object v8, p0, Lcom/tudou/adapter/HotHistoryAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v8, v8, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/vo/SearchOfData;

    iget-object v4, v8, Lcom/youku/vo/SearchOfData;->podcast1:Lcom/youku/vo/SearchOfPodcasts;

    .line 206
    .local v4, "podcast1":Lcom/youku/vo/SearchOfPodcasts;
    iget-object v8, p0, Lcom/tudou/adapter/HotHistoryAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v8, v8, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/vo/SearchOfData;

    iget-object v5, v8, Lcom/youku/vo/SearchOfData;->podcast2:Lcom/youku/vo/SearchOfPodcasts;

    .line 207
    .local v5, "podcast2":Lcom/youku/vo/SearchOfPodcasts;
    if-eqz v4, :cond_9

    .line 208
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast1:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 209
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast1Name:Landroid/widget/TextView;

    iget-object v9, v4, Lcom/youku/vo/SearchOfPodcasts;->nickname:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast1Sign:Landroid/widget/TextView;

    iget-object v9, v4, Lcom/youku/vo/SearchOfPodcasts;->sub_title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast1Img:Landroid/widget/ImageView;

    iget-object v9, v4, Lcom/youku/vo/SearchOfPodcasts;->userpicurl:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/tudou/adapter/HotHistoryAdapter;->setPodImg(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 212
    const-string v8, "1"

    iget-object v9, v4, Lcom/youku/vo/SearchOfPodcasts;->v_user:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 213
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast1V:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    :goto_3
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast1:Landroid/widget/RelativeLayout;

    new-instance v9, Lcom/tudou/adapter/HotHistoryAdapter$4;

    invoke-direct {v9, p0, v4, v0}, Lcom/tudou/adapter/HotHistoryAdapter$4;-><init>(Lcom/tudou/adapter/HotHistoryAdapter;Lcom/youku/vo/SearchOfPodcasts;I)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    :goto_4
    if-eqz v5, :cond_b

    .line 228
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast2:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 229
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast2Name:Landroid/widget/TextView;

    iget-object v9, v5, Lcom/youku/vo/SearchOfPodcasts;->nickname:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast2Sign:Landroid/widget/TextView;

    iget-object v9, v5, Lcom/youku/vo/SearchOfPodcasts;->sub_title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast2Img:Landroid/widget/ImageView;

    iget-object v9, v5, Lcom/youku/vo/SearchOfPodcasts;->userpicurl:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/tudou/adapter/HotHistoryAdapter;->setPodImg(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 232
    const-string v8, "1"

    iget-object v9, v4, Lcom/youku/vo/SearchOfPodcasts;->v_user:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 233
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast2V:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    :goto_5
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast2:Landroid/widget/RelativeLayout;

    new-instance v9, Lcom/tudou/adapter/HotHistoryAdapter$5;

    invoke-direct {v9, p0, v5, v0}, Lcom/tudou/adapter/HotHistoryAdapter$5;-><init>(Lcom/tudou/adapter/HotHistoryAdapter;Lcom/youku/vo/SearchOfPodcasts;I)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 202
    .end local v0    # "finalTemppos":I
    .end local v4    # "podcast1":Lcom/youku/vo/SearchOfPodcasts;
    .end local v5    # "podcast2":Lcom/youku/vo/SearchOfPodcasts;
    :cond_7
    add-int/lit8 v6, p1, -0x1

    goto/16 :goto_2

    .line 215
    .restart local v0    # "finalTemppos":I
    .restart local v4    # "podcast1":Lcom/youku/vo/SearchOfPodcasts;
    .restart local v5    # "podcast2":Lcom/youku/vo/SearchOfPodcasts;
    :cond_8
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast1V:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 225
    :cond_9
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast1:Landroid/widget/RelativeLayout;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4

    .line 235
    :cond_a
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast2V:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 245
    :cond_b
    iget-object v8, v1, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast2:Landroid/widget/RelativeLayout;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x5

    return v0
.end method

.method public initHeadHolder(Landroid/view/View;)Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 305
    new-instance v0, Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;-><init>(Lcom/tudou/adapter/HotHistoryAdapter;)V

    .line 306
    .local v0, "holder":Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;
    const v1, 0x7f0c05b2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;->headTitle:Landroid/widget/TextView;

    .line 307
    const v1, 0x7f0c05b3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;->headDelete:Landroid/widget/TextView;

    .line 308
    const v1, 0x7f0c05b4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/tudou/adapter/HotHistoryAdapter$HeadHolder;->headLine:Landroid/view/View;

    .line 309
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 310
    return-object v0
.end method

.method public initPodHolder(Landroid/view/View;)Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 283
    new-instance v0, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;-><init>(Lcom/tudou/adapter/HotHistoryAdapter;)V

    .line 284
    .local v0, "holder":Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;
    const v1, 0x7f0c05bb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast1Img:Landroid/widget/ImageView;

    .line 285
    const v1, 0x7f0c05bd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast1Name:Landroid/widget/TextView;

    .line 286
    const v1, 0x7f0c05be

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast1Sign:Landroid/widget/TextView;

    .line 287
    const v1, 0x7f0c05c0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast2Img:Landroid/widget/ImageView;

    .line 288
    const v1, 0x7f0c05c2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast2Name:Landroid/widget/TextView;

    .line 289
    const v1, 0x7f0c05c3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast2Sign:Landroid/widget/TextView;

    .line 290
    const v1, 0x7f0c05ba

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast1:Landroid/widget/RelativeLayout;

    .line 291
    const v1, 0x7f0c05bf

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast2:Landroid/widget/RelativeLayout;

    .line 292
    const v1, 0x7f0c05bc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast1V:Landroid/widget/ImageView;

    .line 293
    const v1, 0x7f0c05c1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/tudou/adapter/HotHistoryAdapter$PodHolder;->podcast2V:Landroid/widget/ImageView;

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 295
    return-object v0
.end method

.method public initVideoHolder(Landroid/view/View;)Lcom/tudou/adapter/HotHistoryAdapter$VideoHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 260
    new-instance v0, Lcom/tudou/adapter/HotHistoryAdapter$VideoHolder;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/HotHistoryAdapter$VideoHolder;-><init>(Lcom/tudou/adapter/HotHistoryAdapter;)V

    .line 261
    .local v0, "holder":Lcom/tudou/adapter/HotHistoryAdapter$VideoHolder;
    const v1, 0x7f0c05f0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/tudou/adapter/HotHistoryAdapter$VideoHolder;->videoImg:Landroid/widget/ImageView;

    .line 262
    const v1, 0x7f0c05f1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tudou/adapter/HotHistoryAdapter$VideoHolder;->videoTitle:Landroid/widget/TextView;

    .line 263
    const v1, 0x7f0c05f2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tudou/adapter/HotHistoryAdapter$VideoHolder;->videoDetail:Landroid/widget/TextView;

    .line 264
    const v1, 0x7f0c05f3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tudou/adapter/HotHistoryAdapter$VideoHolder;->videoPlayCount:Landroid/widget/TextView;

    .line 265
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 266
    return-object v0
.end method

.method public setHistories(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchOfHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, "histories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchOfHistory;>;"
    iput-object p1, p0, Lcom/tudou/adapter/HotHistoryAdapter;->histories:Ljava/util/ArrayList;

    .line 411
    return-void
.end method

.method public setOnClearListener(Lcom/tudou/adapter/HotHistoryAdapter$OnClearListener;)V
    .locals 0
    .param p1, "onClearListener"    # Lcom/tudou/adapter/HotHistoryAdapter$OnClearListener;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/tudou/adapter/HotHistoryAdapter;->onClearListener:Lcom/tudou/adapter/HotHistoryAdapter$OnClearListener;

    .line 443
    return-void
.end method

.method public setOnHistoryClickListener(Lcom/tudou/adapter/HotHistoryAdapter$OnHistoryClickListener;)V
    .locals 0
    .param p1, "onHistoryClickListener"    # Lcom/tudou/adapter/HotHistoryAdapter$OnHistoryClickListener;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/tudou/adapter/HotHistoryAdapter;->onHistoryClickListener:Lcom/tudou/adapter/HotHistoryAdapter$OnHistoryClickListener;

    .line 435
    return-void
.end method

.method public setOnPodCastClickListener(Lcom/tudou/adapter/HotHistoryAdapter$OnPodCastClickListener;)V
    .locals 0
    .param p1, "onPodCastClickListener"    # Lcom/tudou/adapter/HotHistoryAdapter$OnPodCastClickListener;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/tudou/adapter/HotHistoryAdapter;->onPodCastClickListener:Lcom/tudou/adapter/HotHistoryAdapter$OnPodCastClickListener;

    .line 427
    return-void
.end method

.method public setOnVideoClickListener(Lcom/tudou/adapter/HotHistoryAdapter$OnVideoClickListener;)V
    .locals 0
    .param p1, "onVideoClickListener"    # Lcom/tudou/adapter/HotHistoryAdapter$OnVideoClickListener;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/tudou/adapter/HotHistoryAdapter;->onVideoClickListener:Lcom/tudou/adapter/HotHistoryAdapter$OnVideoClickListener;

    .line 419
    return-void
.end method
