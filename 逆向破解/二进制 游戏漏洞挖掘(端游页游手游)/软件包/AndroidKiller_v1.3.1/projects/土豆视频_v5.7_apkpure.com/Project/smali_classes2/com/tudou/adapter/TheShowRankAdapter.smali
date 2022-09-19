.class public Lcom/tudou/adapter/TheShowRankAdapter;
.super Landroid/widget/BaseAdapter;
.source "TheShowRankAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TheShowRankResults$TheShowRankResult;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Lcom/tudou/ui/fragment/TheShowRankFragment;

.field private mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TheShowRankResults$TheShowRankResult;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TheShowRankResults$TheShowRankResult;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 40
    iput p3, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mType:I

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/TheShowRankAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/TheShowRankAdapter;

    .prologue
    .line 30
    iget v0, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mType:I

    return v0
.end method

.method static synthetic access$100(Lcom/tudou/adapter/TheShowRankAdapter;)Lcom/tudou/ui/fragment/TheShowRankFragment;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/TheShowRankAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mFragment:Lcom/tudou/ui/fragment/TheShowRankFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/adapter/TheShowRankAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/TheShowRankAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mDataSet:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mDataSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f0208d7

    const/16 v9, 0x99

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 70
    if-nez p2, :cond_4

    .line 71
    new-instance v2, Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v3, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tudou/adapter/TheShowRankItemLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    .line 76
    .end local p2    # "convertView":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;

    .line 78
    .local v0, "item":Lcom/youku/vo/TheShowRankResults$TheShowRankResult;
    iget-object v2, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->xc_mv_picUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/tudou/ui/activity/TheShowRankActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/TheShowRankActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->xc_mv_picUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v4, v4, Lcom/tudou/adapter/TheShowRankItemLayout;->mItemPic:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mItemPic:Landroid/widget/ImageView;

    new-instance v3, Lcom/tudou/adapter/TheShowRankAdapter$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/tudou/adapter/TheShowRankAdapter$1;-><init>(Lcom/tudou/adapter/TheShowRankAdapter;Lcom/youku/vo/TheShowRankResults$TheShowRankResult;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    if-nez p1, :cond_5

    .line 106
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mRankPic:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mRankPic:Landroid/widget/ImageView;

    const v3, 0x7f020365

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 115
    :goto_1
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mVideoName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mPlayerName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mPlayCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u64ad\u653e\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->playTime:I

    invoke-static {v4}, Lcom/youku/util/Util;->newFormatNumber(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mPopularity:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4eba\u6c14\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->vote:I

    invoke-static {v4}, Lcom/youku/util/Util;->newFormatNumber(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->formatTopRank:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 121
    .local v1, "sp":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v3, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget-object v3, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->formatTopRank:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->formatTopRank:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x22

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 123
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mScore:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget v2, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->changeFlag:I

    if-nez v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mAddIcon:Landroid/widget/ImageView;

    const v3, 0x7f02036a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 127
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mAddScore:Landroid/widget/TextView;

    const-string v3, "0.00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mAddScore:Landroid/widget/TextView;

    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    :cond_1
    iget v2, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->changeFlag:I

    if-ne v7, v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mAddIcon:Landroid/widget/ImageView;

    const v3, 0x7f02036b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 132
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mAddScore:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->formatChange:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mAddScore:Landroid/widget/TextView;

    const/16 v3, 0xff

    const/16 v4, 0x61

    const/16 v5, 0x2a

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    :cond_2
    const/4 v2, -0x1

    iget v3, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->changeFlag:I

    if-ne v2, v3, :cond_3

    .line 136
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mAddIcon:Landroid/widget/ImageView;

    const v3, 0x7f020367

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 137
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mAddScore:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->formatChange:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mAddScore:Landroid/widget/TextView;

    const/16 v3, 0x45

    const/16 v4, 0xb0

    const/16 v5, 0x4e

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    :cond_3
    iget v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mType:I

    iget-object v3, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mFragment:Lcom/tudou/ui/fragment/TheShowRankFragment;

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 142
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mAddScore:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mAddIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mGift:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 145
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mGift:Landroid/widget/ImageView;

    new-instance v3, Lcom/tudou/adapter/TheShowRankAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/tudou/adapter/TheShowRankAdapter$2;-><init>(Lcom/tudou/adapter/TheShowRankAdapter;Lcom/youku/vo/TheShowRankResults$TheShowRankResult;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    :goto_2
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    return-object v2

    .line 73
    .end local v0    # "item":Lcom/youku/vo/TheShowRankResults$TheShowRankResult;
    .end local v1    # "sp":Landroid/text/SpannableString;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_4
    check-cast p2, Lcom/tudou/adapter/TheShowRankItemLayout;

    .end local p2    # "convertView":Landroid/view/View;
    iput-object p2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    goto/16 :goto_0

    .line 108
    .restart local v0    # "item":Lcom/youku/vo/TheShowRankResults$TheShowRankResult;
    :cond_5
    if-ne v7, p1, :cond_6

    .line 109
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mRankPic:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mRankPic:Landroid/widget/ImageView;

    const v3, 0x7f020366

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 112
    :cond_6
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mRankPic:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 151
    .restart local v1    # "sp":Landroid/text/SpannableString;
    :cond_7
    iget v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mType:I

    iget-object v3, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mFragment:Lcom/tudou/ui/fragment/TheShowRankFragment;

    if-ne v2, v7, :cond_8

    .line 152
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mAddScore:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mAddIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mGift:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 155
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mGift:Landroid/widget/ImageView;

    new-instance v3, Lcom/tudou/adapter/TheShowRankAdapter$3;

    invoke-direct {v3, p0, v0}, Lcom/tudou/adapter/TheShowRankAdapter$3;-><init>(Lcom/tudou/adapter/TheShowRankAdapter;Lcom/youku/vo/TheShowRankResults$TheShowRankResult;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 162
    :cond_8
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mAddScore:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mAddIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mGift:Landroid/widget/ImageView;

    const v3, 0x7f020360

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 165
    iget-object v2, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mTheShowRankItemLayout:Lcom/tudou/adapter/TheShowRankItemLayout;

    iget-object v2, v2, Lcom/tudou/adapter/TheShowRankItemLayout;->mGift:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public setFragment(Lcom/tudou/ui/fragment/TheShowRankFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mFragment:Lcom/tudou/ui/fragment/TheShowRankFragment;

    .line 172
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/tudou/adapter/TheShowRankAdapter;->mType:I

    .line 45
    return-void
.end method
