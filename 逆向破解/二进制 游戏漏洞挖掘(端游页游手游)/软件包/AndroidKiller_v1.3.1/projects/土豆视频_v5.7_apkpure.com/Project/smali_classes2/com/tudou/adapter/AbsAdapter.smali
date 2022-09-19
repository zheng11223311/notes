.class public Lcom/tudou/adapter/AbsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AbsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mCurrentDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    .local p0, "this":Lcom/tudou/adapter/AbsAdapter;, "Lcom/tudou/adapter/AbsAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    invoke-direct {p0}, Lcom/tudou/adapter/AbsAdapter;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/tudou/adapter/AbsAdapter;, "Lcom/tudou/adapter/AbsAdapter<TT;>;"
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tudou/adapter/AbsAdapter;->mCurrentDatas:Ljava/util/List;

    .line 18
    invoke-direct {p0}, Lcom/tudou/adapter/AbsAdapter;->init()V

    .line 19
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/tudou/adapter/AbsAdapter;, "Lcom/tudou/adapter/AbsAdapter<TT;>;"
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/tudou/adapter/AbsAdapter;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/tudou/adapter/AbsAdapter;, "Lcom/tudou/adapter/AbsAdapter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 38
    .local v0, "b":Z
    invoke-virtual {p0}, Lcom/tudou/adapter/AbsAdapter;->getDatas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/tudou/adapter/AbsAdapter;->getDatas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 41
    :cond_0
    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 77
    .local p0, "this":Lcom/tudou/adapter/AbsAdapter;, "Lcom/tudou/adapter/AbsAdapter<TT;>;"
    iget-object v0, p0, Lcom/tudou/adapter/AbsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/tudou/adapter/AbsAdapter;, "Lcom/tudou/adapter/AbsAdapter<TT;>;"
    iget-object v0, p0, Lcom/tudou/adapter/AbsAdapter;->mCurrentDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/tudou/adapter/AbsAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/tudou/adapter/AbsAdapter;, "Lcom/tudou/adapter/AbsAdapter<TT;>;"
    iget-object v0, p0, Lcom/tudou/adapter/AbsAdapter;->mCurrentDatas:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/tudou/adapter/AbsAdapter;, "Lcom/tudou/adapter/AbsAdapter<TT;>;"
    iget-object v0, p0, Lcom/tudou/adapter/AbsAdapter;->mCurrentDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/tudou/adapter/AbsAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 68
    .local p0, "this":Lcom/tudou/adapter/AbsAdapter;, "Lcom/tudou/adapter/AbsAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 73
    .local p0, "this":Lcom/tudou/adapter/AbsAdapter;, "Lcom/tudou/adapter/AbsAdapter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    .local p0, "this":Lcom/tudou/adapter/AbsAdapter;, "Lcom/tudou/adapter/AbsAdapter<TT;>;"
    iput-object p1, p0, Lcom/tudou/adapter/AbsAdapter;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/tudou/adapter/AbsAdapter;, "Lcom/tudou/adapter/AbsAdapter<TT;>;"
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/tudou/adapter/AbsAdapter;->mCurrentDatas:Ljava/util/List;

    .line 46
    invoke-virtual {p0}, Lcom/tudou/adapter/AbsAdapter;->notifyDataSetChanged()V

    .line 47
    return-void
.end method
