.class public Lcom/tudou/adapter/IndexBottomLable;
.super Lcom/tudou/adapter/IndexItemType;
.source "IndexBottomLable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;
    }
.end annotation


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsFive:Z

.field public mLableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field public mRow1:Landroid/view/View;

.field public mRow2:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/adapter/IndexBottomLable;->mIsFive:Z

    .line 30
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexBottomLable;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/adapter/IndexBottomLable;->mIsFive:Z

    .line 41
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexBottomLable;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isFive"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/adapter/IndexBottomLable;->mIsFive:Z

    .line 35
    iput-boolean p2, p0, Lcom/tudou/adapter/IndexBottomLable;->mIsFive:Z

    .line 36
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexBottomLable;->init()V

    .line 37
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 45
    const-string v0, "layout_inflater"

    .line 46
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexBottomLable;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/IndexBottomLable;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    iget-boolean v1, p0, Lcom/tudou/adapter/IndexBottomLable;->mIsFive:Z

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/tudou/adapter/IndexBottomLable;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030178

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    :goto_0
    const v1, 0x7f0c0731

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexBottomLable;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/IndexBottomLable;->mRow1:Landroid/view/View;

    .line 56
    const v1, 0x7f0c0735

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexBottomLable;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/IndexBottomLable;->mRow2:Landroid/view/View;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tudou/adapter/IndexBottomLable;->mLableList:Ljava/util/List;

    .line 59
    iget-object v1, p0, Lcom/tudou/adapter/IndexBottomLable;->mLableList:Ljava/util/List;

    new-instance v2, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;

    const v3, 0x7f0c0732

    invoke-virtual {p0, v3}, Lcom/tudou/adapter/IndexBottomLable;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;-><init>(Lcom/tudou/adapter/IndexBottomLable;Landroid/view/View;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, p0, Lcom/tudou/adapter/IndexBottomLable;->mLableList:Ljava/util/List;

    new-instance v2, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;

    const v3, 0x7f0c0733

    invoke-virtual {p0, v3}, Lcom/tudou/adapter/IndexBottomLable;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;-><init>(Lcom/tudou/adapter/IndexBottomLable;Landroid/view/View;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v1, p0, Lcom/tudou/adapter/IndexBottomLable;->mLableList:Ljava/util/List;

    new-instance v2, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;

    const v3, 0x7f0c0734

    invoke-virtual {p0, v3}, Lcom/tudou/adapter/IndexBottomLable;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;-><init>(Lcom/tudou/adapter/IndexBottomLable;Landroid/view/View;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, p0, Lcom/tudou/adapter/IndexBottomLable;->mLableList:Ljava/util/List;

    new-instance v2, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;

    const v3, 0x7f0c0736

    invoke-virtual {p0, v3}, Lcom/tudou/adapter/IndexBottomLable;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;-><init>(Lcom/tudou/adapter/IndexBottomLable;Landroid/view/View;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Lcom/tudou/adapter/IndexBottomLable;->mLableList:Ljava/util/List;

    new-instance v2, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;

    const v3, 0x7f0c0737

    invoke-virtual {p0, v3}, Lcom/tudou/adapter/IndexBottomLable;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;-><init>(Lcom/tudou/adapter/IndexBottomLable;Landroid/view/View;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-boolean v1, p0, Lcom/tudou/adapter/IndexBottomLable;->mIsFive:Z

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/tudou/adapter/IndexBottomLable;->mLableList:Ljava/util/List;

    new-instance v2, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;

    const v3, 0x7f0c0738

    invoke-virtual {p0, v3}, Lcom/tudou/adapter/IndexBottomLable;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/tudou/adapter/IndexBottomLable$LableViewHolder;-><init>(Lcom/tudou/adapter/IndexBottomLable;Landroid/view/View;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    return-void

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/tudou/adapter/IndexBottomLable;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030177

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0
.end method
