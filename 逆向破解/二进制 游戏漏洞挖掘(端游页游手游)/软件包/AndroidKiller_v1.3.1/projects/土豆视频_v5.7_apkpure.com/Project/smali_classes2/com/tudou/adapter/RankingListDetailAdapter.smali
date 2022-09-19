.class public Lcom/tudou/adapter/RankingListDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "RankingListDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/RankingDetailList$Results$RankingDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/RankingDetailList$Results$RankingDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/RankingDetailList$Results$RankingDetail;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/tudou/adapter/RankingListDetailAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/tudou/adapter/RankingListDetailAdapter;->items:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tudou/adapter/RankingListDetailAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/adapter/RankingListDetailAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    if-nez p2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/tudou/adapter/RankingListDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0301bd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance v1, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/RankingListDetailAdapter;)V

    .line 58
    .local v1, "viewholder":Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;
    const v2, 0x7f0c0812

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 60
    const v2, 0x7f0c0813

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;->update:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f0c0816

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 65
    const v2, 0x7f0c0817

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;->notice:Landroid/widget/TextView;

    .line 67
    const v2, 0x7f0c0818

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;->playtimes:Landroid/widget/TextView;

    .line 69
    const v2, 0x7f0c0815

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;->no:Landroid/widget/TextView;

    .line 72
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    :goto_0
    iget-object v2, p0, Lcom/tudou/adapter/RankingListDetailAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;

    .line 78
    .local v0, "r":Lcom/youku/vo/RankingDetailList$Results$RankingDetail;
    if-eqz v0, :cond_0

    .line 79
    iget-object v2, p0, Lcom/tudou/adapter/RankingListDetailAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/tudou/ui/activity/RankingListDetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/RankingListDetailActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->img_link:Ljava/lang/String;

    iget-object v4, v1, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 81
    iget-object v2, v1, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, v1, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;->notice:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->notice:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, v1, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;->playtimes:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u64ad\u653e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->playtimes:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, v1, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;->update:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->update:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    if-nez p1, :cond_2

    .line 87
    iget-object v2, v1, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;->no:Landroid/widget/TextView;

    const v3, 0x7f02075f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 97
    :goto_1
    iget-object v2, v1, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;->no:Landroid/widget/TextView;

    add-int/lit8 v3, p1, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    return-object p2

    .line 74
    .end local v0    # "r":Lcom/youku/vo/RankingDetailList$Results$RankingDetail;
    .end local v1    # "viewholder":Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;

    .restart local v1    # "viewholder":Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;
    goto :goto_0

    .line 89
    .restart local v0    # "r":Lcom/youku/vo/RankingDetailList$Results$RankingDetail;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 90
    iget-object v2, v1, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;->no:Landroid/widget/TextView;

    const v3, 0x7f020760

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 93
    :cond_3
    iget-object v2, v1, Lcom/tudou/adapter/RankingListDetailAdapter$ViewHolder;->no:Landroid/widget/TextView;

    const v3, 0x7f020761

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1
.end method
