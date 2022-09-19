.class Lcom/tudou/detail/widget/VideoSpecialTopicBar$2;
.super Lcom/tudou/detail/DetailImageLoadingListenner;
.source "VideoSpecialTopicBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoSpecialTopicBar;->setInteractive(Lcom/tudou/detail/vo/Interactive;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoSpecialTopicBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoSpecialTopicBar;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoSpecialTopicBar$2;->this$0:Lcom/tudou/detail/widget/VideoSpecialTopicBar;

    invoke-direct {p0}, Lcom/tudou/detail/DetailImageLoadingListenner;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/tudou/detail/DetailImageLoadingListenner;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 61
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSpecialTopicBar$2;->this$0:Lcom/tudou/detail/widget/VideoSpecialTopicBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoSpecialTopicBar;->access$100(Lcom/tudou/detail/widget/VideoSpecialTopicBar;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSpecialTopicBar$2;->this$0:Lcom/tudou/detail/widget/VideoSpecialTopicBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoSpecialTopicBar;->access$100(Lcom/tudou/detail/widget/VideoSpecialTopicBar;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    :cond_0
    return-void
.end method
