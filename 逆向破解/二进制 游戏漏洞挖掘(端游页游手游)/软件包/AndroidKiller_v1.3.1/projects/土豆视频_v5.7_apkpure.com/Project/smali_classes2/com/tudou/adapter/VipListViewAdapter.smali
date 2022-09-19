.class public Lcom/tudou/adapter/VipListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "VipListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
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

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/youku/ui/YoukuFragment;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
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
    .line 28
    .local p2, "listChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/ChannelFilterVideo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/tudou/adapter/VipListViewAdapter;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p0, p2}, Lcom/tudou/adapter/VipListViewAdapter;->setListChannels(Ljava/util/List;)V

    .line 31
    iput-object p3, p0, Lcom/tudou/adapter/VipListViewAdapter;->fragment:Lcom/youku/ui/YoukuFragment;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/VipListViewAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/VipListViewAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tudou/adapter/VipListViewAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/adapter/VipListViewAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/VipListViewAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tudou/adapter/VipListViewAdapter;->listChannels:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tudou/adapter/VipListViewAdapter;->listChannels:Ljava/util/List;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/VipListViewAdapter;->listChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/VipListViewAdapter;->getCountSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public getCountSize(I)I
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 43
    rem-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_0

    .line 44
    div-int/lit8 v0, p1, 0x3

    .line 46
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 56
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
    .line 183
    iget-object v0, p0, Lcom/tudou/adapter/VipListViewAdapter;->listChannels:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v11, 0x7f020880

    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 62
    mul-int/lit8 v2, p1, 0x3

    .line 63
    .local v2, "leftPosition":I
    mul-int/lit8 v5, p1, 0x3

    add-int/lit8 v0, v5, 0x1

    .line 64
    .local v0, "centrePosition":I
    mul-int/lit8 v5, p1, 0x3

    add-int/lit8 v3, v5, 0x2

    .line 68
    .local v3, "rightPosition":I
    if-nez p2, :cond_0

    .line 70
    iget-object v5, p0, Lcom/tudou/adapter/VipListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03020a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 72
    new-instance v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;

    invoke-direct {v4}, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;-><init>()V

    .line 74
    .local v4, "viewholder":Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;
    const v5, 0x7f0c02be

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->leftLayout:Landroid/widget/RelativeLayout;

    .line 75
    const v5, 0x7f0c02bf

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    .line 76
    const v5, 0x7f0c02c0

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 77
    const v5, 0x7f0c02c1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->leftStripeTop:Landroid/widget/TextView;

    .line 78
    const v5, 0x7f0c02c2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->leftTitleLine:Landroid/widget/TextView;

    .line 79
    const v5, 0x7f0c02c3

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->leftAlias:Landroid/widget/TextView;

    .line 81
    const v5, 0x7f0c02c4

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    .line 82
    const v5, 0x7f0c02c5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->centreThumbnail:Landroid/widget/ImageView;

    .line 83
    const v5, 0x7f0c02c6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 84
    const v5, 0x7f0c02c7

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->centreStripeTop:Landroid/widget/TextView;

    .line 85
    const v5, 0x7f0c02c8

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->centreTitleLine:Landroid/widget/TextView;

    .line 86
    const v5, 0x7f0c02c9

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->centreAlias:Landroid/widget/TextView;

    .line 88
    const v5, 0x7f0c02ca

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    .line 89
    const v5, 0x7f0c02cb

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    .line 90
    const v5, 0x7f0c02cc

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 91
    const v5, 0x7f0c02cd

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->rightStripeTop:Landroid/widget/TextView;

    .line 92
    const v5, 0x7f0c02ce

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->rightTitleLine:Landroid/widget/TextView;

    .line 93
    const v5, 0x7f0c02cf

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->rightAlias:Landroid/widget/TextView;

    .line 95
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    :goto_0
    iget-object v5, p0, Lcom/tudou/adapter/VipListViewAdapter;->listChannels:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelFilterVideo;

    .line 103
    .local v1, "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v5, p0, Lcom/tudou/adapter/VipListViewAdapter;->fragment:Lcom/youku/ui/YoukuFragment;

    invoke-virtual {v5}, Lcom/youku/ui/YoukuFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    iget-object v6, v1, Lcom/youku/vo/ChannelFilterVideo;->picUrl_200x300:Ljava/lang/String;

    iget-object v7, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->leftThumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 107
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->leftTitleLine:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/youku/vo/ChannelFilterVideo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->leftStripeTop:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/youku/vo/ChannelFilterVideo;->stripe_b_r:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->leftAlias:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->leftLayout:Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/tudou/adapter/VipListViewAdapter$1;

    invoke-direct {v6, p0, v2}, Lcom/tudou/adapter/VipListViewAdapter$1;-><init>(Lcom/tudou/adapter/VipListViewAdapter;I)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v5, p0, Lcom/tudou/adapter/VipListViewAdapter;->listChannels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v0, :cond_1

    .line 122
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 123
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 178
    :goto_1
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 179
    return-object p2

    .line 98
    .end local v1    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    .end local v4    # "viewholder":Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;

    .restart local v4    # "viewholder":Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;
    goto :goto_0

    .line 126
    .restart local v1    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    :cond_1
    iget-object v5, p0, Lcom/tudou/adapter/VipListViewAdapter;->listChannels:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    check-cast v1, Lcom/youku/vo/ChannelFilterVideo;

    .line 128
    .restart local v1    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-ne v5, v10, :cond_2

    .line 129
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 131
    :cond_2
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->centreThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object v5, p0, Lcom/tudou/adapter/VipListViewAdapter;->fragment:Lcom/youku/ui/YoukuFragment;

    invoke-virtual {v5}, Lcom/youku/ui/YoukuFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    iget-object v6, v1, Lcom/youku/vo/ChannelFilterVideo;->picUrl_200x300:Ljava/lang/String;

    iget-object v7, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->centreThumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 135
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->centreTitleLine:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/youku/vo/ChannelFilterVideo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->centreStripeTop:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/youku/vo/ChannelFilterVideo;->stripe_b_r:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->centreAlias:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/tudou/adapter/VipListViewAdapter$2;

    invoke-direct {v6, p0, v0}, Lcom/tudou/adapter/VipListViewAdapter$2;-><init>(Lcom/tudou/adapter/VipListViewAdapter;I)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v5, p0, Lcom/tudou/adapter/VipListViewAdapter;->listChannels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 150
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 153
    :cond_3
    iget-object v5, p0, Lcom/tudou/adapter/VipListViewAdapter;->listChannels:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    check-cast v1, Lcom/youku/vo/ChannelFilterVideo;

    .line 155
    .restart local v1    # "itemInfo":Lcom/youku/vo/ChannelFilterVideo;
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-ne v5, v10, :cond_4

    .line 156
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    :cond_4
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    iget-object v5, p0, Lcom/tudou/adapter/VipListViewAdapter;->fragment:Lcom/youku/ui/YoukuFragment;

    invoke-virtual {v5}, Lcom/youku/ui/YoukuFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    iget-object v6, v1, Lcom/youku/vo/ChannelFilterVideo;->picUrl_200x300:Ljava/lang/String;

    iget-object v7, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->rightThumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 162
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->rightTitleLine:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/youku/vo/ChannelFilterVideo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->rightStripeTop:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/youku/vo/ChannelFilterVideo;->stripe_b_r:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->rightAlias:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/youku/vo/ChannelFilterVideo;->sub_title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v5, v4, Lcom/tudou/adapter/VipListViewAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/tudou/adapter/VipListViewAdapter$3;

    invoke-direct {v6, p0, v3}, Lcom/tudou/adapter/VipListViewAdapter$3;-><init>(Lcom/tudou/adapter/VipListViewAdapter;I)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
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
    .line 187
    .local p1, "listChannels":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelFilterVideo;>;"
    iput-object p1, p0, Lcom/tudou/adapter/VipListViewAdapter;->listChannels:Ljava/util/List;

    .line 188
    return-void
.end method
