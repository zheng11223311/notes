.class public Lcom/tudou/adapter/DiscoveryPosterAdapter;
.super Lcom/tudou/adapter/AbsAdapter;
.source "DiscoveryPosterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/DiscoveryPosterAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tudou/adapter/AbsAdapter",
        "<",
        "Lcom/youku/vo/DiscoveryItemPageHeadlineCell;",
        ">;"
    }
.end annotation


# static fields
.field public static final MSG_REFRESH:I = 0x1


# instance fields
.field private mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private videoInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Poster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tudou/ui/activity/BaseActivity;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Lcom/tudou/ui/activity/BaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tudou/ui/activity/BaseActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/DiscoveryItemPageHeadlineCell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "aDiscoveryItemPageHeadlineCells":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/DiscoveryItemPageHeadlineCell;>;"
    invoke-direct {p0}, Lcom/tudou/adapter/AbsAdapter;-><init>()V

    .line 36
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/DiscoveryPosterAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    iput-object p1, p0, Lcom/tudou/adapter/DiscoveryPosterAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 38
    iput-object p2, p0, Lcom/tudou/adapter/DiscoveryPosterAdapter;->mCurrentDatas:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tudou/adapter/DiscoveryPosterAdapter;->mCurrentDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/DiscoveryPosterAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/tudou/adapter/DiscoveryPosterAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300e9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    :cond_0
    new-instance v0, Lcom/tudou/adapter/DiscoveryPosterAdapter$Holder;

    invoke-direct {v0}, Lcom/tudou/adapter/DiscoveryPosterAdapter$Holder;-><init>()V

    .line 63
    .local v0, "holder":Lcom/tudou/adapter/DiscoveryPosterAdapter$Holder;
    const v2, 0x7f0c0289

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/tudou/adapter/DiscoveryPosterAdapter$Holder;->poster:Landroid/widget/ImageView;

    .line 65
    iget-object v2, p0, Lcom/tudou/adapter/DiscoveryPosterAdapter;->mCurrentDatas:Ljava/util/List;

    iget-object v3, p0, Lcom/tudou/adapter/DiscoveryPosterAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DiscoveryItemPageHeadlineCell;

    .line 67
    .local v1, "pageHeadlineCell":Lcom/youku/vo/DiscoveryItemPageHeadlineCell;
    iget-object v2, p0, Lcom/tudou/adapter/DiscoveryPosterAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/DiscoveryItemPageHeadlineCell;->image_800_262:Ljava/lang/String;

    iget-object v4, v0, Lcom/tudou/adapter/DiscoveryPosterAdapter$Holder;->poster:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 70
    return-object p2
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Poster;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/Poster;>;"
    iput-object p1, p0, Lcom/tudou/adapter/DiscoveryPosterAdapter;->videoInfos:Ljava/util/ArrayList;

    .line 45
    return-void
.end method
