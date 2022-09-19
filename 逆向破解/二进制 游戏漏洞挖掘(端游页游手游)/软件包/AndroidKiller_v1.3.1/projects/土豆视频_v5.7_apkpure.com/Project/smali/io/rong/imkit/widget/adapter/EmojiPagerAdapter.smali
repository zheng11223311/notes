.class public Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmojiPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;,
        Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$OnEmojiItemClickListener;
    }
.end annotation


# instance fields
.field columnCount:I

.field columnWidth:I

.field mContext:Landroid/content/Context;

.field mEmojiItemClickListener:Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$OnEmojiItemClickListener;

.field mEmojis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;

.field pageCount:I

.field pageEmojiCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Landroid/support/v4/app/FragmentManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p4, "manager"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/Emoji;",
            ">;",
            "Landroid/support/v4/app/FragmentManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "emojis":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/Emoji;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->columnWidth:I

    .line 41
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 43
    .local v0, "padding":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v1, v0

    iget v2, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->columnWidth:I

    div-int/2addr v1, v2

    :goto_0
    iput v1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->columnCount:I

    .line 47
    iget v1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->columnCount:I

    iget v2, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->columnCount:I

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->pageEmojiCount:I

    .line 48
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->pageEmojiCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->pageEmojiCount:I

    div-int/2addr v1, v2

    iput v1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->pageCount:I

    .line 49
    iput-object p3, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->mEmojis:Ljava/util/List;

    .line 50
    return-void

    .line 43
    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iget v2, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->columnWidth:I

    div-int/2addr v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->pageCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 70
    if-nez p2, :cond_0

    .line 71
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lio/rong/imkit/R$layout;->rc_wi_emoji_grid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 74
    check-cast v0, Landroid/widget/GridView;

    .line 75
    .local v0, "gridView":Landroid/widget/GridView;
    const-string v1, "EmojiPagerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v1, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;

    iget v2, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->pageEmojiCount:I

    iget v3, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->pageEmojiCount:I

    mul-int/2addr v3, p1

    iget-object v4, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->mEmojis:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, v4}, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$EmojiAdapter;-><init>(Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;IILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->mEmojiItemClickListener:Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$OnEmojiItemClickListener;

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->mEmojiItemClickListener:Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$OnEmojiItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    :cond_1
    return-object v0
.end method

.method public setEmojiItemClickListener(Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$OnEmojiItemClickListener;)V
    .locals 0
    .param p1, "emojiItemClickListener"    # Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$OnEmojiItemClickListener;

    .prologue
    .line 85
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->mEmojiItemClickListener:Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$OnEmojiItemClickListener;

    .line 86
    return-void
.end method
