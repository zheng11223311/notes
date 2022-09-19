.class public Lcom/tudou/adapter/SelectedListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/SelectedListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SelectedListBean$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/SelectedListAdapter;->mData:Ljava/util/ArrayList;

    .line 33
    iput-object p1, p0, Lcom/tudou/adapter/SelectedListAdapter;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private setImg(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "posterImg"    # Landroid/widget/ImageView;
    .param p2, "cover_image"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 75
    const v1, 0x7f02085d

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    .line 81
    .local v0, "imageLoader":Lcom/nostra13/universalimageloader/core/ImageLoader;
    new-instance v1, Lcom/tudou/adapter/SelectedListAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/tudou/adapter/SelectedListAdapter$1;-><init>(Lcom/tudou/adapter/SelectedListAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p2, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/adapter/SelectedListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/adapter/SelectedListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    if-nez p2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/tudou/adapter/SelectedListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0302d4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance v1, Lcom/tudou/adapter/SelectedListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/tudou/adapter/SelectedListAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/SelectedListAdapter;)V

    .line 60
    .local v1, "holder":Lcom/tudou/adapter/SelectedListAdapter$ViewHolder;
    const v2, 0x7f0c0ccf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/YoukuImageView;

    iput-object v2, v1, Lcom/tudou/adapter/SelectedListAdapter$ViewHolder;->posterImg:Lcom/youku/widget/YoukuImageView;

    .line 61
    const v2, 0x7f0c00a8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/SelectedListAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f0c0cd0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/SelectedListAdapter$ViewHolder;->descTv:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    .end local v1    # "holder":Lcom/tudou/adapter/SelectedListAdapter$ViewHolder;
    :cond_0
    iget-object v2, p0, Lcom/tudou/adapter/SelectedListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SelectedListBean$Data;

    .line 66
    .local v0, "data":Lcom/youku/vo/SelectedListBean$Data;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/SelectedListAdapter$ViewHolder;

    .line 67
    .restart local v1    # "holder":Lcom/tudou/adapter/SelectedListAdapter$ViewHolder;
    iget-object v2, v1, Lcom/tudou/adapter/SelectedListAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/SelectedListBean$Data;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v2, v1, Lcom/tudou/adapter/SelectedListAdapter$ViewHolder;->descTv:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/SelectedListBean$Data;->sub_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, v1, Lcom/tudou/adapter/SelectedListAdapter$ViewHolder;->posterImg:Lcom/youku/widget/YoukuImageView;

    iget-object v3, v0, Lcom/youku/vo/SelectedListBean$Data;->module_cover_image:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/tudou/adapter/SelectedListAdapter;->setImg(Landroid/widget/ImageView;Ljava/lang/String;)V

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
            "Lcom/youku/vo/SelectedListBean$Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SelectedListBean$Data;>;"
    iput-object p1, p0, Lcom/tudou/adapter/SelectedListAdapter;->mData:Ljava/util/ArrayList;

    .line 38
    return-void
.end method
