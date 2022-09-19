.class Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter$1;
.super Ljava/lang/Object;
.source "VideoRecommendBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;I)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter$1;->this$1:Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;

    iput p2, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    const-string v1, "onItemClick"

    invoke-static {v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter$1;->this$1:Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;

    iget-object v1, v1, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    iget-object v1, v1, Lcom/tudou/detail/widget/VideoRecommendBar;->mCallbacks:Lcom/tudou/detail/widget/DetailContentPanel$Callbacks;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter$1;->this$1:Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;

    iget-object v1, v1, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    iget-object v2, v1, Lcom/tudou/detail/widget/VideoRecommendBar;->mCallbacks:Lcom/tudou/detail/widget/DetailContentPanel$Callbacks;

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter$1;->this$1:Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;

    iget-object v1, v1, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoRecommendBar;->access$000(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/youku/vo/DetailRecomment;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter$1;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/RelatedVideo;

    invoke-interface {v2, p1, v1}, Lcom/tudou/detail/widget/DetailContentPanel$Callbacks;->onRecommendItemClick(Landroid/view/View;Lcom/youku/vo/RelatedVideo;)Z

    .line 101
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter$1;->this$1:Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;

    iget-object v1, v1, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoRecommendBar;->access$300(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v1

    invoke-static {v1}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v0

    .line 102
    .local v0, "type":Lcom/tudou/android/Youku$VideoType;
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter$1;->this$1:Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;

    iget-object v1, v1, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoRecommendBar;->access$000(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/youku/vo/DetailRecomment;

    move-result-object v2

    iget v3, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter$1;->this$1:Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;

    iget-object v1, v1, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoRecommendBar;->access$000(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/youku/vo/DetailRecomment;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    iget v4, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter$1;->val$position:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/RelatedVideo;

    iget-object v1, v1, Lcom/youku/vo/RelatedVideo;->videoid:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter$1;->this$1:Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;

    iget-object v4, v4, Lcom/tudou/detail/widget/VideoRecommendBar$VideoRecommedAdapter;->this$0:Lcom/tudou/detail/widget/VideoRecommendBar;

    invoke-static {v4}, Lcom/tudou/detail/widget/VideoRecommendBar;->access$300(Lcom/tudou/detail/widget/VideoRecommendBar;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/tudou/detail/Test;->onRecommentClick(Lcom/youku/vo/DetailRecomment;ILjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V

    .line 105
    .end local v0    # "type":Lcom/tudou/android/Youku$VideoType;
    :cond_0
    return-void
.end method
