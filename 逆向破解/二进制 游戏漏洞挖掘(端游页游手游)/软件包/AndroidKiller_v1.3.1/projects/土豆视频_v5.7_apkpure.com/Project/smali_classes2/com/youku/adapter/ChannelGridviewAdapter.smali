.class public Lcom/youku/adapter/ChannelGridviewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChannelGridviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private curChannelItem:Lcom/youku/vo/ChannelItem;

.field private fragment:Lcom/youku/ui/YoukuFragment;

.field private listChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelFilterVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Lcom/youku/ui/YoukuFragment;Lcom/youku/vo/ChannelItem;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p4, "fragment"    # Lcom/youku/ui/YoukuFragment;
    .param p5, "curChannelItem"    # Lcom/youku/vo/ChannelItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelFilterVideo;",
            ">;",
            "Lcom/youku/ui/YoukuFragment;",
            "Lcom/youku/vo/ChannelItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, "listChannels":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelFilterVideo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/youku/adapter/ChannelGridviewAdapter;->context:Landroid/content/Context;

    .line 30
    invoke-virtual {p0, p3}, Lcom/youku/adapter/ChannelGridviewAdapter;->setListChannels(Ljava/util/List;)V

    .line 31
    iput-object p4, p0, Lcom/youku/adapter/ChannelGridviewAdapter;->fragment:Lcom/youku/ui/YoukuFragment;

    .line 32
    iput-object p5, p0, Lcom/youku/adapter/ChannelGridviewAdapter;->curChannelItem:Lcom/youku/vo/ChannelItem;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/youku/adapter/ChannelGridviewAdapter;->getListChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
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
    .line 96
    iget-object v0, p0, Lcom/youku/adapter/ChannelGridviewAdapter;->listChannels:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0c0281

    .line 52
    iget-object v2, p0, Lcom/youku/adapter/ChannelGridviewAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    .local v0, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 56
    new-instance v1, Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;

    invoke-direct {v1}, Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;-><init>()V

    .line 61
    .local v1, "viewCache":Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;
    :goto_0
    iget-object v2, p0, Lcom/youku/adapter/ChannelGridviewAdapter;->curChannelItem:Lcom/youku/vo/ChannelItem;

    iget v2, v2, Lcom/youku/vo/ChannelItem;->display_flag:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 62
    const v2, 0x7f030207

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;->thumbnail:Landroid/widget/ImageView;

    .line 65
    iget-object v2, v1, Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;->thumbnail:Landroid/widget/ImageView;

    const v3, 0x7f020371

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v2, p0, Lcom/youku/adapter/ChannelGridviewAdapter;->fragment:Lcom/youku/ui/YoukuFragment;

    invoke-virtual {v2}, Lcom/youku/ui/YoukuFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v2, p0, Lcom/youku/adapter/ChannelGridviewAdapter;->listChannels:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelFilterVideo;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideo;->picUrl_448x252:Ljava/lang/String;

    iget-object v4, v1, Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;->thumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 78
    :goto_1
    const v2, 0x7f0c028d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;->stripe_top:Landroid/widget/TextView;

    .line 79
    const v2, 0x7f0c0283

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;->title_1line:Landroid/widget/TextView;

    .line 81
    iget-object v3, v1, Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;->title_1line:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youku/adapter/ChannelGridviewAdapter;->listChannels:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelFilterVideo;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideo;->title:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v3, v1, Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;->stripe_top:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youku/adapter/ChannelGridviewAdapter;->listChannels:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelFilterVideo;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideo;->stripe_b_r:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v2, 0x7f0c0288

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;->alias:Landroid/widget/TextView;

    .line 84
    iget-object v2, p0, Lcom/youku/adapter/ChannelGridviewAdapter;->curChannelItem:Lcom/youku/vo/ChannelItem;

    iget v2, v2, Lcom/youku/vo/ChannelItem;->display_flag:I

    div-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    .line 85
    iget-object v3, v1, Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;->alias:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u64ad\u653e:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/youku/adapter/ChannelGridviewAdapter;->listChannels:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelFilterVideo;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideo;->pv:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    return-object p2

    .line 58
    .end local v1    # "viewCache":Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;

    .restart local v1    # "viewCache":Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;
    goto/16 :goto_0

    .line 69
    :cond_1
    const v2, 0x7f030204

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 70
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;->thumbnail:Landroid/widget/ImageView;

    .line 73
    iget-object v2, v1, Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;->thumbnail:Landroid/widget/ImageView;

    const v3, 0x7f020880

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v2, p0, Lcom/youku/adapter/ChannelGridviewAdapter;->fragment:Lcom/youku/ui/YoukuFragment;

    invoke-virtual {v2}, Lcom/youku/ui/YoukuFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v2, p0, Lcom/youku/adapter/ChannelGridviewAdapter;->listChannels:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelFilterVideo;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideo;->picUrl_200x300:Ljava/lang/String;

    iget-object v4, v1, Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;->thumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto/16 :goto_1

    .line 87
    :cond_2
    iget-object v3, v1, Lcom/youku/adapter/ChannelGridviewAdapter$ViewCache;->alias:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youku/adapter/ChannelGridviewAdapter;->listChannels:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelFilterVideo;

    iget-object v2, v2, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public setListChannels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelFilterVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "listChannels":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelFilterVideo;>;"
    iput-object p1, p0, Lcom/youku/adapter/ChannelGridviewAdapter;->listChannels:Ljava/util/List;

    .line 101
    return-void
.end method
