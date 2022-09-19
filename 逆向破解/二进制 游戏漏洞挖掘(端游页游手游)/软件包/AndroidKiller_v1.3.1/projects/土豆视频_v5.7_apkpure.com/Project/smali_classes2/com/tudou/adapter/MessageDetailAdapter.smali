.class public Lcom/tudou/adapter/MessageDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "MessageDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final RECEIV_TYPE:I

.field private final SEND_TYPE:I

.field private activity:Landroid/app/Activity;

.field private imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private inflater:Landroid/view/LayoutInflater;

.field private msgManager:Lcom/youku/util/MessageManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/adapter/MessageDetailAdapter;->SEND_TYPE:I

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/tudou/adapter/MessageDetailAdapter;->RECEIV_TYPE:I

    .line 40
    iput-object p1, p0, Lcom/tudou/adapter/MessageDetailAdapter;->activity:Landroid/app/Activity;

    .line 41
    invoke-static {}, Lcom/youku/util/MessageManager;->getInstance()Lcom/youku/util/MessageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/MessageDetailAdapter;->msgManager:Lcom/youku/util/MessageManager;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/MessageDetailAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 43
    return-void
.end method

.method private initViewHolder(Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "viewholder"    # Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 129
    const v0, 0x7f0c09e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgLeft:Landroid/widget/RelativeLayout;

    .line 130
    const v0, 0x7f0c09e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgRight:Landroid/widget/RelativeLayout;

    .line 131
    const v0, 0x7f0c09e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgHeaderLeft:Landroid/widget/ImageView;

    .line 133
    const v0, 0x7f0c09e8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgItemTimeLeft:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0c09e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgItemContentLeft:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0c09e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgHeaderRight:Landroid/widget/ImageView;

    .line 139
    const v0, 0x7f0c09e3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgItemTimeRight:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0c09e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgItemContentRight:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0c09e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgStateLeft:Landroid/widget/ImageView;

    .line 144
    const v0, 0x7f0c09e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgStateRight:Landroid/widget/ImageView;

    .line 146
    return-void
.end method

.method private setUserImg(Landroid/widget/ImageView;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/ImageLoader;)V
    .locals 2
    .param p1, "img"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "imageWork"    # Lcom/nostra13/universalimageloader/core/ImageLoader;

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    new-instance v1, Lcom/tudou/adapter/MessageDetailAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/tudou/adapter/MessageDetailAdapter$1;-><init>(Lcom/tudou/adapter/MessageDetailAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {p3, p2, p1, v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 217
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Lcom/tudou/adapter/MessageDetailAdapter;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v1, v1, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 48
    .local v0, "count":I
    return v0
.end method

.method public getImagework()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tudou/adapter/MessageDetailAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tudou/adapter/MessageDetailAdapter;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v0, v0, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/MessageDetail$MessageItem;

    iget-object v0, v0, Lcom/youku/vo/MessageDetail$MessageItem;->senderId:Ljava/lang/String;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 78
    if-nez p2, :cond_0

    .line 79
    iget-object v1, p0, Lcom/tudou/adapter/MessageDetailAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03021b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 80
    new-instance v0, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/MessageDetailAdapter;)V

    .line 81
    .local v0, "holder":Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;
    invoke-direct {p0, v0, p2}, Lcom/tudou/adapter/MessageDetailAdapter;->initViewHolder(Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;Landroid/view/View;)V

    .line 82
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tudou/adapter/MessageDetailAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 117
    :goto_1
    return-object p2

    .line 84
    .end local v0    # "holder":Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;
    goto :goto_0

    .line 87
    :pswitch_0
    iget-object v1, v0, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 88
    iget-object v1, v0, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgRight:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 89
    iget-object v2, v0, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgHeaderLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tudou/adapter/MessageDetailAdapter;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v1, v1, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/MessageDetail$MessageItem;

    iget-object v1, v1, Lcom/youku/vo/MessageDetail$MessageItem;->senderpic:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/adapter/MessageDetailAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {p0, v2, v1, v3}, Lcom/tudou/adapter/MessageDetailAdapter;->setUserImg(Landroid/widget/ImageView;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    .line 91
    iget-object v2, v0, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgItemContentLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/adapter/MessageDetailAdapter;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v1, v1, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/MessageDetail$MessageItem;

    iget-object v1, v1, Lcom/youku/vo/MessageDetail$MessageItem;->content:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, v0, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgItemTimeLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/adapter/MessageDetailAdapter;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v1, v1, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/MessageDetail$MessageItem;

    iget-object v1, v1, Lcom/youku/vo/MessageDetail$MessageItem;->addTime:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/youku/util/Util;->formatMiliSecondtoTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const-string v2, "success"

    iget-object v1, p0, Lcom/tudou/adapter/MessageDetailAdapter;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v1, v1, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/MessageDetail$MessageItem;

    iget-object v1, v1, Lcom/youku/vo/MessageDetail$MessageItem;->sendState:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, v0, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgStateLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 99
    :cond_1
    iget-object v1, v0, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgStateLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 102
    :pswitch_1
    iget-object v1, v0, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 103
    iget-object v1, v0, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgRight:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    iget-object v2, v0, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgHeaderRight:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tudou/adapter/MessageDetailAdapter;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v1, v1, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/MessageDetail$MessageItem;

    iget-object v1, v1, Lcom/youku/vo/MessageDetail$MessageItem;->senderpic:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/adapter/MessageDetailAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {p0, v2, v1, v3}, Lcom/tudou/adapter/MessageDetailAdapter;->setUserImg(Landroid/widget/ImageView;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    .line 106
    iget-object v2, v0, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgItemContentRight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/adapter/MessageDetailAdapter;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v1, v1, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/MessageDetail$MessageItem;

    iget-object v1, v1, Lcom/youku/vo/MessageDetail$MessageItem;->content:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v2, v0, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgItemTimeRight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/adapter/MessageDetailAdapter;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v1, v1, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/MessageDetail$MessageItem;

    iget-object v1, v1, Lcom/youku/vo/MessageDetail$MessageItem;->addTime:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/youku/util/Util;->formatMiliSecondtoTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const-string v2, "success"

    iget-object v1, p0, Lcom/tudou/adapter/MessageDetailAdapter;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v1, v1, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/MessageDetail$MessageItem;

    iget-object v1, v1, Lcom/youku/vo/MessageDetail$MessageItem;->sendState:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, v0, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgStateRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 114
    :cond_2
    iget-object v1, v0, Lcom/tudou/adapter/MessageDetailAdapter$ViewHolder;->msgStateRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x2

    return v0
.end method

.method public setImagework(Lcom/nostra13/universalimageloader/core/ImageLoader;)V
    .locals 0
    .param p1, "imagework"    # Lcom/nostra13/universalimageloader/core/ImageLoader;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tudou/adapter/MessageDetailAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 126
    return-void
.end method
