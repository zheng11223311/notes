.class public Lcom/tudou/adapter/DetailPodcastAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailPodcastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private uploadvideolist:Lcom/youku/vo/UploadVideoinfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/vo/UploadVideoinfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uploadvideolist"    # Lcom/youku/vo/UploadVideoinfo;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/tudou/adapter/DetailPodcastAdapter;->uploadvideolist:Lcom/youku/vo/UploadVideoinfo;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/adapter/DetailPodcastAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method

.method private initViewHolder(Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "viewholder"    # Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 73
    const v0, 0x7f0c09a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0c09a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;->playcount:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0c00f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;->play:Landroid/widget/TextView;

    .line 76
    return-void
.end method

.method private setViewHolderData(Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "viewholder"    # Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;
    .param p2, "pos"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/tudou/adapter/DetailPodcastAdapter;->uploadvideolist:Lcom/youku/vo/UploadVideoinfo;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/DetailPodcastAdapter;->uploadvideolist:Lcom/youku/vo/UploadVideoinfo;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 81
    :cond_0
    iget-object v0, p1, Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const-string v1, "\u8fdb\u5165\u7a7a\u95f4\u67e5\u770b\u66f4\u591a >>"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p1, Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v1, -0x8b00

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object v0, p1, Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;->playcount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v0, p1, Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;->play:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p1, Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;->playcount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p1, Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;->play:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v1, p1, Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/adapter/DetailPodcastAdapter;->uploadvideolist:Lcom/youku/vo/UploadVideoinfo;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/UploadVideoinfo$Info;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo$Info;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p1, Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v1, -0x565657

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v1, p1, Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;->playcount:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/adapter/DetailPodcastAdapter;->uploadvideolist:Lcom/youku/vo/UploadVideoinfo;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/UploadVideoinfo$Info;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo$Info;->total_vv:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/tudou/adapter/DetailPodcastAdapter;->uploadvideolist:Lcom/youku/vo/UploadVideoinfo;

    iget-object v1, v1, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v1, v1, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 40
    :goto_0
    return v0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/tudou/adapter/DetailPodcastAdapter;->uploadvideolist:Lcom/youku/vo/UploadVideoinfo;

    iget-object v1, v1, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v1, v1, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 60
    iget-object v1, p0, Lcom/tudou/adapter/DetailPodcastAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030205

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v0, Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/DetailPodcastAdapter;)V

    .line 63
    .local v0, "viewholder":Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;
    invoke-direct {p0, v0, p2}, Lcom/tudou/adapter/DetailPodcastAdapter;->initViewHolder(Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;Landroid/view/View;)V

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/tudou/adapter/DetailPodcastAdapter;->setViewHolderData(Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;I)V

    .line 69
    return-object p2

    .line 66
    .end local v0    # "viewholder":Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;

    .restart local v0    # "viewholder":Lcom/tudou/adapter/DetailPodcastAdapter$ViewHolder;
    goto :goto_0
.end method
