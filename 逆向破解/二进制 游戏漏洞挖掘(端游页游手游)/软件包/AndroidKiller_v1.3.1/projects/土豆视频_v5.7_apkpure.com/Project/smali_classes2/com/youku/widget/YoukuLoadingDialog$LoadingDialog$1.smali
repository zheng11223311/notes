.class Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog$1;
.super Ljava/lang/Object;
.source "YoukuLoadingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->startAnimation(Landroid/view/View;)V
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
    .line 321
    iput-object p1, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog$1;->this$0:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    iput-object p2, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog$1;->val$aView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog$1;->this$0:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-static {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->access$000(Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog$1;->val$aView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog$1;->val$aView:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog$1;->this$0:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-static {v1}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->access$100(Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
