.class public Lcom/youku/vo/SearchDirectDaoShowItem;
.super Ljava/lang/Object;
.source "SearchDirectDaoShowItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STATE_ATTENTED:I = 0x3

.field public static final STATE_ATTENTING:I = 0x2

.field public static final STATE_NOATTENT:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public area:Ljava/lang/String;

.field public birthday:Ljava/lang/String;

.field public brief:Ljava/lang/String;

.field public cate_id:I

.field public constellation:Ljava/lang/String;

.field public currentPage:I

.field public followers_count:Ljava/lang/String;

.field public genre:Ljava/lang/String;

.field public hide:I

.field public id:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public isAttention:I

.field public isVuser:Z

.field public itemTotal:I

.field public manPageFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public notice:Ljava/lang/String;

.field public occupation:Ljava/lang/String;

.field public page:I

.field public pageCount:I

.field public pageData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowset;",
            ">;>;"
        }
    .end annotation
.end field

.field public pageSize:I

.field public pageText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public score:Ljava/lang/String;

.field public small_image_url:Ljava/lang/String;

.field public sources:Lcom/youku/vo/SearchDirectDaoSources;

.field public stripe_top:Ljava/lang/String;

.field public tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TABS;",
            ">;"
        }
    .end annotation
.end field

.field public thumb:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public total_vv:Ljava/lang/String;

.field public trailers:Lcom/youku/vo/SearchDirectDaoTrailers;

.field public userVideoList:Lcom/youku/vo/UserPlayList;

.field public video_count:Ljava/lang/String;

.field public vimg:Ljava/lang/String;

.field public vv:Ljava/lang/String;

.field public year:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->page:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageText:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageData:Ljava/util/Map;

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->manPageFilter:Ljava/util/ArrayList;

    return-void
.end method

.method private dealWithFromSite()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget v0, v0, Lcom/youku/vo/SearchDirectDaoSources;->is_tudou:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    const v1, 0x7f020892

    iput v1, v0, Lcom/youku/vo/SearchDirectDaoSources;->site_drawable:I

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v1, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget v1, v1, Lcom/youku/vo/SearchDirectDaoSources;->site_id:I

    invoke-virtual {p0, v1}, Lcom/youku/vo/SearchDirectDaoShowItem;->getSourceSiteResId(I)I

    move-result v1

    iput v1, v0, Lcom/youku/vo/SearchDirectDaoSources;->site_drawable:I

    goto :goto_0
.end method

.method private pageLimit(II)V
    .locals 7
    .param p1, "i"    # I
    .param p2, "count"    # I

    .prologue
    .line 79
    iget-object v4, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    if-nez v4, :cond_0

    .line 112
    :goto_0
    return-void

    .line 81
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v2, "showsets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowset;>;"
    mul-int v4, p2, p1

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->itemTotal:I

    if-lt v4, v5, :cond_1

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v4, v4, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    mul-int v6, p2, p1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v4, v4, Lcom/youku/vo/SearchDirectDaoShowset;->show_stage:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v4, v4, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    iget v6, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->itemTotal:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v4, v4, Lcom/youku/vo/SearchDirectDaoShowset;->show_stage:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 88
    .local v1, "j":I
    :goto_1
    mul-int v4, p2, p1

    add-int/2addr v4, v1

    iget v5, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->itemTotal:I

    if-ge v4, v5, :cond_2

    .line 89
    iget-object v4, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v4, v4, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    mul-int v5, p2, p1

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    .end local v1    # "j":I
    .end local v3    # "text":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v4, v4, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    mul-int v6, p2, p1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v4, v4, Lcom/youku/vo/SearchDirectDaoShowset;->show_stage:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v4, v4, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    mul-int v6, p2, p1

    add-int/2addr v6, p2

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v4, v4, Lcom/youku/vo/SearchDirectDaoShowset;->show_stage:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    .restart local v3    # "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 97
    .restart local v1    # "j":I
    :goto_2
    if-ge v1, p2, :cond_2

    .line 98
    iget-object v4, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v4, v4, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    mul-int v5, p2, p1

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 102
    :cond_2
    iget-object v4, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageText:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "c":I
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageText:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 105
    iget-object v4, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageText:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 104
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 108
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\uff08"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\uff09"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .end local v0    # "c":I
    :cond_5
    iget-object v4, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageText:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v4, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageData:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private setPageData()V
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageSize:I

    if-ge v0, v1, :cond_0

    .line 73
    iget v1, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageCount:I

    invoke-direct {p0, v0, v1}, Lcom/youku/vo/SearchDirectDaoShowItem;->pageLimit(II)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method private setPageSize()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 115
    iget v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    sparse-switch v0, :sswitch_data_0

    .line 137
    iput v1, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageCount:I

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v0, v0, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->itemTotal:I

    .line 142
    :cond_0
    iget v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->itemTotal:I

    iget v1, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageCount:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 143
    iget v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->itemTotal:I

    iget v1, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageSize:I

    .line 146
    :goto_1
    return-void

    .line 118
    :sswitch_0
    const/16 v0, 0xf

    iput v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageCount:I

    goto :goto_0

    .line 125
    :sswitch_1
    iput v1, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageCount:I

    goto :goto_0

    .line 145
    :cond_1
    iget v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->itemTotal:I

    iget v1, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageCount:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->pageSize:I

    goto :goto_1

    .line 115
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x5 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0x11 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public dealWithSources()V
    .locals 5

    .prologue
    .line 52
    iget v3, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 53
    iget-object v3, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/youku/vo/SearchDirectDaoShowItem;->setManPageFilter(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->manPageFilter:Ljava/util/ArrayList;

    .line 69
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v3, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->trailers:Lcom/youku/vo/SearchDirectDaoTrailers;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->trailers:Lcom/youku/vo/SearchDirectDaoTrailers;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoTrailers;->items:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->trailers:Lcom/youku/vo/SearchDirectDaoTrailers;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoTrailers;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    iget-object v3, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 57
    iget-object v3, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->trailers:Lcom/youku/vo/SearchDirectDaoTrailers;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoTrailers;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 58
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 59
    iget-object v3, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->trailers:Lcom/youku/vo/SearchDirectDaoTrailers;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoTrailers;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowset;

    .line 60
    .local v1, "item":Lcom/youku/vo/SearchDirectDaoShowset;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/youku/vo/SearchDirectDaoShowset;->isTrailer:Z

    .line 61
    iget-object v3, p0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 58
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 65
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/youku/vo/SearchDirectDaoShowset;
    .end local v2    # "size":I
    :cond_1
    invoke-direct {p0}, Lcom/youku/vo/SearchDirectDaoShowItem;->setPageSize()V

    .line 66
    invoke-direct {p0}, Lcom/youku/vo/SearchDirectDaoShowItem;->setPageData()V

    .line 67
    invoke-direct {p0}, Lcom/youku/vo/SearchDirectDaoShowItem;->dealWithFromSite()V

    goto :goto_0
.end method

.method public getSourceSiteResId(I)I
    .locals 3
    .param p1, "sourceSite"    # I

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "sourceSiteResId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/tudou/ui/fragment/SearchManager;->other_site_ids:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 161
    sget-object v2, Lcom/tudou/ui/fragment/SearchManager;->other_site_ids:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 162
    sget-object v2, Lcom/tudou/ui/fragment/SearchManager;->other_site_resids:[I

    aget v1, v2, v0

    .line 166
    :cond_0
    return v1

    .line 160
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setManPageFilter(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TABS;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "ts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TABS;>;"
    if-nez p1, :cond_1

    .line 180
    const/4 v1, 0x0

    .line 188
    :cond_0
    return-object v1

    .line 181
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v1, "filterStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/TABS;

    iget-object v3, v3, Lcom/youku/vo/TABS;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/TABS;

    iget-object v3, v3, Lcom/youku/vo/TABS;->videos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
