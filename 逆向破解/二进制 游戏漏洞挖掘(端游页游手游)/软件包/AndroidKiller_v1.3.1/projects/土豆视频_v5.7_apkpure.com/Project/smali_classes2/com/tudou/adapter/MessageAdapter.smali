.class public Lcom/tudou/adapter/MessageAdapter;
.super Landroid/widget/BaseAdapter;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/MessageAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public activity:Landroid/app/Activity;

.field public checks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/MessageChecked;",
            ">;"
        }
    .end annotation
.end field

.field private imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private inflater:Landroid/view/LayoutInflater;

.field private isEdit:Z

.field public mHandler:Landroid/os/Handler;

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Message;",
            ">;"
        }
    .end annotation
.end field

.field private msgManager:Lcom/youku/util/MessageManager;

.field private msgSystem:Lcom/youku/vo/MessageSystem;

.field private type:Lcom/youku/util/MessageManager$Type;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/adapter/MessageAdapter;->isEdit:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/MessageAdapter;->messages:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/MessageAdapter;->checks:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Lcom/tudou/adapter/MessageAdapter;->activity:Landroid/app/Activity;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/MessageAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 56
    invoke-static {}, Lcom/youku/util/MessageManager;->getInstance()Lcom/youku/util/MessageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/MessageAdapter;->msgManager:Lcom/youku/util/MessageManager;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/MessageAdapter;)Lcom/youku/util/MessageManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/MessageAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tudou/adapter/MessageAdapter;->msgManager:Lcom/youku/util/MessageManager;

    return-object v0
.end method

.method private initViewHolder(Lcom/tudou/adapter/MessageAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "viewholder"    # Lcom/tudou/adapter/MessageAdapter$ViewHolder;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 226
    const v0, 0x7f0c044e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->messaegLayout:Landroid/widget/RelativeLayout;

    .line 228
    const v0, 0x7f0c09ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgContent:Landroid/widget/TextView;

    .line 229
    const v0, 0x7f0c09ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgTitle:Landroid/widget/TextView;

    .line 230
    const v0, 0x7f0c09ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgState:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f0c09ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->messagePrivateLayout:Landroid/widget/RelativeLayout;

    .line 233
    const v0, 0x7f0c09f0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgHeader:Landroid/widget/ImageView;

    .line 234
    const v0, 0x7f0c09f1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgName:Landroid/widget/TextView;

    .line 235
    const v0, 0x7f0c09f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgState1:Landroid/widget/TextView;

    .line 236
    const v0, 0x7f0c09f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgPrivate:Landroid/widget/TextView;

    .line 237
    const v0, 0x7f0c09df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgDelete:Landroid/widget/ImageView;

    .line 238
    const v0, 0x7f0c09f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->messageNew:Landroid/widget/ImageView;

    .line 239
    return-void
.end method

.method private setUserImg(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/tudou/adapter/MessageAdapter;->getImagework()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    new-instance v2, Lcom/tudou/adapter/MessageAdapter$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/tudou/adapter/MessageAdapter$2;-><init>(Lcom/tudou/adapter/MessageAdapter;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 324
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "count":I
    sget-object v1, Lcom/youku/util/MessageManager$Type;->SYSTEM:Lcom/youku/util/MessageManager$Type;

    iget-object v2, p0, Lcom/tudou/adapter/MessageAdapter;->type:Lcom/youku/util/MessageManager$Type;

    if-ne v1, v2, :cond_1

    .line 67
    iget-object v1, p0, Lcom/tudou/adapter/MessageAdapter;->msgSystem:Lcom/youku/vo/MessageSystem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/adapter/MessageAdapter;->msgSystem:Lcom/youku/vo/MessageSystem;

    iget-object v1, v1, Lcom/youku/vo/MessageSystem;->result:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/tudou/adapter/MessageAdapter;->msgSystem:Lcom/youku/vo/MessageSystem;

    iget-object v1, v1, Lcom/youku/vo/MessageSystem;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    sget-object v1, Lcom/youku/util/MessageManager$Type;->CHECKED:Lcom/youku/util/MessageManager$Type;

    iget-object v2, p0, Lcom/tudou/adapter/MessageAdapter;->type:Lcom/youku/util/MessageManager$Type;

    if-ne v1, v2, :cond_2

    .line 70
    iget-object v1, p0, Lcom/tudou/adapter/MessageAdapter;->checks:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/tudou/adapter/MessageAdapter;->checks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 72
    :cond_2
    sget-object v1, Lcom/youku/util/MessageManager$Type;->PRIVATE:Lcom/youku/util/MessageManager$Type;

    iget-object v2, p0, Lcom/tudou/adapter/MessageAdapter;->type:Lcom/youku/util/MessageManager$Type;

    if-ne v1, v2, :cond_0

    .line 73
    iget-object v1, p0, Lcom/tudou/adapter/MessageAdapter;->messages:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/tudou/adapter/MessageAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getImagework()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/tudou/adapter/MessageAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 86
    int-to-long v0, p1

    return-wide v0
.end method

.method public getType()Lcom/youku/util/MessageManager$Type;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/tudou/adapter/MessageAdapter;->type:Lcom/youku/util/MessageManager$Type;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 92
    if-nez p2, :cond_1

    .line 93
    iget-object v6, p0, Lcom/tudou/adapter/MessageAdapter;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03021d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 94
    new-instance v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/tudou/adapter/MessageAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/MessageAdapter;)V

    .line 95
    .local v1, "holder":Lcom/tudou/adapter/MessageAdapter$ViewHolder;
    invoke-direct {p0, v1, p2}, Lcom/tudou/adapter/MessageAdapter;->initViewHolder(Lcom/tudou/adapter/MessageAdapter$ViewHolder;Landroid/view/View;)V

    .line 96
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    :goto_0
    sget-object v6, Lcom/youku/util/MessageManager$Type;->SYSTEM:Lcom/youku/util/MessageManager$Type;

    iget-object v7, p0, Lcom/tudou/adapter/MessageAdapter;->type:Lcom/youku/util/MessageManager$Type;

    if-ne v6, v7, :cond_3

    .line 101
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->messaegLayout:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->messagePrivateLayout:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 103
    iget-object v6, p0, Lcom/tudou/adapter/MessageAdapter;->msgSystem:Lcom/youku/vo/MessageSystem;

    iget-object v6, v6, Lcom/youku/vo/MessageSystem;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/MessageSystem$Msg;

    iget-object v0, v6, Lcom/youku/vo/MessageSystem$Msg;->text_body:Ljava/lang/String;

    .line 104
    .local v0, "cString":Ljava/lang/String;
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgContent:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/youku/util/Util;->replaceBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v7, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tudou/adapter/MessageAdapter;->msgSystem:Lcom/youku/vo/MessageSystem;

    iget-object v6, v6, Lcom/youku/vo/MessageSystem;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/MessageSystem$Msg;

    iget-object v6, v6, Lcom/youku/vo/MessageSystem$Msg;->title:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v7, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgState:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tudou/adapter/MessageAdapter;->msgSystem:Lcom/youku/vo/MessageSystem;

    iget-object v6, v6, Lcom/youku/vo/MessageSystem;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/MessageSystem$Msg;

    iget-object v6, v6, Lcom/youku/vo/MessageSystem$Msg;->updateTime_str:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgDelete:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v6, p0, Lcom/tudou/adapter/MessageAdapter;->msgSystem:Lcom/youku/vo/MessageSystem;

    iget-object v6, v6, Lcom/youku/vo/MessageSystem;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/MessageSystem$Msg;

    iget-boolean v6, v6, Lcom/youku/vo/MessageSystem$Msg;->isReaded:Z

    if-eqz v6, :cond_2

    .line 112
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->messageNew:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    .end local v0    # "cString":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p2

    .line 98
    .end local v1    # "holder":Lcom/tudou/adapter/MessageAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/tudou/adapter/MessageAdapter$ViewHolder;
    goto :goto_0

    .line 114
    .restart local v0    # "cString":Ljava/lang/String;
    :cond_2
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->messageNew:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 115
    .end local v0    # "cString":Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/youku/util/MessageManager$Type;->CHECKED:Lcom/youku/util/MessageManager$Type;

    iget-object v7, p0, Lcom/tudou/adapter/MessageAdapter;->type:Lcom/youku/util/MessageManager$Type;

    if-ne v6, v7, :cond_5

    .line 116
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->messaegLayout:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 117
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->messagePrivateLayout:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 118
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgTitle:Landroid/widget/TextView;

    const-string v7, "\u5ba1\u6838\u901a\u77e5"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v6, p0, Lcom/tudou/adapter/MessageAdapter;->checks:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/MessageChecked;

    iget-object v5, v6, Lcom/youku/vo/MessageChecked;->createTime:Ljava/lang/String;

    .line 120
    .local v5, "time":Ljava/lang/String;
    iget-object v6, p0, Lcom/tudou/adapter/MessageAdapter;->checks:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/MessageChecked;

    iget-object v6, v6, Lcom/youku/vo/MessageChecked;->msg:Lcom/youku/vo/MessageChecked$CheckMsg;

    iget-object v4, v6, Lcom/youku/vo/MessageChecked$CheckMsg;->content:Ljava/lang/String;

    .line 122
    .local v4, "reason":Ljava/lang/String;
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgContent:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgState:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/youku/util/Util;->formatMiliSecondtoTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgDelete:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v6, p0, Lcom/tudou/adapter/MessageAdapter;->checks:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/MessageChecked;

    iget-boolean v6, v6, Lcom/youku/vo/MessageChecked;->isReaded:Z

    if-eqz v6, :cond_4

    .line 126
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->messageNew:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 128
    :cond_4
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->messageNew:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 129
    .end local v4    # "reason":Ljava/lang/String;
    .end local v5    # "time":Ljava/lang/String;
    :cond_5
    sget-object v6, Lcom/youku/util/MessageManager$Type;->PRIVATE:Lcom/youku/util/MessageManager$Type;

    iget-object v7, p0, Lcom/tudou/adapter/MessageAdapter;->type:Lcom/youku/util/MessageManager$Type;

    if-ne v6, v7, :cond_0

    .line 130
    iget-object v6, p0, Lcom/tudou/adapter/MessageAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/Message;

    .line 131
    .local v3, "priMsg":Lcom/youku/vo/Message;
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->messaegLayout:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 132
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->messagePrivateLayout:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 133
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgHeader:Landroid/widget/ImageView;

    const v7, 0x7f020618

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 134
    iget-object v6, v3, Lcom/youku/vo/Message;->pic:Ljava/lang/String;

    iget-object v7, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgHeader:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v7}, Lcom/tudou/adapter/MessageAdapter;->setUserImg(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 136
    iget-object v2, v3, Lcom/youku/vo/Message;->latestcontent:Ljava/lang/String;

    .line 137
    .local v2, "lastcontent":Ljava/lang/String;
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgPrivate:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/youku/util/Util;->replaceBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgName:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/youku/vo/Message;->nickname:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgState1:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/youku/vo/Message;->updateTime_str:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-boolean v6, v3, Lcom/youku/vo/Message;->isReaded:Z

    if-eqz v6, :cond_6

    .line 143
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->messageNew:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    :goto_2
    iget-boolean v6, p0, Lcom/tudou/adapter/MessageAdapter;->isEdit:Z

    if-eqz v6, :cond_7

    .line 147
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgDelete:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgDelete:Landroid/widget/ImageView;

    new-instance v7, Lcom/tudou/adapter/MessageAdapter$1;

    invoke-direct {v7, p0, v3}, Lcom/tudou/adapter/MessageAdapter$1;-><init>(Lcom/tudou/adapter/MessageAdapter;Lcom/youku/vo/Message;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 145
    :cond_6
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->messageNew:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 189
    :cond_7
    iget-object v6, v1, Lcom/tudou/adapter/MessageAdapter$ViewHolder;->msgDelete:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/tudou/adapter/MessageAdapter;->isEdit:Z

    return v0
.end method

.method public setEdit(Z)V
    .locals 0
    .param p1, "isEdit"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/tudou/adapter/MessageAdapter;->isEdit:Z

    .line 247
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tudou/adapter/MessageAdapter;->mHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method public setImagework(Lcom/nostra13/universalimageloader/core/ImageLoader;)V
    .locals 0
    .param p1, "imagework"    # Lcom/nostra13/universalimageloader/core/ImageLoader;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/tudou/adapter/MessageAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 223
    return-void
.end method

.method public setType(Lcom/youku/util/MessageManager$Type;)I
    .locals 2
    .param p1, "type"    # Lcom/youku/util/MessageManager$Type;

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "count":I
    iput-object p1, p0, Lcom/tudou/adapter/MessageAdapter;->type:Lcom/youku/util/MessageManager$Type;

    .line 201
    sget-object v1, Lcom/youku/util/MessageManager$Type;->SYSTEM:Lcom/youku/util/MessageManager$Type;

    if-ne v1, p1, :cond_1

    .line 202
    invoke-static {}, Lcom/youku/util/MessageManager;->getInstance()Lcom/youku/util/MessageManager;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/util/MessageManager;->msgSystem:Lcom/youku/vo/MessageSystem;

    iput-object v1, p0, Lcom/tudou/adapter/MessageAdapter;->msgSystem:Lcom/youku/vo/MessageSystem;

    .line 203
    iget-object v1, p0, Lcom/tudou/adapter/MessageAdapter;->msgSystem:Lcom/youku/vo/MessageSystem;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/tudou/adapter/MessageAdapter;->msgSystem:Lcom/youku/vo/MessageSystem;

    iget-object v1, v1, Lcom/youku/vo/MessageSystem;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    sget-object v1, Lcom/youku/util/MessageManager$Type;->CHECKED:Lcom/youku/util/MessageManager$Type;

    if-ne v1, p1, :cond_2

    .line 206
    invoke-static {}, Lcom/youku/util/MessageManager;->getInstance()Lcom/youku/util/MessageManager;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/util/MessageManager;->checks:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tudou/adapter/MessageAdapter;->checks:Ljava/util/ArrayList;

    .line 207
    iget-object v1, p0, Lcom/tudou/adapter/MessageAdapter;->checks:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/tudou/adapter/MessageAdapter;->checks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 209
    :cond_2
    sget-object v1, Lcom/youku/util/MessageManager$Type;->PRIVATE:Lcom/youku/util/MessageManager$Type;

    if-ne v1, p1, :cond_0

    .line 210
    invoke-static {}, Lcom/youku/util/MessageManager;->getInstance()Lcom/youku/util/MessageManager;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/util/MessageManager;->messages:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tudou/adapter/MessageAdapter;->messages:Ljava/util/ArrayList;

    .line 211
    iget-object v1, p0, Lcom/tudou/adapter/MessageAdapter;->messages:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/tudou/adapter/MessageAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method
