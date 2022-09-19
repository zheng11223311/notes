.class Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/fragment/GameCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GridViewItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final SUMCOUNT:I = 0x6


# instance fields
.field private mCategory:Lcom/youku/gamecenter/data/CategoryInfo;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private showCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/gamecenter/data/CategoryInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/youku/gamecenter/data/CategoryInfo;

    .prologue
    .line 310
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 306
    const/4 v0, 0x6

    iput v0, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->showCount:I

    .line 311
    iput-object p1, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->mContext:Landroid/content/Context;

    .line 312
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 313
    iput-object p2, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->mCategory:Lcom/youku/gamecenter/data/CategoryInfo;

    .line 314
    iget-object v0, p2, Lcom/youku/gamecenter/data/CategoryInfo;->tags:Ljava/util/List;

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->mTags:Ljava/util/List;

    .line 315
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->getShowCount()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->showCount:I

    .line 316
    return-void
.end method

.method private inflateViewByDevice()Landroid/view/View;
    .locals 3

    .prologue
    .line 358
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_category_tags_item_gridview_item:I

    .line 360
    .local v0, "resId":I
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private initViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 386
    new-instance v0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;-><init>()V

    .line 387
    .local v0, "holder":Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;
    sget v1, Lcom/youku/gamecenter/R$id;->game_tag_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 388
    sget v1, Lcom/youku/gamecenter/R$id;->horizontal_line:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;->horizontal_line:Landroid/view/View;

    .line 389
    sget v1, Lcom/youku/gamecenter/R$id;->vertical_line:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;->vertical_line:Landroid/view/View;

    .line 391
    return-object v0
.end method

.method private setViewHolderDatas(ILcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;Lcom/youku/gamecenter/data/CategoryInfo;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;
    .param p3, "info"    # Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;
    .param p4, "category"    # Lcom/youku/gamecenter/data/CategoryInfo;

    .prologue
    const/4 v7, 0x4

    .line 367
    if-eqz p3, :cond_2

    .line 368
    iget-object v0, p2, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v6, p2, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;->name:Landroid/widget/TextView;

    new-instance v0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$TitleClickListener;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p3, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;->id:Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p3, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;->name:Ljava/lang/String;

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/youku/gamecenter/fragment/GameCategoryFragment$TitleClickListener;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/data/CategoryInfo;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    :goto_0
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p2, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;->vertical_line:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-lt p1, v0, :cond_1

    .line 379
    iget-object v0, p2, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;->horizontal_line:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :cond_1
    return-void

    .line 371
    :cond_2
    iget-object v0, p2, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p2, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x6

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 331
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 335
    int-to-long v0, p1

    return-wide v0
.end method

.method public getShowCount()I
    .locals 3

    .prologue
    .line 320
    const/4 v0, 0x6

    .line 321
    .local v0, "realShowCount":I
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->mTags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    .line 322
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->mTags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 323
    :cond_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 342
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->inflateViewByDevice()Landroid/view/View;

    move-result-object p2

    .line 344
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->initViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;

    move-result-object v1

    .line 346
    .local v1, "holder":Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;
    iget v2, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->showCount:I

    if-ge p1, v2, :cond_1

    .line 347
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->mTags:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    .line 348
    .local v0, "data":Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->mCategory:Lcom/youku/gamecenter/data/CategoryInfo;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->setViewHolderDatas(ILcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;Lcom/youku/gamecenter/data/CategoryInfo;)V

    .line 353
    .end local v0    # "data":Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;
    :cond_0
    :goto_0
    return-object p2

    .line 349
    :cond_1
    const/4 v2, 0x6

    if-ge p1, v2, :cond_0

    .line 350
    invoke-direct {p0, p1, v1, v3, v3}, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;->setViewHolderDatas(ILcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter$ViewHolder;Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;Lcom/youku/gamecenter/data/CategoryInfo;)V

    goto :goto_0
.end method
