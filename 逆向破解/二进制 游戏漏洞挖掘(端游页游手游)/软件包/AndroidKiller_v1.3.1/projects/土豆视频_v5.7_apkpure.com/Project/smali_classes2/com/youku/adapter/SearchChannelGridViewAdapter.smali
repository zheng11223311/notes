.class public Lcom/youku/adapter/SearchChannelGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchChannelGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field inflater:Landroid/view/LayoutInflater;

.field userPlayList:Lcom/youku/vo/UserPlayList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/vo/UserPlayList;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "userPlayList"    # Lcom/youku/vo/UserPlayList;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter;->a:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter;->userPlayList:Lcom/youku/vo/UserPlayList;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 39
    return-void
.end method

.method private initView(ILcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "holder"    # Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;

    .prologue
    .line 81
    invoke-static {p2}, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->access$000(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 82
    invoke-static {p2}, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->access$100(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 84
    invoke-static {p2}, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020371

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter;->a:Landroid/app/Activity;

    check-cast v0, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v0, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter;->userPlayList:Lcom/youku/vo/UserPlayList;

    iget-object v0, v0, Lcom/youku/vo/UserPlayList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/UserPlayItem;

    iget-object v0, v0, Lcom/youku/vo/UserPlayItem;->thumbnail:Ljava/lang/String;

    invoke-static {p2}, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->access$200(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 88
    invoke-static {p2}, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->access$300(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter;->userPlayList:Lcom/youku/vo/UserPlayList;

    iget-object v0, v0, Lcom/youku/vo/UserPlayList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/UserPlayItem;

    iget-object v0, v0, Lcom/youku/vo/UserPlayItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {p2}, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->access$400(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter;->userPlayList:Lcom/youku/vo/UserPlayList;

    iget-object v0, v0, Lcom/youku/vo/UserPlayList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/UserPlayItem;

    iget-object v0, v0, Lcom/youku/vo/UserPlayItem;->duration:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lcom/youku/util/Util;->formatDuration(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method private initViewHolder(Landroid/view/View;Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "holder"    # Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;

    .prologue
    .line 95
    const v0, 0x7f0c0cad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0}, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->access$002(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 96
    const v0, 0x7f0c0cae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->access$202(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 97
    const v0, 0x7f0c0caf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->access$302(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0c0cb0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->access$502(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0c0cb1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->access$402(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0c0cb2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p2, v0}, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->access$102(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 104
    const v0, 0x7f0c0cb3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p2, v0}, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->access$602(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;

    .line 105
    const v0, 0x7f0c0cb4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;->access$702(Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 108
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "p"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "holder":Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 60
    new-instance v0, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;-><init>(Lcom/youku/adapter/SearchChannelGridViewAdapter;)V

    .line 61
    .restart local v0    # "holder":Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;
    iget-object v1, p0, Lcom/youku/adapter/SearchChannelGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0302c7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    invoke-direct {p0, p2, v0}, Lcom/youku/adapter/SearchChannelGridViewAdapter;->initViewHolder(Landroid/view/View;Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;)V

    .line 67
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/youku/adapter/SearchChannelGridViewAdapter;->initView(ILcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;)V

    .line 68
    new-instance v1, Lcom/youku/adapter/SearchChannelGridViewAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/adapter/SearchChannelGridViewAdapter$1;-><init>(Lcom/youku/adapter/SearchChannelGridViewAdapter;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-object p2

    .line 65
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;
    check-cast v0, Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/youku/adapter/SearchChannelGridViewAdapter$ViewHolder;
    goto :goto_0
.end method
