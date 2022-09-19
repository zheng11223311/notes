.class public Lcom/tudou/adapter/SlideAdapter;
.super Lcom/tudou/adapter/AbsAdapter;
.source "SlideAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/SlideAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tudou/adapter/AbsAdapter",
        "<",
        "Lcom/youku/vo/CardInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/CardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "cardInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    invoke-direct {p0}, Lcom/tudou/adapter/AbsAdapter;-><init>()V

    .line 29
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/SlideAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    iput-object p1, p0, Lcom/tudou/adapter/SlideAdapter;->mCurrentDatas:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tudou/adapter/SlideAdapter;->mCurrentDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/SlideAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 37
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
    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "holder":Lcom/tudou/adapter/SlideAdapter$Holder;
    if-nez p2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/tudou/adapter/SlideAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0302eb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 47
    new-instance v1, Lcom/tudou/adapter/SlideAdapter$Holder;

    .end local v1    # "holder":Lcom/tudou/adapter/SlideAdapter$Holder;
    invoke-direct {v1}, Lcom/tudou/adapter/SlideAdapter$Holder;-><init>()V

    .line 48
    .restart local v1    # "holder":Lcom/tudou/adapter/SlideAdapter$Holder;
    const v2, 0x7f0c0289

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/tudou/adapter/SlideAdapter$Holder;->poster:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    :goto_0
    iget-object v2, p0, Lcom/tudou/adapter/SlideAdapter;->mCurrentDatas:Ljava/util/List;

    iget-object v3, p0, Lcom/tudou/adapter/SlideAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardInfo;

    .line 54
    .local v0, "cardInfo":Lcom/youku/vo/CardInfo;
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/youku/vo/CardInfo;->image_800_450:Ljava/lang/String;

    iget-object v4, v1, Lcom/tudou/adapter/SlideAdapter$Holder;->poster:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 57
    return-object p2

    .line 51
    .end local v0    # "cardInfo":Lcom/youku/vo/CardInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/tudou/adapter/SlideAdapter$Holder;
    check-cast v1, Lcom/tudou/adapter/SlideAdapter$Holder;

    .restart local v1    # "holder":Lcom/tudou/adapter/SlideAdapter$Holder;
    goto :goto_0
.end method
