.class Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$4;
.super Lcom/tudou/detail/DetailImageLoadingListenner;
.source "EndActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->setRecVideos(Lcom/youku/vo/DetailRecomment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

.field final synthetic val$recItemPic:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$4;->val$recItemPic:Landroid/widget/ImageView;

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
    .line 207
    invoke-super {p0, p1, p2, p3}, Lcom/tudou/detail/DetailImageLoadingListenner;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 208
    if-eqz p3, :cond_0

    if-eqz p3, :cond_0

    .line 209
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$4;->val$recItemPic:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    :cond_0
    return-void
.end method
