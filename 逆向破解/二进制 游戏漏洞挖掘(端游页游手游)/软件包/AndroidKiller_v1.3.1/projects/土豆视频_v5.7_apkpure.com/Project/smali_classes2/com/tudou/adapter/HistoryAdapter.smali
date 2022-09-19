.class public Lcom/tudou/adapter/HistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "HistoryAdapter.java"


# instance fields
.field public editable:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHistoryItemLayout:Lcom/tudou/adapter/HistoryItemLayout;

.field private mPlayedVideosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectVideosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/adapter/HistoryAdapter;->editable:Z

    .line 40
    iput-object p2, p0, Lcom/tudou/adapter/HistoryAdapter;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lcom/tudou/adapter/HistoryAdapter;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/HistoryAdapter;->mSelectVideosList:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p3, "mPlayedVideosList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/adapter/HistoryAdapter;->editable:Z

    .line 46
    iput-object p2, p0, Lcom/tudou/adapter/HistoryAdapter;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/tudou/adapter/HistoryAdapter;->mContext:Landroid/content/Context;

    .line 48
    iput-object p3, p0, Lcom/tudou/adapter/HistoryAdapter;->mPlayedVideosList:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/HistoryAdapter;->mSelectVideosList:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/HistoryAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/HistoryAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tudou/adapter/HistoryAdapter;->mSelectVideosList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/adapter/HistoryAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/HistoryAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tudou/adapter/HistoryAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addToList(Lcom/youku/vo/HistoryVideo;)V
    .locals 1
    .param p1, "item"    # Lcom/youku/vo/HistoryVideo;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/tudou/adapter/HistoryAdapter;->mSelectVideosList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    return-void
.end method

.method public clearPlayHistoryVideo()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/tudou/adapter/HistoryAdapter;->mPlayedVideosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 253
    return-void
.end method

.method public clearSelectList()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/tudou/adapter/HistoryAdapter;->mSelectVideosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 249
    return-void
.end method

.method public clearSelectVideo(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "selectedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideo;>;"
    iget-object v0, p0, Lcom/tudou/adapter/HistoryAdapter;->mPlayedVideosList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 245
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/adapter/HistoryAdapter;->mPlayedVideosList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/tudou/adapter/HistoryAdapter;->mPlayedVideosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEditable()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/tudou/adapter/HistoryAdapter;->editable:Z

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tudou/adapter/HistoryAdapter;->mPlayedVideosList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/HistoryAdapter;->mPlayedVideosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/tudou/adapter/HistoryAdapter;->mPlayedVideosList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemByIndex(I)Lcom/youku/vo/HistoryVideo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/tudou/adapter/HistoryAdapter;->mPlayedVideosList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/HistoryVideo;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 75
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPlayedHistorySize()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/tudou/adapter/HistoryAdapter;->mPlayedVideosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedItemSize()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/tudou/adapter/HistoryAdapter;->mSelectVideosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 81
    if-nez p2, :cond_2

    .line 82
    new-instance v4, Lcom/tudou/adapter/HistoryItemLayout;

    iget-object v5, p0, Lcom/tudou/adapter/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/tudou/adapter/HistoryItemLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tudou/adapter/HistoryAdapter;->mHistoryItemLayout:Lcom/tudou/adapter/HistoryItemLayout;

    .line 86
    .end local p2    # "convertView":Landroid/view/View;
    :goto_0
    const/4 v3, 0x0

    .line 88
    .local v3, "item":Lcom/youku/vo/HistoryVideo;
    :try_start_0
    iget-object v4, p0, Lcom/tudou/adapter/HistoryAdapter;->mPlayedVideosList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/youku/vo/HistoryVideo;

    move-object v3, v0

    .line 89
    iget-object v4, p0, Lcom/tudou/adapter/HistoryAdapter;->mHistoryItemLayout:Lcom/tudou/adapter/HistoryItemLayout;

    iget-object v4, v4, Lcom/tudou/adapter/HistoryItemLayout;->mThumbnail:Landroid/widget/ImageView;

    const v5, 0x7f020371

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v4, v3, Lcom/youku/vo/HistoryVideo;->picUrl_t:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 92
    new-instance v4, Lcom/tudou/adapter/HistoryItemLayout;

    iget-object v5, p0, Lcom/tudou/adapter/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/tudou/adapter/HistoryItemLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tudou/adapter/HistoryAdapter;->mHistoryItemLayout:Lcom/tudou/adapter/HistoryItemLayout;

    .line 94
    :cond_0
    iget-object v4, v3, Lcom/youku/vo/HistoryVideo;->picUrl_t:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 95
    iget-object v4, p0, Lcom/tudou/adapter/HistoryAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v4}, Lcom/tudou/ui/activity/PlayHistoryActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v5, v3, Lcom/youku/vo/HistoryVideo;->picUrl_t:Ljava/lang/String;

    iget-object v6, p0, Lcom/tudou/adapter/HistoryAdapter;->mHistoryItemLayout:Lcom/tudou/adapter/HistoryItemLayout;

    iget-object v6, v6, Lcom/tudou/adapter/HistoryItemLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 97
    :cond_1
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 98
    iget v4, v3, Lcom/youku/vo/HistoryVideo;->device:I

    if-nez v4, :cond_3

    .line 99
    iget-object v4, p0, Lcom/tudou/adapter/HistoryAdapter;->mHistoryItemLayout:Lcom/tudou/adapter/HistoryItemLayout;

    iget-object v4, v4, Lcom/tudou/adapter/HistoryItemLayout;->mDeviceType:Landroid/widget/ImageView;

    const v5, 0x7f020633

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    :goto_1
    iget-object v4, v3, Lcom/youku/vo/HistoryVideo;->title_new:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 107
    iget-object v4, p0, Lcom/tudou/adapter/HistoryAdapter;->mHistoryItemLayout:Lcom/tudou/adapter/HistoryItemLayout;

    iget-object v4, v4, Lcom/tudou/adapter/HistoryItemLayout;->mTitle:Landroid/widget/TextView;

    const-string v5, "\u65e0\u6807\u9898"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_2
    iget-object v4, p0, Lcom/tudou/adapter/HistoryAdapter;->mHistoryItemLayout:Lcom/tudou/adapter/HistoryItemLayout;

    iget-object v4, v4, Lcom/tudou/adapter/HistoryItemLayout;->mDuration:Landroid/widget/TextView;

    iget v5, v3, Lcom/youku/vo/HistoryVideo;->totalTime:I

    div-int/lit16 v5, v5, 0x3e8

    int-to-double v6, v5

    invoke-static {v6, v7}, Lcom/youku/util/Util;->formatTime(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v3}, Lcom/youku/vo/HistoryVideo;->getIsPlaytEnd()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 114
    iget-object v4, p0, Lcom/tudou/adapter/HistoryAdapter;->mHistoryItemLayout:Lcom/tudou/adapter/HistoryItemLayout;

    iget-object v4, v4, Lcom/tudou/adapter/HistoryItemLayout;->mPlayPoint:Landroid/widget/TextView;

    const-string v5, "\u5df2\u64ad\u653e\u5b8c"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_3
    iget-object v4, p0, Lcom/tudou/adapter/HistoryAdapter;->mHistoryItemLayout:Lcom/tudou/adapter/HistoryItemLayout;

    iget-object v4, v4, Lcom/tudou/adapter/HistoryItemLayout;->mPlayedDate:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/youku/vo/HistoryVideo;->view_at:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v4, p0, Lcom/tudou/adapter/HistoryAdapter;->mHistoryItemLayout:Lcom/tudou/adapter/HistoryItemLayout;

    invoke-virtual {p0}, Lcom/tudou/adapter/HistoryAdapter;->getEditable()Z

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/tudou/adapter/HistoryItemLayout;->changeState(ZLcom/youku/vo/HistoryVideo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_4
    iget-object v4, p0, Lcom/tudou/adapter/HistoryAdapter;->mHistoryItemLayout:Lcom/tudou/adapter/HistoryItemLayout;

    return-object v4

    .line 84
    .end local v3    # "item":Lcom/youku/vo/HistoryVideo;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    check-cast p2, Lcom/tudou/adapter/HistoryItemLayout;

    .end local p2    # "convertView":Landroid/view/View;
    iput-object p2, p0, Lcom/tudou/adapter/HistoryAdapter;->mHistoryItemLayout:Lcom/tudou/adapter/HistoryItemLayout;

    goto/16 :goto_0

    .line 101
    .restart local v3    # "item":Lcom/youku/vo/HistoryVideo;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/tudou/adapter/HistoryAdapter;->mHistoryItemLayout:Lcom/tudou/adapter/HistoryItemLayout;

    iget-object v4, v4, Lcom/tudou/adapter/HistoryItemLayout;->mDeviceType:Landroid/widget/ImageView;

    const v5, 0x7f020636

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 120
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 103
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/tudou/adapter/HistoryAdapter;->mHistoryItemLayout:Lcom/tudou/adapter/HistoryItemLayout;

    iget-object v4, v4, Lcom/tudou/adapter/HistoryItemLayout;->mDeviceType:Landroid/widget/ImageView;

    const v5, 0x7f020636

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 109
    :cond_5
    iget-object v4, p0, Lcom/tudou/adapter/HistoryAdapter;->mHistoryItemLayout:Lcom/tudou/adapter/HistoryItemLayout;

    iget-object v4, v4, Lcom/tudou/adapter/HistoryItemLayout;->mTitle:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/youku/vo/HistoryVideo;->title_new:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 116
    :cond_6
    iget-object v4, p0, Lcom/tudou/adapter/HistoryAdapter;->mHistoryItemLayout:Lcom/tudou/adapter/HistoryItemLayout;

    iget-object v4, v4, Lcom/tudou/adapter/HistoryItemLayout;->mPlayPoint:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u89c2\u770b\u81f3 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/youku/vo/HistoryVideo;->lvt:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Lcom/youku/util/Util;->formatTime(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public isContainItem(Lcom/youku/vo/HistoryVideo;)Z
    .locals 1
    .param p1, "item"    # Lcom/youku/vo/HistoryVideo;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/tudou/adapter/HistoryAdapter;->mSelectVideosList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFromList(Lcom/youku/vo/HistoryVideo;)V
    .locals 1
    .param p1, "item"    # Lcom/youku/vo/HistoryVideo;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/tudou/adapter/HistoryAdapter;->mSelectVideosList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method public removePlayHistoryFromServer(ZI)V
    .locals 10
    .param p1, "isClear"    # Z
    .param p2, "currentItem"    # I

    .prologue
    const/4 v9, 0x1

    .line 136
    const-class v7, Lcom/youku/network/IHttpRequest;

    invoke-static {v7, v9}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/network/IHttpRequest;

    .line 137
    .local v2, "httpRequest":Lcom/youku/network/IHttpRequest;
    const/4 v4, 0x0

    .line 138
    .local v4, "operType":Ljava/lang/String;
    const/4 v6, 0x0

    .line 139
    .local v6, "videoIdArray":Ljava/lang/String;
    iget-object v7, p0, Lcom/tudou/adapter/HistoryAdapter;->mSelectVideosList:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/tudou/adapter/HistoryAdapter;->mPlayedVideosList:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 141
    const-string v4, "del"

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/tudou/adapter/HistoryAdapter;->mSelectVideosList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 144
    iget-object v7, p0, Lcom/tudou/adapter/HistoryAdapter;->mSelectVideosList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/HistoryVideo;

    iget-object v5, v7, Lcom/youku/vo/HistoryVideo;->itemCode:Ljava/lang/String;

    .line 145
    .local v5, "videoId":Ljava/lang/String;
    iget-object v7, p0, Lcom/tudou/adapter/HistoryAdapter;->mSelectVideosList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_0

    .line 146
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 151
    .end local v5    # "videoId":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 154
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    :cond_2
    new-instance v1, Lcom/youku/network/HttpIntent;

    invoke-static {v4, v6}, Lcom/youku/http/TudouURLContainer;->getUpdatePlayHistoryUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7, v9}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 155
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v7, Lcom/tudou/adapter/HistoryAdapter$1;

    invoke-direct {v7, p0}, Lcom/tudou/adapter/HistoryAdapter$1;-><init>(Lcom/tudou/adapter/HistoryAdapter;)V

    invoke-interface {v2, v1, v7}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 169
    return-void
.end method

.method public removePlayHitoryFromLocal(ZI)V
    .locals 5
    .param p1, "isClear"    # Z
    .param p2, "currentItem"    # I

    .prologue
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v3, p0, Lcom/tudou/adapter/HistoryAdapter;->mSelectVideosList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 178
    iget-object v3, p0, Lcom/tudou/adapter/HistoryAdapter;->mSelectVideosList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/HistoryVideo;

    .line 179
    .local v2, "temp":Lcom/youku/vo/HistoryVideo;
    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v3, v2, Lcom/youku/vo/HistoryVideo;->itemCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    if-nez v0, :cond_0

    .line 182
    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 184
    :cond_0
    const-string v3, "\', "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 186
    .end local v2    # "temp":Lcom/youku/vo/HistoryVideo;
    :cond_1
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/data/SQLiteManagerTudou;->deletePlayHistoryByVids(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/tudou/adapter/HistoryAdapter;->clearSelectList()V

    .line 189
    iget-object v3, p0, Lcom/tudou/adapter/HistoryAdapter;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2721

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 190
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "mPlayedVideosList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideo;>;"
    iput-object p1, p0, Lcom/tudou/adapter/HistoryAdapter;->mPlayedVideosList:Ljava/util/ArrayList;

    .line 71
    return-void
.end method

.method public setEditable(Z)V
    .locals 3
    .param p1, "editable"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/tudou/adapter/HistoryAdapter;->editable:Z

    .line 194
    if-eqz p1, :cond_0

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tudou/adapter/HistoryAdapter;->mPlayedVideosList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/tudou/adapter/HistoryAdapter;->mPlayedVideosList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/HistoryVideo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/youku/vo/HistoryVideo;->isEdit:Z

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/tudou/adapter/HistoryAdapter;->mPlayedVideosList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/tudou/adapter/HistoryAdapter;->mPlayedVideosList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/HistoryVideo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/youku/vo/HistoryVideo;->isChecked:Z

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/adapter/HistoryAdapter;->clearSelectList()V

    .line 204
    :cond_2
    invoke-virtual {p0}, Lcom/tudou/adapter/HistoryAdapter;->notifyDataSetChanged()V

    .line 205
    return-void
.end method
