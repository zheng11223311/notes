.class public Lcom/tudou/adapter/SelectedDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectedDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SelectedDetailBean$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/SelectedDetailAdapter;->mData:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/tudou/adapter/SelectedDetailAdapter;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private setImg(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "posterImg"    # Landroid/widget/ImageView;
    .param p2, "cover_image"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 78
    const v2, 0x7f020371

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/SelectedDetailAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/tudou/ui/activity/SelectedDetailActivity;

    .line 83
    .local v0, "activity":Lcom/tudou/ui/activity/SelectedDetailActivity;
    invoke-virtual {v0}, Lcom/tudou/ui/activity/SelectedDetailActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    .line 84
    .local v1, "imageLoader":Lcom/nostra13/universalimageloader/core/ImageLoader;
    new-instance v2, Lcom/tudou/adapter/SelectedDetailAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/tudou/adapter/SelectedDetailAdapter$1;-><init>(Lcom/tudou/adapter/SelectedDetailAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v1, p2, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tudou/adapter/SelectedDetailAdapter;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/SelectedDetailAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/adapter/SelectedDetailAdapter;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/SelectedDetailAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SelectedDetailBean$Data;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0c00a8

    .line 55
    if-nez p2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/tudou/adapter/SelectedDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0302d1

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance v1, Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;

    invoke-direct {v1, p0, v5}, Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/SelectedDetailAdapter;Lcom/tudou/adapter/SelectedDetailAdapter$1;)V

    .line 58
    .local v1, "holder":Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;
    const v2, 0x7f0c0ccf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;->posterImg:Landroid/widget/ImageView;

    .line 59
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    .line 60
    const v2, 0x7f0c0cd1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;->durationTv:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f0c0cd0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;->descTv:Landroid/widget/TextView;

    .line 62
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    .line 63
    const v2, 0x7f0c0cd2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;->scoreTv1:Landroid/widget/TextView;

    .line 64
    const v2, 0x7f0c0cd3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;->scoreTv2:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    .end local v1    # "holder":Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;

    .line 68
    .restart local v1    # "holder":Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;
    iget-object v2, p0, Lcom/tudou/adapter/SelectedDetailAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SelectedDetailBean$Data;

    .line 69
    .local v0, "data":Lcom/youku/vo/SelectedDetailBean$Data;
    iget-object v2, v1, Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/SelectedDetailBean$Data;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, v1, Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;->descTv:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/SelectedDetailBean$Data;->sub_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, v1, Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;->scoreTv1:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/SelectedDetailBean$Data;->bottom_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, v1, Lcom/tudou/adapter/SelectedDetailAdapter$ViewHolder;->posterImg:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/youku/vo/SelectedDetailBean$Data;->image_448_252:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/tudou/adapter/SelectedDetailAdapter;->setImg(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 73
    return-object p2
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SelectedDetailBean$Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SelectedDetailBean$Data;>;"
    iput-object p1, p0, Lcom/tudou/adapter/SelectedDetailAdapter;->mData:Ljava/util/ArrayList;

    .line 36
    return-void
.end method
