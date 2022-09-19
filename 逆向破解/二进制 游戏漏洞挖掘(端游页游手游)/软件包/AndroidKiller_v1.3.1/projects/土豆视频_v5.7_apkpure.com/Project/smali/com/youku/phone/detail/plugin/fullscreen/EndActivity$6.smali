.class Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$6;
.super Lcom/tudou/detail/DetailImageLoadingListenner;
.source "EndActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->setCurVideoInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

.field final synthetic val$mCurVideoImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$6;->val$mCurVideoImage:Landroid/widget/ImageView;

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
    .line 238
    invoke-super {p0, p1, p2, p3}, Lcom/tudou/detail/DetailImageLoadingListenner;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 239
    if-eqz p3, :cond_0

    if-eqz p3, :cond_0

    .line 240
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$6;->val$mCurVideoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 242
    :cond_0
    return-void
.end method
