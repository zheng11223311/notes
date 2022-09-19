.class public Lcom/tudou/adapter/MyTicketsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyTicketsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/MyTicketsListResult$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/MyTicketsListResult$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/MyTicketsListResult$Result;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/tudou/adapter/MyTicketsListAdapter;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/tudou/adapter/MyTicketsListAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method private initViewHolder(Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "viewHolder"    # Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 91
    const v0, 0x7f0c07e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;->access$002(Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0c07e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;->access$102(Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0c07e3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;->access$202(Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;

    .line 94
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tudou/adapter/MyTicketsListAdapter;->mDataSet:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/MyTicketsListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tudou/adapter/MyTicketsListAdapter;->mDataSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/tudou/adapter/MyTicketsListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    if-nez p2, :cond_0

    .line 54
    new-instance v0, Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/MyTicketsListAdapter;)V

    .line 55
    .local v0, "viewHolder":Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;
    iget-object v1, p0, Lcom/tudou/adapter/MyTicketsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301b3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 56
    invoke-direct {p0, v0, p2}, Lcom/tudou/adapter/MyTicketsListAdapter;->initViewHolder(Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;Landroid/view/View;)V

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5238\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/tudou/adapter/MyTicketsListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/MyTicketsListResult$Result;

    iget-object v1, v1, Lcom/youku/vo/MyTicketsListResult$Result;->code:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;->setTicketsNum(Ljava/lang/String;)V

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6709\u6548\u671f\u81f3\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/tudou/adapter/MyTicketsListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/MyTicketsListResult$Result;

    iget-object v1, v1, Lcom/youku/vo/MyTicketsListResult$Result;->endtime:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;->setTicketsDate(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/tudou/adapter/MyTicketsListAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/MyTicketsListResult$Result;

    iget-object v1, v1, Lcom/youku/vo/MyTicketsListResult$Result;->type:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const v1, 0x7f0208d9

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;->setTypeIcon(I)V

    .line 69
    :goto_1
    return-object p2

    .line 59
    .end local v0    # "viewHolder":Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;

    .restart local v0    # "viewHolder":Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;
    goto :goto_0

    .line 67
    :cond_1
    const v1, 0x7f0208d8

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/MyTicketsListAdapter$ViewHolder;->setTypeIcon(I)V

    goto :goto_1
.end method
