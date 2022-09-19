.class Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;
.super Ljava/lang/Object;
.source "AsyncImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;->runImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;

.field final synthetic val$drawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$imageView:Lio/rong/imkit/widget/AsyncImageView;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;Lio/rong/imkit/widget/AsyncImageView;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;->this$0:Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;

    iput-object p2, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lio/rong/imkit/widget/AsyncImageView;

    iput-object p3, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v0}, Lio/rong/imkit/widget/AsyncImageView;->getResource()Lcom/sea_monster/resource/Resource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v0}, Lio/rong/imkit/widget/AsyncImageView;->getResource()Lcom/sea_monster/resource/Resource;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;->this$0:Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;

    invoke-static {v1}, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;->access$100(Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;)Lcom/sea_monster/resource/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sea_monster/resource/Resource;->equals(Lcom/sea_monster/resource/Resource;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-static {v0}, Lio/rong/imkit/widget/AsyncImageView;->access$200(Lio/rong/imkit/widget/AsyncImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lio/rong/imkit/widget/AsyncImageView;

    new-instance v1, Lcom/sea_monster/widget/CircleBitmapDrawable;

    iget-object v2, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v2}, Lio/rong/imkit/widget/AsyncImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sea_monster/widget/CircleBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/AsyncImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    :goto_1
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lio/rong/imkit/widget/AsyncImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/rong/imkit/widget/AsyncImageView;->access$002(Lio/rong/imkit/widget/AsyncImageView;I)I

    goto :goto_0

    .line 373
    :cond_2
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lio/rong/imkit/widget/AsyncImageView;

    iget v0, v0, Lio/rong/imkit/widget/AsyncImageView;->mCornerRadius:I

    if-lez v0, :cond_3

    .line 374
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lio/rong/imkit/widget/AsyncImageView;

    new-instance v1, Lio/rong/imkit/widget/RoundRectDrawable;

    iget-object v2, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lio/rong/imkit/widget/AsyncImageView;

    iget v3, v3, Lio/rong/imkit/widget/AsyncImageView;->mCornerRadius:I

    invoke-direct {v1, v2, v3}, Lio/rong/imkit/widget/RoundRectDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-static {v0, v1}, Lio/rong/imkit/widget/AsyncImageView;->access$300(Lio/rong/imkit/widget/AsyncImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 376
    :cond_3
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lio/rong/imkit/widget/AsyncImageView;

    iget-object v1, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$2;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0, v1}, Lio/rong/imkit/widget/AsyncImageView;->access$300(Lio/rong/imkit/widget/AsyncImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
