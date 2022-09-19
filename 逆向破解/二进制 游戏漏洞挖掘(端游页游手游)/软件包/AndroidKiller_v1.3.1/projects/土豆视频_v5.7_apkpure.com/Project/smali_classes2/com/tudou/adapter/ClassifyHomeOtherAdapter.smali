.class public Lcom/tudou/adapter/ClassifyHomeOtherAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClassifyHomeOtherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/ClassifyHomeOtherAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mOtherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelListInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .param p1, "mContext"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelListInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "mOtherList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelListInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyHomeOtherAdapter;->mContext:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Lcom/tudou/adapter/ClassifyHomeOtherAdapter;->mOtherList:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeOtherAdapter;->mOtherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 39
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    if-nez p2, :cond_0

    .line 46
    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeOtherAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301a1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 47
    new-instance v0, Lcom/tudou/adapter/ClassifyHomeOtherAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/ClassifyHomeOtherAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/ClassifyHomeOtherAdapter;)V

    .line 48
    .local v0, "mViewHolder":Lcom/tudou/adapter/ClassifyHomeOtherAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    :goto_0
    return-object p2

    .line 50
    .end local v0    # "mViewHolder":Lcom/tudou/adapter/ClassifyHomeOtherAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/ClassifyHomeOtherAdapter$ViewHolder;

    .restart local v0    # "mViewHolder":Lcom/tudou/adapter/ClassifyHomeOtherAdapter$ViewHolder;
    goto :goto_0
.end method
