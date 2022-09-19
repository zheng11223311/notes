.class Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$2;
.super Ljava/lang/Object;
.source "AsyncImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable;->runImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable;

.field final synthetic val$drawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$imageView:Lcom/sea_monster/widget/AsyncImageView;


# direct methods
.method constructor <init>(Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable;Lcom/sea_monster/widget/AsyncImageView;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$2;->this$0:Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable;

    iput-object p2, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lcom/sea_monster/widget/AsyncImageView;

    iput-object p3, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$2;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lcom/sea_monster/widget/AsyncImageView;

    invoke-virtual {v0}, Lcom/sea_monster/widget/AsyncImageView;->getResource()Lcom/sea_monster/resource/Resource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lcom/sea_monster/widget/AsyncImageView;

    invoke-virtual {v0}, Lcom/sea_monster/widget/AsyncImageView;->getResource()Lcom/sea_monster/resource/Resource;

    move-result-object v0

    iget-object v1, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$2;->this$0:Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable;

    invoke-static {v1}, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable;->access$100(Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable;)Lcom/sea_monster/resource/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sea_monster/resource/Resource;->equals(Lcom/sea_monster/resource/Resource;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lcom/sea_monster/widget/AsyncImageView;

    invoke-static {v0}, Lcom/sea_monster/widget/AsyncImageView;->access$200(Lcom/sea_monster/widget/AsyncImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lcom/sea_monster/widget/AsyncImageView;

    new-instance v1, Lcom/sea_monster/widget/CircleBitmapDrawable;

    iget-object v2, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lcom/sea_monster/widget/AsyncImageView;

    invoke-virtual {v2}, Lcom/sea_monster/widget/AsyncImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$2;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sea_monster/widget/CircleBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/sea_monster/widget/AsyncImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    :goto_1
    iget-object v0, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lcom/sea_monster/widget/AsyncImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sea_monster/widget/AsyncImageView;->access$002(Lcom/sea_monster/widget/AsyncImageView;I)I

    goto :goto_0

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$2;->val$imageView:Lcom/sea_monster/widget/AsyncImageView;

    iget-object v1, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$2;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Lcom/sea_monster/widget/AsyncImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
