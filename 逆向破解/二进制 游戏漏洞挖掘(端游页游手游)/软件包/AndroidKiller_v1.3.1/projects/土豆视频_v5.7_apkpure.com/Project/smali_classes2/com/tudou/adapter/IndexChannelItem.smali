.class public Lcom/tudou/adapter/IndexChannelItem;
.super Lcom/tudou/adapter/IndexItemType;
.source "IndexChannelItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;
    }
.end annotation


# instance fields
.field public mIndexChannelCells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;",
            ">;"
        }
    .end annotation
.end field

.field public mRow1:Landroid/view/View;

.field public mRow2:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexChannelItem;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexChannelItem;->init()V

    .line 36
    return-void
.end method


# virtual methods
.method public addIndexChannelCell(Landroid/view/View;)V
    .locals 3
    .param p1, "aView"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/adapter/IndexChannelItem;->mIndexChannelCells:Ljava/util/List;

    new-instance v1, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;

    const v2, 0x7f0c0416

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;-><init>(Lcom/tudou/adapter/IndexChannelItem;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/tudou/adapter/IndexChannelItem;->mIndexChannelCells:Ljava/util/List;

    new-instance v1, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;

    const v2, 0x7f0c0418

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;-><init>(Lcom/tudou/adapter/IndexChannelItem;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/tudou/adapter/IndexChannelItem;->mIndexChannelCells:Ljava/util/List;

    new-instance v1, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;

    const v2, 0x7f0c041d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;-><init>(Lcom/tudou/adapter/IndexChannelItem;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/tudou/adapter/IndexChannelItem;->mIndexChannelCells:Ljava/util/List;

    new-instance v1, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;

    const v2, 0x7f0c043b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;-><init>(Lcom/tudou/adapter/IndexChannelItem;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/tudou/adapter/IndexChannelItem;->mIndexChannelCells:Ljava/util/List;

    new-instance v1, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;

    const v2, 0x7f0c073b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;-><init>(Lcom/tudou/adapter/IndexChannelItem;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method init()V
    .locals 4

    .prologue
    .line 39
    const-string v0, "layout_inflater"

    .line 40
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexChannelItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/IndexChannelItem;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iget-object v1, p0, Lcom/tudou/adapter/IndexChannelItem;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03017b

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    const v1, 0x7f0c0731

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexChannelItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/IndexChannelItem;->mRow1:Landroid/view/View;

    .line 44
    const v1, 0x7f0c0735

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexChannelItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/IndexChannelItem;->mRow2:Landroid/view/View;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tudou/adapter/IndexChannelItem;->mIndexChannelCells:Ljava/util/List;

    .line 49
    iget-object v1, p0, Lcom/tudou/adapter/IndexChannelItem;->mRow1:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexChannelItem;->addIndexChannelCell(Landroid/view/View;)V

    .line 50
    iget-object v1, p0, Lcom/tudou/adapter/IndexChannelItem;->mRow2:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexChannelItem;->addIndexChannelCell(Landroid/view/View;)V

    .line 51
    return-void
.end method
