.class Lcom/tudou/detail/fragment/VideoSelectnessFragment$VideoSelectnessAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoSelectnessFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/fragment/VideoSelectnessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoSelectnessAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoSelectnessFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoSelectnessFragment;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment$VideoSelectnessAdapter;->this$0:Lcom/tudou/detail/fragment/VideoSelectnessFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment$VideoSelectnessAdapter;->this$0:Lcom/tudou/detail/fragment/VideoSelectnessFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->access$000(Lcom/tudou/detail/fragment/VideoSelectnessFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment$VideoSelectnessAdapter;->this$0:Lcom/tudou/detail/fragment/VideoSelectnessFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->access$000(Lcom/tudou/detail/fragment/VideoSelectnessFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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
    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 226
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 231
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment$VideoSelectnessAdapter;->this$0:Lcom/tudou/detail/fragment/VideoSelectnessFragment;

    invoke-virtual {v3}, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300c9

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 232
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment$VideoSelectnessAdapter;->this$0:Lcom/tudou/detail/fragment/VideoSelectnessFragment;

    invoke-static {v3}, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->access$000(Lcom/tudou/detail/fragment/VideoSelectnessFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;

    .line 234
    .local v0, "f":Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;
    new-instance v1, Lcom/tudou/detail/fragment/VideoSelectnessFragment$DetailSelectnessItemHolder;

    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment$VideoSelectnessAdapter;->this$0:Lcom/tudou/detail/fragment/VideoSelectnessFragment;

    invoke-direct {v1, v3, v2}, Lcom/tudou/detail/fragment/VideoSelectnessFragment$DetailSelectnessItemHolder;-><init>(Lcom/tudou/detail/fragment/VideoSelectnessFragment;Landroid/view/View;)V

    .line 235
    .local v1, "holder":Lcom/tudou/detail/fragment/VideoSelectnessFragment$DetailSelectnessItemHolder;
    iget-object v3, v1, Lcom/tudou/detail/fragment/VideoSelectnessFragment$DetailSelectnessItemHolder;->mTitle:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v4, v1, Lcom/tudou/detail/fragment/VideoSelectnessFragment$DetailSelectnessItemHolder;->mDesc:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;->sub_title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;->sub_title:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, v0, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;->image_448_252:Ljava/lang/String;

    iget-object v5, v1, Lcom/tudou/detail/fragment/VideoSelectnessFragment$DetailSelectnessItemHolder;->mPic:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 238
    return-object v2

    .line 236
    :cond_0
    iget-object v3, v0, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;->image_b_r_title:Ljava/lang/String;

    goto :goto_0
.end method
