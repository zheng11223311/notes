.class public Lcom/tudou/adapter/ChannelSquearAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChannelSquearAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private channelSquareList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/DiscoveryChannelItem;",
            ">;"
        }
    .end annotation
.end field

.field private csContext:Lcom/tudou/ui/activity/ChannelSquareActivity;

.field public loginItem:Lcom/youku/vo/DiscoveryChannelItem;

.field private mBtnSubscribe:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mTagText:Ljava/lang/String;

.field private tList:Lcom/tudou/adapter/TabsLinkedList;


# direct methods
.method public constructor <init>(Lcom/tudou/ui/activity/ChannelSquareActivity;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Lcom/tudou/ui/activity/ChannelSquareActivity;
    .param p3, "mHandler"    # Landroid/os/Handler;
    .param p4, "tagText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tudou/ui/activity/ChannelSquareActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/DiscoveryChannelItem;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "disItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/DiscoveryChannelItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    new-instance v0, Lcom/tudou/adapter/TabsLinkedList;

    invoke-direct {v0}, Lcom/tudou/adapter/TabsLinkedList;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/ChannelSquearAdapter;->tList:Lcom/tudou/adapter/TabsLinkedList;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/adapter/ChannelSquearAdapter;->loginItem:Lcom/youku/vo/DiscoveryChannelItem;

    .line 62
    iput-object p1, p0, Lcom/tudou/adapter/ChannelSquearAdapter;->csContext:Lcom/tudou/ui/activity/ChannelSquareActivity;

    .line 64
    iput-object p2, p0, Lcom/tudou/adapter/ChannelSquearAdapter;->channelSquareList:Ljava/util/ArrayList;

    .line 66
    iput-object p3, p0, Lcom/tudou/adapter/ChannelSquearAdapter;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p4, p0, Lcom/tudou/adapter/ChannelSquearAdapter;->mTagText:Ljava/lang/String;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/ChannelSquearAdapter;)Lcom/tudou/ui/activity/ChannelSquareActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/ChannelSquearAdapter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/adapter/ChannelSquearAdapter;->csContext:Lcom/tudou/ui/activity/ChannelSquareActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/adapter/ChannelSquearAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/ChannelSquearAdapter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/adapter/ChannelSquearAdapter;->mTagText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/adapter/ChannelSquearAdapter;Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;Lcom/youku/vo/DiscoveryChannelItem;Landroid/widget/ListView;Landroid/widget/ImageView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/ChannelSquearAdapter;
    .param p1, "x1"    # Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;
    .param p2, "x2"    # Lcom/youku/vo/DiscoveryChannelItem;
    .param p3, "x3"    # Landroid/widget/ListView;
    .param p4, "x4"    # Landroid/widget/ImageView;
    .param p5, "x5"    # Z

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/tudou/adapter/ChannelSquearAdapter;->setSubIcon(Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;Lcom/youku/vo/DiscoveryChannelItem;Landroid/widget/ListView;Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/adapter/ChannelSquearAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/ChannelSquearAdapter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/adapter/ChannelSquearAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private attentionLogin(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 458
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 459
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 460
    const-string v1, "TAG"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    const/16 v1, 0x7d0

    const v2, 0x7f040005

    const v3, 0x7f040004

    invoke-static {p1, v0, v1, v2, v3}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;III)V

    .line 463
    return-void
.end method

.method private initViewHolder(Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "viewholder"    # Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 466
    const v0, 0x7f0c0229

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 468
    const v0, 0x7f0c07c8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    .line 469
    const v0, 0x7f0c07c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->channelName:Landroid/widget/TextView;

    .line 470
    const v0, 0x7f0c07c6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->channelDiscription:Landroid/widget/TextView;

    .line 472
    const v0, 0x7f0c07c7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->channelInfo:Landroid/widget/TextView;

    .line 473
    const v0, 0x7f0c058d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->progressIcon:Landroid/widget/ProgressBar;

    .line 475
    const v0, 0x7f0c043f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->imgV:Landroid/widget/ImageView;

    .line 476
    return-void
.end method

.method private setSubIcon(Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;Lcom/youku/vo/DiscoveryChannelItem;Landroid/widget/ListView;Landroid/widget/ImageView;Z)V
    .locals 8
    .param p1, "viewholder"    # Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;
    .param p2, "dcItem"    # Lcom/youku/vo/DiscoveryChannelItem;
    .param p3, "aListView"    # Landroid/widget/ListView;
    .param p4, "aImage"    # Landroid/widget/ImageView;
    .param p5, "isSubed"    # Z

    .prologue
    const v7, 0x7f020851

    const v6, 0x7f0201eb

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 424
    iget v2, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->userId:I

    iget v3, p2, Lcom/youku/vo/DiscoveryChannelItem;->id:I

    if-eq v2, v3, :cond_4

    .line 425
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 426
    invoke-virtual {p3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;

    .line 427
    .local v1, "vhTemp":Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;
    if-nez v1, :cond_1

    .line 454
    .end local v0    # "i":I
    .end local v1    # "vhTemp":Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;
    :cond_0
    :goto_1
    return-void

    .line 430
    .restart local v0    # "i":I
    .restart local v1    # "vhTemp":Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;
    :cond_1
    iget v2, v1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->userId:I

    iget v3, p2, Lcom/youku/vo/DiscoveryChannelItem;->id:I

    if-ne v2, v3, :cond_2

    .line 431
    iget-object v2, v1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->progressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 433
    if-eqz p5, :cond_3

    .line 434
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 438
    :goto_2
    iget-object v2, v1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->progressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 440
    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_3
    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 445
    .end local v0    # "i":I
    .end local v1    # "vhTemp":Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;
    :cond_4
    if-eqz p5, :cond_5

    .line 446
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 450
    :goto_3
    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    iget-object v2, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->progressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 448
    :cond_5
    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method private setViewHolderData(Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;ILandroid/widget/ListView;)V
    .locals 8
    .param p1, "viewholder"    # Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "aListView"    # Landroid/widget/ListView;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 158
    iget-object v2, p0, Lcom/tudou/adapter/ChannelSquearAdapter;->channelSquareList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DiscoveryChannelItem;

    .line 159
    .local v0, "dcItem":Lcom/youku/vo/DiscoveryChannelItem;
    iget-boolean v2, v0, Lcom/youku/vo/DiscoveryChannelItem;->isVuser:Z

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->imgV:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    :goto_0
    iget-object v2, p0, Lcom/tudou/adapter/ChannelSquearAdapter;->csContext:Lcom/tudou/ui/activity/ChannelSquareActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/ChannelSquareActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/youku/vo/DiscoveryChannelItem;->pic:Ljava/lang/String;

    iget-object v4, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 200
    iget-object v2, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->channelName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/DiscoveryChannelItem;->nick:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v2, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->channelDiscription:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/DiscoveryChannelItem;->about_myself:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v1, "info":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/youku/vo/DiscoveryChannelItem;->video_count:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e2a\u89c6\u9891 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/youku/vo/DiscoveryChannelItem;->subed_count:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4eba\u8ba2\u9605"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v2, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->channelInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget v2, v0, Lcom/youku/vo/DiscoveryChannelItem;->id:I

    iput v2, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->userId:I

    .line 224
    iget-boolean v2, v0, Lcom/youku/vo/DiscoveryChannelItem;->isRunning:Z

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->progressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 226
    iget-object v2, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    :goto_1
    iget-object v2, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->progressIcon:Landroid/widget/ProgressBar;

    new-instance v3, Lcom/tudou/adapter/ChannelSquearAdapter$2;

    invoke-direct {v3, p0}, Lcom/tudou/adapter/ChannelSquearAdapter$2;-><init>(Lcom/tudou/adapter/ChannelSquearAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v2, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    new-instance v3, Lcom/tudou/adapter/ChannelSquearAdapter$3;

    invoke-direct {v3, p0, v0, p1, p3}, Lcom/tudou/adapter/ChannelSquearAdapter$3;-><init>(Lcom/tudou/adapter/ChannelSquearAdapter;Lcom/youku/vo/DiscoveryChannelItem;Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;Landroid/widget/ListView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    return-void

    .line 162
    .end local v1    # "info":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v2, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->imgV:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 228
    .restart local v1    # "info":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v2, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->progressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 229
    iget-object v2, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget v2, v0, Lcom/youku/vo/DiscoveryChannelItem;->sub_status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 231
    iget-object v2, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    const v3, 0x7f020851

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 234
    :cond_2
    iget-object v2, p1, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    const v3, 0x7f0201eb

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tudou/adapter/ChannelSquearAdapter;->channelSquareList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tudou/adapter/ChannelSquearAdapter;->channelSquareList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 85
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 92
    if-nez p2, :cond_0

    .line 94
    iget-object v3, p0, Lcom/tudou/adapter/ChannelSquearAdapter;->csContext:Lcom/tudou/ui/activity/ChannelSquareActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0301ac

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 96
    new-instance v2, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/ChannelSquearAdapter;)V

    .line 97
    .local v2, "viewholder":Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;
    invoke-direct {p0, v2, p2}, Lcom/tudou/adapter/ChannelSquearAdapter;->initViewHolder(Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;Landroid/view/View;)V

    .line 98
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    :goto_0
    check-cast p3, Landroid/widget/ListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-direct {p0, v2, p1, p3}, Lcom/tudou/adapter/ChannelSquearAdapter;->setViewHolderData(Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;ILandroid/widget/ListView;)V

    .line 103
    iget-object v3, p0, Lcom/tudou/adapter/ChannelSquearAdapter;->channelSquareList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DiscoveryChannelItem;

    .line 104
    .local v0, "dcItem":Lcom/youku/vo/DiscoveryChannelItem;
    new-instance v1, Lcom/tudou/adapter/ChannelSquearAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/tudou/adapter/ChannelSquearAdapter$1;-><init>(Lcom/tudou/adapter/ChannelSquearAdapter;Lcom/youku/vo/DiscoveryChannelItem;)V

    .line 144
    .local v1, "onClick":Landroid/view/View$OnClickListener;
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-object p2

    .line 100
    .end local v0    # "dcItem":Lcom/youku/vo/DiscoveryChannelItem;
    .end local v1    # "onClick":Landroid/view/View$OnClickListener;
    .end local v2    # "viewholder":Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;

    .restart local v2    # "viewholder":Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;
    goto :goto_0
.end method
