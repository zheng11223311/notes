.class Lcom/tudou/detail/widget/VideoSliderBar$1;
.super Lcom/tudou/detail/DetailImageLoadingListenner;
.source "VideoSliderBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoSliderBar;->setVideoDetail(Lcom/youku/vo/NewVideoDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoSliderBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoSliderBar;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoSliderBar$1;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-direct {p0}, Lcom/tudou/detail/DetailImageLoadingListenner;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoSliderBar$1;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoSliderBar;->access$100(Lcom/tudou/detail/widget/VideoSliderBar;)Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    move-result-object v1

    iget-object v2, v1, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mIconMark:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoSliderBar$1;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoSliderBar;->access$000(Lcom/tudou/detail/widget/VideoSliderBar;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-boolean v1, v1, Lcom/youku/vo/NewVideoDetail$Detail;->isVuser:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_1
    return-void

    .line 108
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
