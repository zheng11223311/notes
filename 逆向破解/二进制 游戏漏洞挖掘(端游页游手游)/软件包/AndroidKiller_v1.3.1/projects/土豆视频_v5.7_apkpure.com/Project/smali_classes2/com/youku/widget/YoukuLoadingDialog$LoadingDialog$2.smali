.class Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog$2;
.super Ljava/lang/Object;
.source "YoukuLoadingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->stopAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

.field final synthetic val$aView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog$2;->this$0:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    iput-object p2, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog$2;->val$aView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog$2;->this$0:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-static {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->access$000(Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog$2;->val$aView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog$2;->val$aView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method
