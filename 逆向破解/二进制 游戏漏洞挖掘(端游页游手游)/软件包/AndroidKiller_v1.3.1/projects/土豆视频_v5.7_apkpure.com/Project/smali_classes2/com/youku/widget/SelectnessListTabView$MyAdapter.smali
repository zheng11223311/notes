.class Lcom/youku/widget/SelectnessListTabView$MyAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SelectnessListTabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/SelectnessListTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;",
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

.field final synthetic this$0:Lcom/youku/widget/SelectnessListTabView;


# direct methods
.method constructor <init>(Lcom/youku/widget/SelectnessListTabView;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/youku/widget/SelectnessListTabView$MyAdapter;->this$0:Lcom/youku/widget/SelectnessListTabView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView$MyAdapter;->mDtaList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView$MyAdapter;->mDtaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView$MyAdapter;->mDtaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 131
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
    .line 123
    check-cast p1, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/youku/widget/SelectnessListTabView$MyAdapter;->onBindViewHolder(Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;I)V
    .locals 5
    .param p1, "mItemViewHolder"    # Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;
    .param p2, "position"    # I

    .prologue
    const/16 v4, 0x8

    .line 142
    iget-object v1, p0, Lcom/youku/widget/SelectnessListTabView$MyAdapter;->mDtaList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardsInfo;

    .line 144
    .local v0, "mCardsInfo":Lcom/youku/vo/CardsInfo;
    iget-object v1, p1, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->mThumbnail:Landroid/widget/ImageView;

    const v2, 0x7f020371

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v1, p0, Lcom/youku/widget/SelectnessListTabView$MyAdapter;->this$0:Lcom/youku/widget/SelectnessListTabView;

    invoke-static {v1}, Lcom/youku/widget/SelectnessListTabView;->access$000(Lcom/youku/widget/SelectnessListTabView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, v0, Lcom/youku/vo/CardsInfo;->module_cover_image:Ljava/lang/String;

    iget-object v3, p1, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 147
    iget-object v1, v0, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 148
    iget-object v1, p1, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->mTopMark:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p1, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->mTopMark:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/youku/widget/SelectnessListTabView$MyAdapter;->this$0:Lcom/youku/widget/SelectnessListTabView;

    invoke-static {v1}, Lcom/youku/widget/SelectnessListTabView;->access$000(Lcom/youku/widget/SelectnessListTabView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, v0, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    iget-object v3, p1, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->mTopMark:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 156
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->mTitleLine:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, p1, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/youku/widget/SelectnessListTabView$MyAdapter$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/youku/widget/SelectnessListTabView$MyAdapter$1;-><init>(Lcom/youku/widget/SelectnessListTabView$MyAdapter;Lcom/youku/vo/CardsInfo;I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    return-void

    .line 152
    :cond_2
    iget-object v1, p1, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->mTopMark:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 153
    iget-object v1, p1, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;->mTopMark:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/youku/widget/SelectnessListTabView$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "cardType"    # I

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301a5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;

    iget-object v2, p0, Lcom/youku/widget/SelectnessListTabView$MyAdapter;->this$0:Lcom/youku/widget/SelectnessListTabView;

    invoke-direct {v1, v2, v0}, Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;-><init>(Lcom/youku/widget/SelectnessListTabView;Landroid/view/View;)V

    return-object v1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/CardsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardsInfo;>;"
    iput-object p1, p0, Lcom/youku/widget/SelectnessListTabView$MyAdapter;->mDtaList:Ljava/util/List;

    .line 185
    return-void
.end method
