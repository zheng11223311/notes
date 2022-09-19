.class public Lcom/tudou/adapter/DetailRecommendAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailRecommendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;,
        Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field handler:Landroid/os/Handler;

.field private imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mode:I

.field newVideoDetail:Lcom/youku/vo/NewVideoDetail;

.field recomment:Lcom/youku/vo/DetailRecomment;

.field private relatedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/RelatedVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/vo/DetailRecomment;Lcom/nostra13/universalimageloader/core/ImageLoader;Landroid/os/Handler;Lcom/youku/vo/NewVideoDetail;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recomment"    # Lcom/youku/vo/DetailRecomment;
    .param p3, "imagework"    # Lcom/nostra13/universalimageloader/core/ImageLoader;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "newVideoDetail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->mode:I

    .line 48
    iput-object p2, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->recomment:Lcom/youku/vo/DetailRecomment;

    .line 49
    iput-object p1, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->context:Landroid/content/Context;

    .line 50
    iget-object v0, p2, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    .line 51
    iput-object p3, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 52
    iput-object p4, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->handler:Landroid/os/Handler;

    .line 53
    iput-object p5, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->newVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/DetailRecommendAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/DetailRecommendAdapter;

    .prologue
    .line 34
    iget v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->mode:I

    return v0
.end method

.method private initViewHolder(Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;Landroid/view/View;)V
    .locals 4
    .param p1, "viewholder"    # Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0c028d

    const v2, 0x7f0c0283

    const v1, 0x7f0c0281

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tudou/adapter/DetailRecommendAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 130
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->recommendimg:Landroid/widget/ImageView;

    .line 132
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->recommendtitle:Landroid/widget/TextView;

    .line 134
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0c07bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->recommendline2:Landroid/widget/TextView;

    goto :goto_0

    .line 139
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->thumbnail1:Landroid/widget/ImageView;

    .line 140
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->stripe_top1:Landroid/widget/TextView;

    .line 141
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->title_1line1:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0c0288

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->alias1:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0c0419

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->thumbnail2:Landroid/widget/ImageView;

    .line 146
    const v0, 0x7f0c041a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->stripe_top2:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0c041b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->title_1line2:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0c041c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->alias2:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0c041e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->thumbnail3:Landroid/widget/ImageView;

    .line 153
    const v0, 0x7f0c041f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->stripe_top3:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0c0420

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->title_1line3:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0c0421

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->alias3:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setViewHolderData(Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;ILandroid/view/View;)V
    .locals 10
    .param p1, "viewholder"    # Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;
    .param p2, "pos"    # I
    .param p3, "converview"    # Landroid/view/View;

    .prologue
    const v1, 0x7f020880

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 164
    invoke-virtual {p0, v8}, Lcom/tudou/adapter/DetailRecommendAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 221
    :goto_0
    return-void

    .line 166
    :pswitch_0
    iget-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->recommendimg:Landroid/widget/ImageView;

    const v1, 0x7f020371

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v1, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/RelatedVideo;

    iget-object v0, v0, Lcom/youku/vo/RelatedVideo;->img_16_9:Ljava/lang/String;

    iget-object v2, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->recommendimg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 170
    iget-object v1, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/RelatedVideo;

    iget-object v0, v0, Lcom/youku/vo/RelatedVideo;->strip_bottom:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->recommendtitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/RelatedVideo;

    iget-object v0, v0, Lcom/youku/vo/RelatedVideo;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->recommendline2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/RelatedVideo;

    iget-object v0, v0, Lcom/youku/vo/RelatedVideo;->pv_pr:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    new-instance v0, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;

    iget-object v2, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->recomment:Lcom/youku/vo/DetailRecomment;

    iget-object v1, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/RelatedVideo;

    iget-object v4, v1, Lcom/youku/vo/RelatedVideo;->videoid:Ljava/lang/String;

    iget-object v1, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/RelatedVideo;

    iget-object v5, v1, Lcom/youku/vo/RelatedVideo;->showid:Ljava/lang/String;

    iget-object v6, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->newVideoDetail:Lcom/youku/vo/NewVideoDetail;

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;-><init>(Lcom/tudou/adapter/DetailRecommendAdapter;Lcom/youku/vo/DetailRecomment;ILjava/lang/String;Ljava/lang/String;Lcom/youku/vo/NewVideoDetail;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 178
    :pswitch_1
    mul-int/lit8 p2, p2, 0x3

    .line 179
    iget-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->thumbnail1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    iget-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->thumbnail2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    iget-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->thumbnail3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object v1, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/RelatedVideo;

    iget-object v0, v0, Lcom/youku/vo/RelatedVideo;->img_16_9:Ljava/lang/String;

    iget-object v2, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->thumbnail1:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 184
    iget-object v7, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->thumbnail1:Landroid/widget/ImageView;

    new-instance v0, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;

    iget-object v2, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->recomment:Lcom/youku/vo/DetailRecomment;

    iget-object v1, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/RelatedVideo;

    iget-object v4, v1, Lcom/youku/vo/RelatedVideo;->videoid:Ljava/lang/String;

    iget-object v1, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/RelatedVideo;

    iget-object v5, v1, Lcom/youku/vo/RelatedVideo;->showid:Ljava/lang/String;

    iget-object v6, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->newVideoDetail:Lcom/youku/vo/NewVideoDetail;

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;-><init>(Lcom/tudou/adapter/DetailRecommendAdapter;Lcom/youku/vo/DetailRecomment;ILjava/lang/String;Ljava/lang/String;Lcom/youku/vo/NewVideoDetail;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v1, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->title_1line1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/RelatedVideo;

    iget-object v0, v0, Lcom/youku/vo/RelatedVideo;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v1, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->stripe_top1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/RelatedVideo;

    iget-object v0, v0, Lcom/youku/vo/RelatedVideo;->strip_bottom:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 190
    iget-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->thumbnail2:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->thumbnail3:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 194
    :cond_0
    iget-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->thumbnail2:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object v1, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->stripe_top2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/RelatedVideo;

    iget-object v0, v0, Lcom/youku/vo/RelatedVideo;->strip_bottom:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/RelatedVideo;

    iget-object v0, v0, Lcom/youku/vo/RelatedVideo;->img_16_9:Ljava/lang/String;

    iget-object v2, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->thumbnail2:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 199
    iget-object v7, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->thumbnail2:Landroid/widget/ImageView;

    new-instance v0, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;

    iget-object v2, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->recomment:Lcom/youku/vo/DetailRecomment;

    add-int/lit8 v3, p2, 0x1

    iget-object v1, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/RelatedVideo;

    iget-object v4, v1, Lcom/youku/vo/RelatedVideo;->videoid:Ljava/lang/String;

    iget-object v1, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/RelatedVideo;

    iget-object v5, v1, Lcom/youku/vo/RelatedVideo;->showid:Ljava/lang/String;

    iget-object v6, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->newVideoDetail:Lcom/youku/vo/NewVideoDetail;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;-><init>(Lcom/tudou/adapter/DetailRecommendAdapter;Lcom/youku/vo/DetailRecomment;ILjava/lang/String;Ljava/lang/String;Lcom/youku/vo/NewVideoDetail;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v1, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->title_1line2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/RelatedVideo;

    iget-object v0, v0, Lcom/youku/vo/RelatedVideo;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    add-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 204
    iget-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->thumbnail3:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 207
    :cond_1
    iget-object v0, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->thumbnail3:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object v7, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->thumbnail3:Landroid/widget/ImageView;

    new-instance v0, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;

    iget-object v2, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->recomment:Lcom/youku/vo/DetailRecomment;

    add-int/lit8 v3, p2, 0x2

    iget-object v1, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/RelatedVideo;

    iget-object v4, v1, Lcom/youku/vo/RelatedVideo;->videoid:Ljava/lang/String;

    iget-object v1, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, 0x2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/RelatedVideo;

    iget-object v5, v1, Lcom/youku/vo/RelatedVideo;->showid:Ljava/lang/String;

    iget-object v6, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->newVideoDetail:Lcom/youku/vo/NewVideoDetail;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;-><init>(Lcom/tudou/adapter/DetailRecommendAdapter;Lcom/youku/vo/DetailRecomment;ILjava/lang/String;Ljava/lang/String;Lcom/youku/vo/NewVideoDetail;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v1, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/RelatedVideo;

    iget-object v0, v0, Lcom/youku/vo/RelatedVideo;->img_16_9:Ljava/lang/String;

    iget-object v2, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->thumbnail3:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 213
    iget-object v1, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->title_1line3:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/RelatedVideo;

    iget-object v0, v0, Lcom/youku/vo/RelatedVideo;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v1, p1, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;->stripe_top3:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/RelatedVideo;

    iget-object v0, v0, Lcom/youku/vo/RelatedVideo;->strip_bottom:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public changeMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->mode:I

    .line 86
    invoke-virtual {p0}, Lcom/tudou/adapter/DetailRecommendAdapter;->notifyDataSetChanged()V

    .line 87
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 70
    :try_start_0
    iget v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->mode:I

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 81
    :goto_0
    return v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->relatedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 81
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 98
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    iget v0, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->mode:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 105
    if-nez p2, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lcom/tudou/adapter/DetailRecommendAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 117
    :goto_0
    new-instance v0, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/DetailRecommendAdapter;)V

    .line 118
    .local v0, "viewholder":Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;
    invoke-direct {p0, v0, p2}, Lcom/tudou/adapter/DetailRecommendAdapter;->initViewHolder(Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;Landroid/view/View;)V

    .line 119
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    :goto_1
    invoke-direct {p0, v0, p1, p2}, Lcom/tudou/adapter/DetailRecommendAdapter;->setViewHolderData(Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;ILandroid/view/View;)V

    .line 124
    return-object p2

    .line 108
    .end local v0    # "viewholder":Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;
    :pswitch_0
    iget-object v1, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030209

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 110
    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v1, p0, Lcom/tudou/adapter/DetailRecommendAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300dd

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;

    .restart local v0    # "viewholder":Lcom/tudou/adapter/DetailRecommendAdapter$ViewHolder;
    goto :goto_1

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x2

    return v0
.end method
