.class public Lcom/tudou/detail/adapter/ActorCategorysAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ActorCategorysAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/adapter/ActorCategorysAdapter$ActorCategorysItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/tudou/detail/adapter/ActorCategorysAdapter$ActorCategorysItemHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCategorys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemClickLis:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSelection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/tudou/detail/adapter/ActorCategorysAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/adapter/ActorCategorysAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "categorys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/detail/adapter/ActorCategorysAdapter;->mSelection:I

    .line 40
    sget-object v0, Lcom/tudou/detail/adapter/ActorCategorysAdapter;->TAG:Ljava/lang/String;

    const-string v1, "HorizonPlaylistAdapter cons"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/tudou/detail/adapter/ActorCategorysAdapter;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/tudou/detail/adapter/ActorCategorysAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/ActorCategorysAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    iput-object p2, p0, Lcom/tudou/detail/adapter/ActorCategorysAdapter;->mCategorys:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method static synthetic access$002(Lcom/tudou/detail/adapter/ActorCategorysAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/adapter/ActorCategorysAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/tudou/detail/adapter/ActorCategorysAdapter;->mSelection:I

    return p1
.end method

.method static synthetic access$100(Lcom/tudou/detail/adapter/ActorCategorysAdapter;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/adapter/ActorCategorysAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tudou/detail/adapter/ActorCategorysAdapter;->mItemClickLis:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tudou/detail/adapter/ActorCategorysAdapter;->mCategorys:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/adapter/ActorCategorysAdapter;->mCategorys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x1"    # I

    .prologue
    .line 22
    check-cast p1, Lcom/tudou/detail/adapter/ActorCategorysAdapter$ActorCategorysItemHolder;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/tudou/detail/adapter/ActorCategorysAdapter;->onBindViewHolder(Lcom/tudou/detail/adapter/ActorCategorysAdapter$ActorCategorysItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tudou/detail/adapter/ActorCategorysAdapter$ActorCategorysItemHolder;I)V
    .locals 4
    .param p1, "actorCategorysItemHolder"    # Lcom/tudou/detail/adapter/ActorCategorysAdapter$ActorCategorysItemHolder;
    .param p2, "i"    # I

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0x73

    .line 54
    iget-object v1, p1, Lcom/tudou/detail/adapter/ActorCategorysAdapter$ActorCategorysItemHolder;->content:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/detail/adapter/ActorCategorysAdapter;->mCategorys:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget v0, p0, Lcom/tudou/detail/adapter/ActorCategorysAdapter;->mSelection:I

    if-ne v0, p2, :cond_0

    .line 56
    iget-object v0, p1, Lcom/tudou/detail/adapter/ActorCategorysAdapter$ActorCategorysItemHolder;->content:Landroid/widget/TextView;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {v3, v3, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    :goto_0
    iget-object v0, p1, Lcom/tudou/detail/adapter/ActorCategorysAdapter$ActorCategorysItemHolder;->content:Landroid/widget/TextView;

    new-instance v1, Lcom/tudou/detail/adapter/ActorCategorysAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/tudou/detail/adapter/ActorCategorysAdapter$1;-><init>(Lcom/tudou/detail/adapter/ActorCategorysAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void

    .line 58
    :cond_0
    iget-object v0, p1, Lcom/tudou/detail/adapter/ActorCategorysAdapter$ActorCategorysItemHolder;->content:Landroid/widget/TextView;

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/tudou/detail/adapter/ActorCategorysAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tudou/detail/adapter/ActorCategorysAdapter$ActorCategorysItemHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tudou/detail/adapter/ActorCategorysAdapter$ActorCategorysItemHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 48
    iget-object v1, p0, Lcom/tudou/detail/adapter/ActorCategorysAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300bd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "root":Landroid/view/View;
    new-instance v1, Lcom/tudou/detail/adapter/ActorCategorysAdapter$ActorCategorysItemHolder;

    invoke-direct {v1, p0, v0}, Lcom/tudou/detail/adapter/ActorCategorysAdapter$ActorCategorysItemHolder;-><init>(Lcom/tudou/detail/adapter/ActorCategorysAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "lis"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tudou/detail/adapter/ActorCategorysAdapter;->mItemClickLis:Landroid/widget/AdapterView$OnItemClickListener;

    .line 37
    return-void
.end method
