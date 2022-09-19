.class public Lcom/tudou/adapter/IndexItemFoot;
.super Lcom/tudou/adapter/IndexItemType;
.source "IndexItemFoot.java"


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemFoot;->init()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemFoot;->init()V

    .line 23
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    .line 26
    const-string v0, "layout_inflater"

    .line 27
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemFoot;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemFoot;->mInflater:Landroid/view/LayoutInflater;

    .line 28
    iget-object v1, p0, Lcom/tudou/adapter/IndexItemFoot;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030180

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 29
    return-void
.end method
