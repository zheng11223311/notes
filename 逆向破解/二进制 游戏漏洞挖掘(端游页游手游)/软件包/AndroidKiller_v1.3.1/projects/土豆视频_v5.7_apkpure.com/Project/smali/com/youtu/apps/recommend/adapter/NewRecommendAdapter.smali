.class public Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;
.super Landroid/widget/BaseAdapter;
.source "NewRecommendAdapter.java"


# instance fields
.field private mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youtu/apps/recommend/vo/NewRecommendApplications;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mImageWorker:Lcom/youtu/apps/image/ImageResizer;

.field private mTabId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/youtu/apps/image/ImageResizer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "tabId"    # Ljava/lang/String;
    .param p4, "imageWorker"    # Lcom/youtu/apps/image/ImageResizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/youtu/apps/recommend/vo/NewRecommendApplications;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/youtu/apps/image/ImageResizer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "applications":Ljava/util/List;, "Ljava/util/List<Lcom/youtu/apps/recommend/vo/NewRecommendApplications;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;->mApplications:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;->mContext:Landroid/content/Context;

    .line 25
    iput-object p3, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;->mTabId:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;->mApplications:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;->mApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 34
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;->mApplications:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;->mApplications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 43
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
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    iget-object v2, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;->mApplications:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;->mApplications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 62
    :goto_0
    return-object v1

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;->mApplications:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youtu/apps/recommend/vo/NewRecommendApplications;

    .local v0, "info":Lcom/youtu/apps/recommend/vo/NewRecommendApplications;
    move-object v1, p2

    .line 57
    check-cast v1, Lcom/youtu/apps/widget/YoutuRecommendGridItem;

    .line 58
    .local v1, "itemView":Lcom/youtu/apps/widget/YoutuRecommendGridItem;
    if-nez v1, :cond_2

    .line 59
    new-instance v1, Lcom/youtu/apps/widget/YoutuRecommendGridItem;

    .end local v1    # "itemView":Lcom/youtu/apps/widget/YoutuRecommendGridItem;
    iget-object v2, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;->mTabId:Ljava/lang/String;

    iget-object v4, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    invoke-direct {v1, v2, v3, v4}, Lcom/youtu/apps/widget/YoutuRecommendGridItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/youtu/apps/image/ImageResizer;)V

    .line 61
    .restart local v1    # "itemView":Lcom/youtu/apps/widget/YoutuRecommendGridItem;
    :cond_2
    invoke-virtual {v1, v0}, Lcom/youtu/apps/widget/YoutuRecommendGridItem;->setRecommendItemInfo(Lcom/youtu/apps/recommend/vo/NewRecommendApplications;)V

    goto :goto_0
.end method
