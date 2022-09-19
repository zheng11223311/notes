.class public Lcom/youku/adapter/CachingListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CachingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final MSG_REFRESH_PROGRESS:I = 0x2

.field private static final MSG_STATE_CHANGE:I = 0x309

.field private static tag:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private deleteList:Lcom/youku/util/DeleteCachingItemList;

.field private downloadingList_Map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private downloadingList_show:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private editable:Z

.field private handler:Landroid/os/Handler;

.field private isInFolder:Z

.field private listView:Landroid/widget/ListView;

.field private loader:Lcom/tudou/service/download/AsyncImageLoader;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "CachingListAdapter"

    sput-object v0, Lcom/youku/adapter/CachingListAdapter;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/ListView;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p3, "listView"    # Landroid/widget/ListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;",
            "Landroid/widget/ListView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "downloadinfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .local p4, "downloadingList_Map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;>;"
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_show:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_Map:Ljava/util/HashMap;

    .line 66
    iput-boolean v1, p0, Lcom/youku/adapter/CachingListAdapter;->editable:Z

    .line 71
    iput-boolean v1, p0, Lcom/youku/adapter/CachingListAdapter;->isInFolder:Z

    .line 76
    invoke-static {}, Lcom/youku/util/DeleteCachingItemList;->getInstance()Lcom/youku/util/DeleteCachingItemList;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->deleteList:Lcom/youku/util/DeleteCachingItemList;

    .line 500
    new-instance v0, Lcom/youku/adapter/CachingListAdapter$1;

    invoke-direct {v0, p0}, Lcom/youku/adapter/CachingListAdapter$1;-><init>(Lcom/youku/adapter/CachingListAdapter;)V

    iput-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->handler:Landroid/os/Handler;

    .line 80
    if-nez p1, :cond_2

    .line 81
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->context:Landroid/content/Context;

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 87
    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_show:Ljava/util/ArrayList;

    .line 90
    :cond_0
    if-eqz p4, :cond_1

    .line 91
    iput-object p4, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_Map:Ljava/util/HashMap;

    .line 92
    :cond_1
    iput-object p3, p0, Lcom/youku/adapter/CachingListAdapter;->listView:Landroid/widget/ListView;

    .line 93
    invoke-static {}, Lcom/tudou/service/download/AsyncImageLoader;->getInstance()Lcom/tudou/service/download/AsyncImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->loader:Lcom/tudou/service/download/AsyncImageLoader;

    .line 94
    return-void

    .line 83
    :cond_2
    iput-object p1, p0, Lcom/youku/adapter/CachingListAdapter;->context:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic access$1100(Lcom/youku/adapter/CachingListAdapter;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/youku/adapter/CachingListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/youku/adapter/CachingListAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/youku/adapter/CachingListAdapter;->isInFolder:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/youku/adapter/CachingListAdapter;Landroid/widget/TextView;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/CachingListAdapter;->showDeIcon(Landroid/widget/TextView;Lcom/tudou/service/download/DownloadInfo;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/youku/adapter/CachingListAdapter;Lcom/tudou/service/download/DownloadInfo;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/youku/widget/RoundProgressBar;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/CachingListAdapter;
    .param p1, "x1"    # Lcom/tudou/service/download/DownloadInfo;
    .param p2, "x2"    # Landroid/widget/ImageView;
    .param p3, "x3"    # Landroid/widget/TextView;
    .param p4, "x4"    # Lcom/youku/widget/RoundProgressBar;
    .param p5, "x5"    # Landroid/widget/TextView;

    .prologue
    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/youku/adapter/CachingListAdapter;->setDownloadingChange(Lcom/tudou/service/download/DownloadInfo;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/youku/widget/RoundProgressBar;Landroid/widget/TextView;)V

    return-void
.end method

.method private cacheInfomation(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "showid"    # Ljava/lang/String;

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, "pause":I
    const/4 v3, 0x0

    .line 256
    .local v3, "total":I
    iget-object v4, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_Map:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_Map:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_Map:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 258
    iget-object v4, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_Map:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 259
    .local v2, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 261
    const/4 v5, 0x3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v4}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v4

    if-ne v5, v4, :cond_0

    .line 262
    add-int/lit8 v1, v1, 0x1

    .line 260
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "i":I
    .end local v2    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u5171"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u4e2a\u89c6\u9891  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_2

    const-string v4, ""

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\u4e2a\u6682\u505c"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private initViewHolder(Landroid/view/View;)Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 616
    new-instance v0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;-><init>(Lcom/youku/adapter/CachingListAdapter;)V

    .line 617
    .local v0, "viewHolder":Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    const v1, 0x7f0c06d2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$702(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 619
    const v1, 0x7f0c06d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$802(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 620
    invoke-static {v0}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$800(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 621
    const v1, 0x7f0c06de

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$402(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 623
    const v1, 0x7f0c06e4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/RoundProgressBar;

    invoke-static {v0, v1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$502(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Lcom/youku/widget/RoundProgressBar;)Lcom/youku/widget/RoundProgressBar;

    .line 625
    const v1, 0x7f0c06d0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$302(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 628
    const v1, 0x7f0c06e5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$202(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 630
    const v1, 0x7f0c06e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$602(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 632
    const v1, 0x7f0c06e1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$102(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 633
    const v1, 0x7f0c06e0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$002(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 634
    const v1, 0x7f0c06d3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$902(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 635
    const v1, 0x7f0c06e2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$1002(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 636
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 637
    return-object v0
.end method

.method private setCacheItemDefaultImg(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 7
    .param p1, "viewHolder"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->loader:Lcom/tudou/service/download/AsyncImageLoader;

    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$700(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p2, Lcom/tudou/service/download/DownloadInfo;->imgUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "1.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "cache"

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/service/download/AsyncImageLoader;->loadDrawable(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 205
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_0

    .line 206
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$700(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020371

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$700(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setCacheItemView(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 214
    iget-boolean v1, p0, Lcom/youku/adapter/CachingListAdapter;->isInFolder:Z

    if-eqz v1, :cond_2

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/CachingListAdapter;->setStateView(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V

    .line 217
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$400(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/youku/adapter/CachingListAdapter;->showDeIcon(Landroid/widget/TextView;Lcom/tudou/service/download/DownloadInfo;)V

    .line 218
    if-eqz p2, :cond_0

    .line 219
    iget-object v1, p2, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$800(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p2, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$800(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p2, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->isSeries()Z

    move-result v1

    if-nez v1, :cond_3

    .line 227
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$400(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/youku/adapter/CachingListAdapter;->showDeIcon(Landroid/widget/TextView;Lcom/tudou/service/download/DownloadInfo;)V

    .line 228
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$900(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$800(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/CachingListAdapter;->setStateView(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V

    goto :goto_0

    .line 232
    :cond_3
    iget-object v1, p2, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/youku/adapter/CachingListAdapter;->cacheInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "albumState":Ljava/lang/String;
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$400(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$900(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v1, p2, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$800(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p2, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 238
    :cond_4
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$800(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p2, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setDownloadingChange(Lcom/tudou/service/download/DownloadInfo;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/youku/widget/RoundProgressBar;Landroid/widget/TextView;)V
    .locals 5
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .param p2, "statusImg"    # Landroid/widget/ImageView;
    .param p3, "speed"    # Landroid/widget/TextView;
    .param p4, "rProBar"    # Lcom/youku/widget/RoundProgressBar;
    .param p5, "cacheTxtStatue2"    # Landroid/widget/TextView;

    .prologue
    const v4, 0x7f020097

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 390
    if-eqz p2, :cond_0

    .line 391
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    :cond_0
    if-eqz p3, :cond_1

    .line 393
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    :cond_1
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 489
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 398
    :pswitch_1
    if-eqz p3, :cond_3

    .line 399
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d0103

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/tudou/service/download/DownloadInfo;->speed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    :cond_3
    if-eqz p5, :cond_4

    .line 404
    invoke-virtual {p5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    :cond_4
    if-eqz p2, :cond_5

    .line 407
    const v0, 0x7f020081

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 408
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    :cond_5
    if-eqz p4, :cond_2

    .line 411
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getProgress()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/youku/widget/RoundProgressBar;->setProgress(I)V

    .line 412
    invoke-virtual {p4, v2}, Lcom/youku/widget/RoundProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 416
    :pswitch_2
    if-eqz p3, :cond_6

    .line 417
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    :cond_6
    if-eqz p5, :cond_7

    .line 419
    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d0102

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    :cond_7
    if-eqz p2, :cond_8

    .line 426
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 427
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    :cond_8
    if-eqz p4, :cond_2

    .line 430
    invoke-virtual {p4, v3}, Lcom/youku/widget/RoundProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 433
    :pswitch_3
    if-eqz p3, :cond_9

    .line 434
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    :cond_9
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    .line 438
    :cond_a
    const v0, 0x7f020083

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 439
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getProgress()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/youku/widget/RoundProgressBar;->setProgress(I)V

    .line 440
    if-eqz p5, :cond_b

    .line 441
    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d0105

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    :cond_b
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    invoke-virtual {p4, v3}, Lcom/youku/widget/RoundProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 448
    :cond_c
    if-eqz p2, :cond_d

    .line 449
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 450
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    :cond_d
    if-eqz p4, :cond_e

    .line 453
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getProgress()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/youku/widget/RoundProgressBar;->setProgress(I)V

    .line 454
    invoke-virtual {p4, v3}, Lcom/youku/widget/RoundProgressBar;->setVisibility(I)V

    .line 456
    :cond_e
    if-eqz p5, :cond_2

    .line 457
    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d0111

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 468
    :pswitch_4
    if-eqz p2, :cond_f

    .line 469
    const v0, 0x7f0200a6

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 470
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    :cond_f
    if-eqz p4, :cond_10

    .line 473
    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getProgress()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/youku/widget/RoundProgressBar;->setProgress(I)V

    .line 474
    invoke-virtual {p4, v3}, Lcom/youku/widget/RoundProgressBar;->setVisibility(I)V

    .line 476
    :cond_10
    if-eqz p3, :cond_11

    .line 477
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    :cond_11
    if-eqz p5, :cond_2

    .line 479
    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0d0118

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private setDownloadingText(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 0
    .param p1, "viewHolder"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 300
    if-nez p2, :cond_0

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/CachingListAdapter;->setCacheItemDefaultImg(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/CachingListAdapter;->setCacheItemView(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V

    goto :goto_0
.end method

.method private setItemViewTag(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 194
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$200(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "speed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 195
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$300(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stateImageView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 196
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$400(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stateTextView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 197
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$500(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Lcom/youku/widget/RoundProgressBar;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "roundprogressbar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/RoundProgressBar;->setTag(Ljava/lang/Object;)V

    .line 198
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$600(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheTxtStatue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method private setOutAblumLevelGoneView(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;

    .prologue
    .line 308
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$1000(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 309
    return-void
.end method

.method private setStateView(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 7
    .param p1, "viewHolder"    # Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const v6, 0x7f0d0118

    const v2, 0x7f0200a6

    const v5, 0x7f020097

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 315
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$1000(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 316
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 383
    :goto_0
    return-void

    .line 318
    :pswitch_0
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$200(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$600(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$600(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/adapter/CachingListAdapter;->context:Landroid/content/Context;

    const v2, 0x7f0d0102

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$300(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 323
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$500(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Lcom/youku/widget/RoundProgressBar;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/RoundProgressBar;->setProgress(I)V

    .line 324
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$300(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$500(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Lcom/youku/widget/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/youku/widget/RoundProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 328
    :pswitch_1
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$200(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$600(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getExceptionId()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 333
    :cond_0
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$600(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/adapter/CachingListAdapter;->context:Landroid/content/Context;

    const v2, 0x7f0d0105

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$300(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 336
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$500(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Lcom/youku/widget/RoundProgressBar;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/RoundProgressBar;->setProgress(I)V

    .line 337
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$300(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$500(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Lcom/youku/widget/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/youku/widget/RoundProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 340
    :cond_1
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$600(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/adapter/CachingListAdapter;->context:Landroid/content/Context;

    const v2, 0x7f0d0111

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$300(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 343
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$500(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Lcom/youku/widget/RoundProgressBar;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/RoundProgressBar;->setProgress(I)V

    .line 344
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$300(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$500(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Lcom/youku/widget/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/youku/widget/RoundProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 351
    :pswitch_2
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$200(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$600(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$600(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/adapter/CachingListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$300(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 356
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$500(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Lcom/youku/widget/RoundProgressBar;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/RoundProgressBar;->setProgress(I)V

    .line 357
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$300(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$500(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Lcom/youku/widget/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/youku/widget/RoundProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 361
    :pswitch_3
    iget-boolean v0, p0, Lcom/youku/adapter/CachingListAdapter;->editable:Z

    if-eqz v0, :cond_2

    .line 362
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$300(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$300(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 364
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$500(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Lcom/youku/widget/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/youku/widget/RoundProgressBar;->setVisibility(I)V

    .line 365
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$200(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$600(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$600(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/adapter/CachingListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :goto_1
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$500(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Lcom/youku/widget/RoundProgressBar;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/RoundProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 370
    :cond_2
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$300(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$500(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Lcom/youku/widget/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/youku/widget/RoundProgressBar;->setVisibility(I)V

    .line 372
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$200(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$600(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$200(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/tudou/service/download/DownloadInfo;->speed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-static {p1}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$300(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 380
    :pswitch_4
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showDeIcon(Landroid/widget/TextView;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 1
    .param p1, "state"    # Landroid/widget/TextView;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 246
    sget-boolean v0, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/CachingListAdapter;->showHighEndIcon(Landroid/widget/TextView;Lcom/tudou/service/download/DownloadInfo;)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/CachingListAdapter;->showLowEndIcon(Landroid/widget/TextView;Lcom/tudou/service/download/DownloadInfo;)V

    goto :goto_0
.end method

.method private showHighEndIcon(Landroid/widget/TextView;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 8
    .param p1, "state"    # Landroid/widget/TextView;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 269
    const-string v0, ""

    .line 270
    .local v0, "distinct":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v1

    if-eq v3, v1, :cond_0

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v1

    if-eq v4, v1, :cond_0

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v1

    if-ne v6, v1, :cond_4

    .line 272
    :cond_0
    const-string/jumbo v0, "\u6807\u6e05 "

    .line 285
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_c

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_3
    return-void

    .line 273
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v2

    if-eq v1, v2, :cond_5

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v1

    if-ne v5, v1, :cond_6

    .line 274
    :cond_5
    const-string/jumbo v0, "\u9ad8\u6e05 "

    goto :goto_0

    .line 275
    :cond_6
    const/4 v1, 0x7

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 276
    const-string/jumbo v0, "\u8d85\u6e05 "

    goto :goto_0

    .line 277
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 278
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v1

    if-ne v1, v3, :cond_9

    .line 279
    :cond_8
    const-string/jumbo v0, "\u6807\u6e05 "

    goto :goto_0

    .line 280
    :cond_9
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v1

    if-ne v1, v4, :cond_a

    .line 281
    const-string/jumbo v0, "\u9ad8\u6e05 "

    goto :goto_0

    .line 282
    :cond_a
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v1

    if-eq v1, v5, :cond_b

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 283
    :cond_b
    const-string/jumbo v0, "\u8d85\u6e05 "

    goto :goto_0

    .line 286
    :cond_c
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v4

    long-to-float v1, v4

    invoke-static {v1}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private showLowEndIcon(Landroid/widget/TextView;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 4
    .param p1, "state"    # Landroid/widget/TextView;
    .param p2, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 290
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getFormto()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    if-eqz p1, :cond_1

    .line 292
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :cond_1
    return-void

    .line 292
    :cond_2
    invoke-virtual {p2}, Lcom/tudou/service/download/DownloadInfo;->getSize()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-static {v0}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_show:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIdByPos(Ljava/lang/String;)I
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v1, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_show:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    move v0, v2

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 151
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 140
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 157
    const/4 v3, 0x0

    .line 158
    .local v3, "viewHolder":Lcom/youku/adapter/CachingListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 159
    :try_start_0
    iget-object v4, p0, Lcom/youku/adapter/CachingListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030163

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 161
    invoke-direct {p0, p2}, Lcom/youku/adapter/CachingListAdapter;->initViewHolder(Landroid/view/View;)Lcom/youku/adapter/CachingListAdapter$ViewHolder;

    move-result-object v3

    .line 166
    :goto_0
    iget-object v4, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 167
    .local v2, "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-direct {p0, v3, v2}, Lcom/youku/adapter/CachingListAdapter;->setItemViewTag(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V

    .line 168
    invoke-direct {p0, v3, v2}, Lcom/youku/adapter/CachingListAdapter;->setDownloadingText(Lcom/youku/adapter/CachingListAdapter$ViewHolder;Lcom/tudou/service/download/DownloadInfo;)V

    .line 169
    iget-boolean v4, p0, Lcom/youku/adapter/CachingListAdapter;->editable:Z

    if-eqz v4, :cond_2

    .line 172
    invoke-static {v3}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$000(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object v4, p0, Lcom/youku/adapter/CachingListAdapter;->deleteList:Lcom/youku/util/DeleteCachingItemList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/youku/adapter/CachingListAdapter;->deleteList:Lcom/youku/util/DeleteCachingItemList;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/util/DeleteCachingItemList;->containsItem(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    invoke-static {v3}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$100(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f0207fe

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    invoke-static {v3}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$100(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    const-string v5, "delete"

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :goto_1
    move-object v1, p2

    .line 190
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local p2    # "convertView":Landroid/view/View;
    .local v1, "convertView":Landroid/view/View;
    :goto_2
    return-object v1

    .line 163
    .end local v1    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/youku/adapter/CachingListAdapter$ViewHolder;

    move-object v3, v0

    goto :goto_0

    .line 180
    .restart local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_1
    invoke-static {v3}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$100(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f0207ff

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    invoke-static {v3}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$100(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    const-string v5, "none"

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 188
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    :catch_0
    move-exception v4

    move-object v1, p2

    .line 190
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v1    # "convertView":Landroid/view/View;
    goto :goto_2

    .line 185
    .end local v1    # "convertView":Landroid/view/View;
    .restart local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    invoke-static {v3}, Lcom/youku/adapter/CachingListAdapter$ViewHolder;->access$000(Lcom/youku/adapter/CachingListAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/youku/adapter/CachingListAdapter;->editable:Z

    return v0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    .line 124
    return-void
.end method

.method public setData(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "downloadinfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .local p2, "downloadingList_Map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_show:Ljava/util/ArrayList;

    .line 102
    iput-object p2, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_Map:Ljava/util/HashMap;

    .line 103
    return-void
.end method

.method public setEdit(Z)V
    .locals 0
    .param p1, "editable"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/youku/adapter/CachingListAdapter;->editable:Z

    .line 110
    return-void
.end method

.method public setInFolder(Z)V
    .locals 0
    .param p1, "isInFolder"    # Z

    .prologue
    .line 566
    iput-boolean p1, p0, Lcom/youku/adapter/CachingListAdapter;->isInFolder:Z

    .line 567
    return-void
.end method

.method public setUpdate(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 641
    invoke-virtual {p0, p1}, Lcom/youku/adapter/CachingListAdapter;->setUpdateList(Lcom/tudou/service/download/DownloadInfo;)V

    .line 642
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 643
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x309

    iput v1, v0, Landroid/os/Message;->what:I

    .line 644
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 645
    iget-object v1, p0, Lcom/youku/adapter/CachingListAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 646
    return-void
.end method

.method public setUpdateList(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 649
    const/4 v1, 0x0

    .line 650
    .local v1, "infos":Lcom/tudou/service/download/DownloadInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 651
    iget-object v3, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "infos":Lcom/tudou/service/download/DownloadInfo;
    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 652
    .restart local v1    # "infos":Lcom/tudou/service/download/DownloadInfo;
    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    iget-object v4, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 653
    iget-object v3, p0, Lcom/youku/adapter/CachingListAdapter;->downloadingList_show:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_0
    return-void

    .line 650
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 560
    if-eqz p1, :cond_0

    .line 561
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 563
    :cond_0
    return-void
.end method
