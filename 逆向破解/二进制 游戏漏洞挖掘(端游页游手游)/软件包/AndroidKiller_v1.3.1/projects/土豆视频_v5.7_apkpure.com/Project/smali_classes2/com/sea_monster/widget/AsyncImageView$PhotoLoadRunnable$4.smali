.class Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$4;
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

.field final synthetic val$imageView:Lcom/sea_monster/widget/AsyncImageView;


# direct methods
.method constructor <init>(Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable;Lcom/sea_monster/widget/AsyncImageView;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$4;->this$0:Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable;

    iput-object p2, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$4;->val$imageView:Lcom/sea_monster/widget/AsyncImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$4;->val$imageView:Lcom/sea_monster/widget/AsyncImageView;

    iget-object v1, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoLoadRunnable$4;->val$imageView:Lcom/sea_monster/widget/AsyncImageView;

    iget-object v1, v1, Lcom/sea_monster/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/sea_monster/widget/AsyncImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    return-void
.end method
