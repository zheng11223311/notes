.class Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoFeatureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/fragment/VideoFeatureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoFeatureAdapter"
.end annotation


# instance fields
.field public mSelection:I

.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoFeatureFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoFeatureFragment;)V
    .locals 1

    .prologue
    .line 220
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;->this$0:Lcom/tudou/detail/fragment/VideoFeatureFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 222
    const/4 v0, -0x1

    iput v0, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;->mSelection:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;->this$0:Lcom/tudou/detail/fragment/VideoFeatureFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoFeatureFragment;->access$100(Lcom/tudou/detail/fragment/VideoFeatureFragment;)Lcom/tudou/detail/vo/DetailFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;->this$0:Lcom/tudou/detail/fragment/VideoFeatureFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoFeatureFragment;->access$100(Lcom/tudou/detail/fragment/VideoFeatureFragment;)Lcom/tudou/detail/vo/DetailFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/detail/vo/DetailFeature;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 236
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0xff

    const/16 v6, 0x3c

    .line 241
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;->this$0:Lcom/tudou/detail/fragment/VideoFeatureFragment;

    invoke-virtual {v3}, Lcom/tudou/detail/fragment/VideoFeatureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300c5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 242
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;->this$0:Lcom/tudou/detail/fragment/VideoFeatureFragment;

    invoke-static {v3}, Lcom/tudou/detail/fragment/VideoFeatureFragment;->access$100(Lcom/tudou/detail/fragment/VideoFeatureFragment;)Lcom/tudou/detail/vo/DetailFeature;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/tudou/detail/vo/DetailFeature;->get(I)Lcom/tudou/detail/vo/DetailFeature$Feature;

    move-result-object v0

    .line 245
    .local v0, "f":Lcom/tudou/detail/vo/DetailFeature$Feature;
    new-instance v1, Lcom/tudou/detail/fragment/VideoFeatureFragment$DetailFeatureItemHolder;

    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;->this$0:Lcom/tudou/detail/fragment/VideoFeatureFragment;

    invoke-direct {v1, v3, v2}, Lcom/tudou/detail/fragment/VideoFeatureFragment$DetailFeatureItemHolder;-><init>(Lcom/tudou/detail/fragment/VideoFeatureFragment;Landroid/view/View;)V

    .line 246
    .local v1, "holder":Lcom/tudou/detail/fragment/VideoFeatureFragment$DetailFeatureItemHolder;
    iget v3, p0, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;->mSelection:I

    if-ne p1, v3, :cond_0

    .line 247
    iget-object v3, v1, Lcom/tudou/detail/fragment/VideoFeatureFragment$DetailFeatureItemHolder;->mTitle:Landroid/widget/TextView;

    const/16 v4, 0x66

    const/4 v5, 0x0

    invoke-static {v7, v7, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    :goto_0
    iget-object v3, v1, Lcom/tudou/detail/fragment/VideoFeatureFragment$DetailFeatureItemHolder;->mTitle:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/tudou/detail/vo/DetailFeature$Feature;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v3, v1, Lcom/tudou/detail/fragment/VideoFeatureFragment$DetailFeatureItemHolder;->mDuration:Landroid/widget/TextView;

    iget v4, v0, Lcom/tudou/detail/vo/DetailFeature$Feature;->duration:I

    invoke-static {v4}, Lcom/youku/util/Util;->formatDuration(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, v0, Lcom/tudou/detail/vo/DetailFeature$Feature;->img_16_9:Ljava/lang/String;

    iget-object v5, v1, Lcom/tudou/detail/fragment/VideoFeatureFragment$DetailFeatureItemHolder;->mPic:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 254
    iget-object v3, v1, Lcom/tudou/detail/fragment/VideoFeatureFragment$DetailFeatureItemHolder;->mRoot:Landroid/view/View;

    new-instance v4, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter$1;-><init>(Lcom/tudou/detail/fragment/VideoFeatureFragment$VideoFeatureAdapter;Lcom/tudou/detail/vo/DetailFeature$Feature;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    return-object v2

    .line 249
    :cond_0
    iget-object v3, v1, Lcom/tudou/detail/fragment/VideoFeatureFragment$DetailFeatureItemHolder;->mTitle:Landroid/widget/TextView;

    invoke-static {v7, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
