.class Lcom/youku/player/ui/widget/YoukuDialog$8;
.super Ljava/lang/Object;
.source "YoukuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ui/widget/YoukuDialog;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ui/widget/YoukuDialog;


# direct methods
.method constructor <init>(Lcom/youku/player/ui/widget/YoukuDialog;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/youku/player/ui/widget/YoukuDialog$8;->this$0:Lcom/youku/player/ui/widget/YoukuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog$8;->this$0:Lcom/youku/player/ui/widget/YoukuDialog;

    invoke-static {v0}, Lcom/youku/player/ui/widget/YoukuDialog;->access$500(Lcom/youku/player/ui/widget/YoukuDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog$8;->this$0:Lcom/youku/player/ui/widget/YoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YoukuDialog;->dismiss()V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog$8;->this$0:Lcom/youku/player/ui/widget/YoukuDialog;

    invoke-static {v0}, Lcom/youku/player/ui/widget/YoukuDialog;->access$500(Lcom/youku/player/ui/widget/YoukuDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 414
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog$8;->this$0:Lcom/youku/player/ui/widget/YoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YoukuDialog;->dismiss()V

    goto :goto_0
.end method
