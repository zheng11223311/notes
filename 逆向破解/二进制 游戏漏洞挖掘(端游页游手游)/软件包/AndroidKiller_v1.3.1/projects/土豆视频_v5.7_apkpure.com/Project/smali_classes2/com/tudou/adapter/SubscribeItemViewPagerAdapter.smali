.class public Lcom/tudou/adapter/SubscribeItemViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SubscribeItemViewPagerAdapter.java"


# instance fields
.field public imageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/widget/YoukuImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/widget/YoukuImageView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "imageViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/widget/YoukuImageView;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeItemViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    .line 20
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 38
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeItemViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v0, p2, v1

    .line 40
    .local v0, "position":I
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 24
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeItemViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 27
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "arg1"    # I

    .prologue
    .line 44
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeItemViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v0, p2, v1

    .line 45
    .local v0, "position":I
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeItemViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/YoukuImageView;

    invoke-virtual {v1}, Lcom/youku/widget/YoukuImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeItemViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/YoukuImageView;

    invoke-virtual {v1}, Lcom/youku/widget/YoukuImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/tudou/adapter/SubscribeItemViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 50
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeItemViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/tudou/adapter/SubscribeItemViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 33
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
