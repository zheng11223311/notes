.class Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView$2;
.super Lcom/tudou/detail/DetailImageLoadingListenner;
.source "VideoNoticeBottomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->setData(Lcom/tudou/detail/vo/VideoNoticeBottom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

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
    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/tudou/detail/DetailImageLoadingListenner;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 111
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    :cond_0
    return-void
.end method
