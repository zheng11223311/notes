.class Lcom/youku/widget/TudouTipDialog$LoadingDialog$2;
.super Ljava/lang/Object;
.source "TudouTipDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/TudouTipDialog$LoadingDialog;->stopAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

.field final synthetic val$aView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/youku/widget/TudouTipDialog$LoadingDialog;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog$2;->this$0:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    iput-object p2, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog$2;->val$aView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog$2;->this$0:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    invoke-static {v0}, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->access$000(Lcom/youku/widget/TudouTipDialog$LoadingDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog$2;->val$aView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog$2;->val$aView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method
