.class public Lcom/youku/gamecenter/adapter/AppTagAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppTagAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/adapter/AppTagAdapter$TagViewOnClickListener;
    }
.end annotation


# instance fields
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/AppTagAdapter;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/AppTagAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object p2, p0, Lcom/youku/gamecenter/adapter/AppTagAdapter;->mTags:Ljava/util/List;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/adapter/AppTagAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/AppTagAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/AppTagAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private inflateView()Landroid/view/View;
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/AppTagAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/gamecenter/R$layout;->layout_game_detail_tag_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private setViewDatas(Landroid/widget/TextView;ILcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;)V
    .locals 2
    .param p1, "textview"    # Landroid/widget/TextView;
    .param p2, "position"    # I
    .param p3, "item"    # Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    .prologue
    .line 62
    iget-object v0, p3, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v1, Lcom/youku/gamecenter/adapter/AppTagAdapter$TagViewOnClickListener;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, p0, p3, v0}, Lcom/youku/gamecenter/adapter/AppTagAdapter$TagViewOnClickListener;-><init>(Lcom/youku/gamecenter/adapter/AppTagAdapter;Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;Z)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/AppTagAdapter;->mTags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/AppTagAdapter;->mTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/AppTagAdapter;->mTags:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    .line 50
    .local v0, "item":Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;
    invoke-direct {p0}, Lcom/youku/gamecenter/adapter/AppTagAdapter;->inflateView()Landroid/view/View;

    move-result-object p2

    move-object v1, p2

    .line 52
    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, p1, v0}, Lcom/youku/gamecenter/adapter/AppTagAdapter;->setViewDatas(Landroid/widget/TextView;ILcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;)V

    .line 54
    return-object p2
.end method
