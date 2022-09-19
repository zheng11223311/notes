.class public Lcom/tudou/adapter/VipGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "VipGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/VipGridViewAdapter$ViewCache;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private fragment:Lcom/youku/ui/YoukuFragment;

.field private listVideos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/ChannelFilterVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/youku/ui/YoukuFragment;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "fragment"    # Lcom/youku/ui/YoukuFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/ChannelFilterVideo;",
            ">;",
            "Lcom/youku/ui/YoukuFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "listVideos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/ChannelFilterVideo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/tudou/adapter/VipGridViewAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/tudou/adapter/VipGridViewAdapter;->listVideos:Ljava/util/ArrayList;

    .line 27
    iput-object p3, p0, Lcom/tudou/adapter/VipGridViewAdapter;->fragment:Lcom/youku/ui/YoukuFragment;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/tudou/adapter/VipGridViewAdapter;->getListChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getListChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelFilterVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tudou/adapter/VipGridViewAdapter;->listVideos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    iget-object v2, p0, Lcom/tudou/adapter/VipGridViewAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    .local v0, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 51
    new-instance v1, Lcom/tudou/adapter/VipGridViewAdapter$ViewCache;

    invoke-direct {v1}, Lcom/tudou/adapter/VipGridViewAdapter$ViewCache;-><init>()V

    .line 57
    .local v1, "viewCache":Lcom/tudou/adapter/VipGridViewAdapter$ViewCache;
    :goto_0
    const v2, 0x7f030204

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    const v2, 0x7f0c0281

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/tudou/adapter/VipGridViewAdapter$ViewCache;->thumbnail:Landroid/widget/ImageView;

    .line 61
    iget-object v2, v1, Lcom/tudou/adapter/VipGridViewAdapter$ViewCache;->thumbnail:Landroid/widget/ImageView;

    const v3, 0x7f020880

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object v2, p0, Lcom/tudou/adapter/VipGridViewAdapter;->fragment:Lcom/youku/ui/YoukuFragment;

    invoke-virtual {v2}, Lcom/youku/ui/YoukuFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/adapter/VipGridViewAdapter;->listVideos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelFilterVideo;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideo;->picUrl_200x300:Ljava/lang/String;

    iget-object v4, v1, Lcom/tudou/adapter/VipGridViewAdapter$ViewCache;->thumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 66
    const v2, 0x7f0c028d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/VipGridViewAdapter$ViewCache;->stripe_top:Landroid/widget/TextView;

    .line 67
    const v2, 0x7f0c0283

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/VipGridViewAdapter$ViewCache;->title_1line:Landroid/widget/TextView;

    .line 69
    iget-object v3, v1, Lcom/tudou/adapter/VipGridViewAdapter$ViewCache;->title_1line:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/adapter/VipGridViewAdapter;->listVideos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelFilterVideo;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideo;->title:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v3, v1, Lcom/tudou/adapter/VipGridViewAdapter$ViewCache;->stripe_top:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/adapter/VipGridViewAdapter;->listVideos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelFilterVideo;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideo;->stripe_b_r:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v2, 0x7f0c0288

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/VipGridViewAdapter$ViewCache;->alias:Landroid/widget/TextView;

    .line 73
    iget-object v3, v1, Lcom/tudou/adapter/VipGridViewAdapter$ViewCache;->alias:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/adapter/VipGridViewAdapter;->listVideos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelFilterVideo;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v2, 0x7f0c09a4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/tudou/adapter/VipGridViewAdapter$ViewCache;->vip_jiaobiao:Landroid/widget/ImageView;

    .line 76
    iget-object v2, v1, Lcom/tudou/adapter/VipGridViewAdapter$ViewCache;->vip_jiaobiao:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_1
    return-object p2

    .line 53
    .end local v1    # "viewCache":Lcom/tudou/adapter/VipGridViewAdapter$ViewCache;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/VipGridViewAdapter$ViewCache;

    .restart local v1    # "viewCache":Lcom/tudou/adapter/VipGridViewAdapter$ViewCache;
    goto/16 :goto_0

    .line 80
    :catch_0
    move-exception v2

    goto :goto_1
.end method
