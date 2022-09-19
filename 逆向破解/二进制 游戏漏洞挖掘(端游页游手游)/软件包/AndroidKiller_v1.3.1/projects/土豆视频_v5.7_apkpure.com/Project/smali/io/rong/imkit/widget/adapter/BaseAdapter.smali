.class public abstract Lio/rong/imkit/widget/adapter/BaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseAdapter.java"


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
.field mContext:Landroid/content/Context;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    .local p0, "this":Lio/rong/imkit/widget/adapter/BaseAdapter;, "Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    .local p0, "this":Lio/rong/imkit/widget/adapter/BaseAdapter;, "Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lio/rong/imkit/widget/adapter/BaseAdapter;, "Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public add(Ljava/lang/Object;I)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lio/rong/imkit/widget/adapter/BaseAdapter;, "Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 73
    return-void
.end method

.method public addCollection(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lio/rong/imkit/widget/adapter/BaseAdapter;, "Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    return-void
.end method

.method public varargs addCollection([Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lio/rong/imkit/widget/adapter/BaseAdapter;, "Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    .local p1, "collection":[Ljava/lang/Object;, "[TT;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 63
    .local v3, "t":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method

.method protected abstract bindView(Landroid/view/View;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ITT;)V"
        }
    .end annotation
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lio/rong/imkit/widget/adapter/BaseAdapter;, "Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    return-void
.end method

.method public findPosition(J)I
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 45
    .local p0, "this":Lio/rong/imkit/widget/adapter/BaseAdapter;, "Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    invoke-virtual {p0}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getCount()I

    move-result v0

    .line 46
    .local v0, "index":I
    const/4 v2, -0x1

    .local v2, "position":I
    move v1, v0

    .line 47
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    if-lez v1, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getItemId(I)J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    .line 49
    move v2, v0

    .line 53
    :cond_0
    return v2

    :cond_1
    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0
.end method

.method public findPosition(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lio/rong/imkit/widget/adapter/BaseAdapter;, "Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getCount()I

    move-result v0

    .line 34
    .local v0, "index":I
    const/4 v2, -0x1

    .local v2, "position":I
    move v1, v0

    .line 35
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    if-lez v1, :cond_0

    .line 36
    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    move v2, v0

    .line 41
    :cond_0
    return v2

    :cond_1
    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0
.end method

.method protected findViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lio/rong/imkit/widget/adapter/BaseAdapter;, "Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lio/rong/imkit/widget/adapter/BaseAdapter;, "Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/rong/imkit/widget/adapter/BaseAdapter;, "Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 100
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 103
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 109
    .local p0, "this":Lio/rong/imkit/widget/adapter/BaseAdapter;, "Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    if-eqz p2, :cond_0

    .line 110
    move-object v0, p2

    .line 114
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/adapter/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lio/rong/imkit/widget/adapter/BaseAdapter;->bindView(Landroid/view/View;ILjava/lang/Object;)V

    .line 115
    return-object v0

    .line 112
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p3}, Lio/rong/imkit/widget/adapter/BaseAdapter;->newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method protected abstract newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public remove(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 76
    .local p0, "this":Lio/rong/imkit/widget/adapter/BaseAdapter;, "Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lio/rong/imkit/widget/adapter/BaseAdapter;, "Lio/rong/imkit/widget/adapter/BaseAdapter<TT;>;"
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    return-void
.end method
