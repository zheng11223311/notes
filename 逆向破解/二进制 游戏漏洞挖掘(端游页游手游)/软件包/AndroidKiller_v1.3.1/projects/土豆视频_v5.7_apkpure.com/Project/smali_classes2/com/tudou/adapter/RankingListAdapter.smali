.class public Lcom/tudou/adapter/RankingListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RankingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/RankingListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/RankingList$Ranking;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/RankingList$Ranking;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "rankinglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/RankingList$Ranking;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/tudou/adapter/RankingListAdapter;->list:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/tudou/adapter/RankingListAdapter;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/RankingListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/RankingListAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tudou/adapter/RankingListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tudou/adapter/RankingListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/adapter/RankingListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    if-nez p2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/tudou/adapter/RankingListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0301bc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    new-instance v1, Lcom/tudou/adapter/RankingListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/tudou/adapter/RankingListAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/RankingListAdapter;)V

    .line 56
    .local v1, "viewholder":Lcom/tudou/adapter/RankingListAdapter$ViewHolder;
    const v2, 0x7f0c073c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/tudou/adapter/RankingListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 58
    const v2, 0x7f0c07c5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/RankingListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 60
    const v2, 0x7f0c0810

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/RankingListAdapter$ViewHolder;->first:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f0c080f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/tudou/adapter/RankingListAdapter$ViewHolder;->background:Landroid/view/View;

    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    :goto_0
    iget-object v2, p0, Lcom/tudou/adapter/RankingListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/RankingList$Ranking;

    .line 70
    .local v0, "r":Lcom/youku/vo/RankingList$Ranking;
    if-eqz v0, :cond_0

    .line 71
    iget-object v2, p0, Lcom/tudou/adapter/RankingListAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/tudou/ui/activity/RankingListActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/RankingListActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/youku/vo/RankingList$Ranking;->img_link:Ljava/lang/String;

    iget-object v4, v1, Lcom/tudou/adapter/RankingListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 73
    iget-object v2, v1, Lcom/tudou/adapter/RankingListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/RankingList$Ranking;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v2, v1, Lcom/tudou/adapter/RankingListAdapter$ViewHolder;->first:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No.1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/youku/vo/RankingList$Ranking;->sub_title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, v1, Lcom/tudou/adapter/RankingListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    new-instance v3, Lcom/tudou/adapter/RankingListAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/tudou/adapter/RankingListAdapter$1;-><init>(Lcom/tudou/adapter/RankingListAdapter;Lcom/youku/vo/RankingList$Ranking;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v2, v1, Lcom/tudou/adapter/RankingListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/youku/util/Util;->addPressState(Landroid/view/View;)V

    .line 99
    rem-int/lit8 v2, p1, 0x4

    packed-switch v2, :pswitch_data_0

    .line 122
    :cond_0
    :goto_1
    return-object p2

    .line 66
    .end local v0    # "r":Lcom/youku/vo/RankingList$Ranking;
    .end local v1    # "viewholder":Lcom/tudou/adapter/RankingListAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/RankingListAdapter$ViewHolder;

    .restart local v1    # "viewholder":Lcom/tudou/adapter/RankingListAdapter$ViewHolder;
    goto :goto_0

    .line 101
    .restart local v0    # "r":Lcom/youku/vo/RankingList$Ranking;
    :pswitch_0
    iget-object v2, v1, Lcom/tudou/adapter/RankingListAdapter$ViewHolder;->background:Landroid/view/View;

    const v3, 0x7f020759

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 105
    :pswitch_1
    iget-object v2, v1, Lcom/tudou/adapter/RankingListAdapter$ViewHolder;->background:Landroid/view/View;

    const v3, 0x7f02075a

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 109
    :pswitch_2
    iget-object v2, v1, Lcom/tudou/adapter/RankingListAdapter$ViewHolder;->background:Landroid/view/View;

    const v3, 0x7f020762

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 113
    :pswitch_3
    iget-object v2, v1, Lcom/tudou/adapter/RankingListAdapter$ViewHolder;->background:Landroid/view/View;

    const v3, 0x7f02075b

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
