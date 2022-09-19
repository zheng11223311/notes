.class Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoFeatureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/widget/VideoFeatureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeatureListAdapter"
.end annotation


# instance fields
.field public mSelection:I

.field final synthetic this$0:Lcom/tudou/detail/widget/VideoFeatureBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoFeatureBar;)V
    .locals 1

    .prologue
    .line 134
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;->this$0:Lcom/tudou/detail/widget/VideoFeatureBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;->mSelection:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 140
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;->this$0:Lcom/tudou/detail/widget/VideoFeatureBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoFeatureBar;->access$000(Lcom/tudou/detail/widget/VideoFeatureBar;)Lcom/tudou/detail/vo/DetailFeature;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;->this$0:Lcom/tudou/detail/widget/VideoFeatureBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoFeatureBar;->access$000(Lcom/tudou/detail/widget/VideoFeatureBar;)Lcom/tudou/detail/vo/DetailFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/detail/vo/DetailFeature;->getCount()I

    move-result v1

    if-gt v1, v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;->this$0:Lcom/tudou/detail/widget/VideoFeatureBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoFeatureBar;->access$000(Lcom/tudou/detail/widget/VideoFeatureBar;)Lcom/tudou/detail/vo/DetailFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/detail/vo/DetailFeature;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;->this$0:Lcom/tudou/detail/widget/VideoFeatureBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoFeatureBar;->access$000(Lcom/tudou/detail/widget/VideoFeatureBar;)Lcom/tudou/detail/vo/DetailFeature;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tudou/detail/vo/DetailFeature;->get(I)Lcom/tudou/detail/vo/DetailFeature$Feature;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 150
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v9, 0x66

    const/4 v8, 0x0

    const/16 v7, 0x99

    const/16 v6, 0x3c

    const/16 v5, 0xff

    .line 156
    if-nez p2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;->this$0:Lcom/tudou/detail/widget/VideoFeatureBar;

    invoke-virtual {v2}, Lcom/tudou/detail/widget/VideoFeatureBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300a3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 158
    new-instance v1, Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;->this$0:Lcom/tudou/detail/widget/VideoFeatureBar;

    invoke-direct {v1, v2}, Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;-><init>(Lcom/tudou/detail/widget/VideoFeatureBar;)V

    .line 159
    .local v1, "holder":Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    const v2, 0x7f0c031c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;->featureTitleTextView:Landroid/widget/TextView;

    .line 161
    const v2, 0x7f0c031b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;->featureDurationTextView:Landroid/widget/TextView;

    .line 162
    const v2, 0x7f0c031a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;->featurePosterImageView:Landroid/widget/ImageView;

    .line 163
    const v2, 0x7f0c031d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;->featurePlayTimesTextView:Landroid/widget/TextView;

    .line 165
    .end local v1    # "holder":Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;

    .line 166
    .restart local v1    # "holder":Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/DetailFeature$Feature;

    .line 167
    .local v0, "feature":Lcom/tudou/detail/vo/DetailFeature$Feature;
    iget v2, p0, Lcom/tudou/detail/widget/VideoFeatureBar$FeatureListAdapter;->mSelection:I

    if-ne p1, v2, :cond_1

    .line 168
    iget-object v2, v1, Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;->featurePlayTimesTextView:Landroid/widget/TextView;

    invoke-static {v5, v5, v9, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object v2, v1, Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;->featureTitleTextView:Landroid/widget/TextView;

    invoke-static {v5, v5, v9, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    :goto_0
    iget-object v2, v1, Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;->featureTitleTextView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/tudou/detail/vo/DetailFeature$Feature;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v2, v1, Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;->featurePlayTimesTextView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/tudou/detail/vo/DetailFeature$Feature;->pv_pr:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v2, v1, Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;->featureDurationTextView:Landroid/widget/TextView;

    iget v3, v0, Lcom/tudou/detail/vo/DetailFeature$Feature;->duration:I

    int-to-double v4, v3

    invoke-static {v4, v5}, Lcom/youku/util/Util;->formatTime(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/tudou/detail/vo/DetailFeature$Feature;->img_16_9:Ljava/lang/String;

    iget-object v4, v1, Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;->featurePosterImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 178
    return-object p2

    .line 171
    :cond_1
    iget-object v2, v1, Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;->featurePlayTimesTextView:Landroid/widget/TextView;

    invoke-static {v5, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    iget-object v2, v1, Lcom/tudou/detail/widget/VideoFeatureBar$ViewHolder;->featureTitleTextView:Landroid/widget/TextView;

    invoke-static {v5, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
