.class Lcom/youku/widget/SelectnessTabView$MyAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SelectnessTabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/SelectnessTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/youku/widget/SelectnessTabView$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDtaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/CardsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipinfo:Lcom/youku/vo/SkipInfo;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/widget/SelectnessTabView;


# direct methods
.method constructor <init>(Lcom/youku/widget/SelectnessTabView;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter;->this$0:Lcom/youku/widget/SelectnessTabView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/youku/widget/SelectnessTabView$MyAdapter;)Lcom/youku/vo/SkipInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SelectnessTabView$MyAdapter;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter;->mSkipinfo:Lcom/youku/vo/SkipInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/widget/SelectnessTabView$MyAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SelectnessTabView$MyAdapter;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter;->mTitle:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter;->mDtaList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter;->mDtaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter;->mDtaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x1"    # I

    .prologue
    .line 173
    check-cast p1, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/youku/widget/SelectnessTabView$MyAdapter;->onBindViewHolder(Lcom/youku/widget/SelectnessTabView$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/youku/widget/SelectnessTabView$ItemViewHolder;I)V
    .locals 6
    .param p1, "mItemViewHolder"    # Lcom/youku/widget/SelectnessTabView$ItemViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 194
    iget-object v1, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter;->mDtaList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardsInfo;

    .line 196
    .local v0, "mCardsInfo":Lcom/youku/vo/CardsInfo;
    iget-object v1, v0, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 197
    iget-object v1, p1, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    iget-object v1, p1, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v1, p1, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mSubTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/youku/vo/CardsInfo;->sub_title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p1, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mSubTitle:Landroid/widget/TextView;

    new-instance v2, Lcom/youku/widget/SelectnessTabView$MyAdapter$1;

    invoke-direct {v2, p0}, Lcom/youku/widget/SelectnessTabView$MyAdapter$1;-><init>(Lcom/youku/widget/SelectnessTabView$MyAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v1, p1, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v1, p1, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iget-object v1, p1, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mThumbnail:Landroid/widget/ImageView;

    const v2, 0x7f020371

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    iget-object v1, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter;->this$0:Lcom/youku/widget/SelectnessTabView;

    invoke-static {v1}, Lcom/youku/widget/SelectnessTabView;->access$000(Lcom/youku/widget/SelectnessTabView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, v0, Lcom/youku/vo/CardsInfo;->image_448_252:Ljava/lang/String;

    iget-object v3, p1, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 220
    iget-object v1, v0, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 221
    iget-object v1, p1, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mTopMark:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p1, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mTopMark:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter;->this$0:Lcom/youku/widget/SelectnessTabView;

    invoke-static {v1}, Lcom/youku/widget/SelectnessTabView;->access$000(Lcom/youku/widget/SelectnessTabView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, v0, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    iget-object v3, p1, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mTopMark:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 229
    :cond_2
    :goto_1
    iget-object v1, p1, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mTime:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/youku/vo/CardsInfo;->image_b_r_title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, p1, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v1, p1, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/youku/widget/SelectnessTabView$MyAdapter$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/youku/widget/SelectnessTabView$MyAdapter$2;-><init>(Lcom/youku/widget/SelectnessTabView$MyAdapter;Lcom/youku/vo/CardsInfo;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 225
    :cond_3
    iget-object v1, p1, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mTopMark:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 226
    iget-object v1, p1, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;->mTopMark:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/youku/widget/SelectnessTabView$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/youku/widget/SelectnessTabView$ItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/youku/widget/SelectnessTabView$ItemViewHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "cardType"    # I

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301a6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;

    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter;->this$0:Lcom/youku/widget/SelectnessTabView;

    invoke-direct {v1, v2, v0}, Lcom/youku/widget/SelectnessTabView$ItemViewHolder;-><init>(Lcom/youku/widget/SelectnessTabView;Landroid/view/View;)V

    return-object v1
.end method

.method public setData(Ljava/util/List;Lcom/youku/vo/SkipInfo;Ljava/lang/String;)V
    .locals 0
    .param p2, "skipinfo"    # Lcom/youku/vo/SkipInfo;
    .param p3, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/CardsInfo;",
            ">;",
            "Lcom/youku/vo/SkipInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardsInfo;>;"
    iput-object p1, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter;->mDtaList:Ljava/util/List;

    .line 260
    iput-object p2, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter;->mSkipinfo:Lcom/youku/vo/SkipInfo;

    .line 261
    iput-object p3, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter;->mTitle:Ljava/lang/String;

    .line 262
    return-void
.end method
