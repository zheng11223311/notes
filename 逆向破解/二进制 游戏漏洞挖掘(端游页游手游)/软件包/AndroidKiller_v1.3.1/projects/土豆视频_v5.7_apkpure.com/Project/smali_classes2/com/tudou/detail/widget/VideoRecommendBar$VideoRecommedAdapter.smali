.class Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoRecommendBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/widget/VideoRecommendBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoRecommedAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoRecommendBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoRecommendBar;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoRecommendBar;->access$000(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/youku/vo/DetailRecomment;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 74
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-static {v2}, Lcom/tudou/detail/widget/VideoRecommendBar;->access$100(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v2, v3, :cond_0

    .line 81
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-virtual {v2}, Lcom/tudou/detail/widget/VideoRecommendBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300b0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 85
    :goto_0
    new-instance v0, Lcom/tudou/detail/widget/VideoRecommendBar$DetailRecommendItemHolder;

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-direct {v0, v2, v1}, Lcom/tudou/detail/widget/VideoRecommendBar$DetailRecommendItemHolder;-><init>(Lcom/tudou/detail/widget/VideoRecommendBar;Landroid/view/View;)V

    .line 86
    .local v0, "holder":Lcom/tudou/detail/widget/VideoRecommendBar$DetailRecommendItemHolder;
    iget-object v3, v0, Lcom/tudou/detail/widget/VideoRecommendBar$DetailRecommendItemHolder;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-static {v2}, Lcom/tudou/detail/widget/VideoRecommendBar;->access$000(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/youku/vo/DetailRecomment;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/RelatedVideo;

    iget-object v2, v2, Lcom/youku/vo/RelatedVideo;->title:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-static {v2}, Lcom/tudou/detail/widget/VideoRecommendBar;->access$100(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v2, v3, :cond_1

    .line 88
    iget-object v3, v0, Lcom/tudou/detail/widget/VideoRecommendBar$DetailRecommendItemHolder;->mDesc:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-static {v2}, Lcom/tudou/detail/widget/VideoRecommendBar;->access$000(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/youku/vo/DetailRecomment;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/RelatedVideo;

    iget-object v2, v2, Lcom/youku/vo/RelatedVideo;->shortDesc:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-static {v2}, Lcom/tudou/detail/widget/VideoRecommendBar;->access$200(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-static {v2}, Lcom/tudou/detail/widget/VideoRecommendBar;->access$000(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/youku/vo/DetailRecomment;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/RelatedVideo;

    iget-object v2, v2, Lcom/youku/vo/RelatedVideo;->img_16_9:Ljava/lang/String;

    iget-object v4, v0, Lcom/tudou/detail/widget/VideoRecommendBar$DetailRecommendItemHolder;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v3, v2, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 94
    :goto_1
    iget-object v2, v0, Lcom/tudou/detail/widget/VideoRecommendBar$DetailRecommendItemHolder;->mRoot:Landroid/view/View;

    new-instance v3, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter$1;-><init>(Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-object v1

    .line 83
    .end local v0    # "holder":Lcom/tudou/detail/widget/VideoRecommendBar$DetailRecommendItemHolder;
    :cond_0
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-virtual {v2}, Lcom/tudou/detail/widget/VideoRecommendBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300af

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 91
    .restart local v0    # "holder":Lcom/tudou/detail/widget/VideoRecommendBar$DetailRecommendItemHolder;
    :cond_1
    iget-object v3, v0, Lcom/tudou/detail/widget/VideoRecommendBar$DetailRecommendItemHolder;->mDesc:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-static {v2}, Lcom/tudou/detail/widget/VideoRecommendBar;->access$000(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/youku/vo/DetailRecomment;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/RelatedVideo;

    iget-object v2, v2, Lcom/youku/vo/RelatedVideo;->strip_bottom:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-static {v2}, Lcom/tudou/detail/widget/VideoRecommendBar;->access$200(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-static {v2}, Lcom/tudou/detail/widget/VideoRecommendBar;->access$000(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/youku/vo/DetailRecomment;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/RelatedVideo;

    iget-object v2, v2, Lcom/youku/vo/RelatedVideo;->img_16_9:Ljava/lang/String;

    iget-object v4, v0, Lcom/tudou/detail/widget/VideoRecommendBar$DetailRecommendItemHolder;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v3, v2, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1
.end method
