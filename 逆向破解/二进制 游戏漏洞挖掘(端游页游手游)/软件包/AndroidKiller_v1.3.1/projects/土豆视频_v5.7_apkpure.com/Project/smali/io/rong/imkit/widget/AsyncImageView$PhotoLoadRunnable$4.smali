.class Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$4;
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

.field final synthetic val$imageView:Lio/rong/imkit/widget/AsyncImageView;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;Lio/rong/imkit/widget/AsyncImageView;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$4;->this$0:Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable;

    iput-object p2, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$4;->val$imageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$4;->val$imageView:Lio/rong/imkit/widget/AsyncImageView;

    iget-object v1, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoLoadRunnable$4;->val$imageView:Lio/rong/imkit/widget/AsyncImageView;

    iget-object v1, v1, Lio/rong/imkit/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/AsyncImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    return-void
.end method
