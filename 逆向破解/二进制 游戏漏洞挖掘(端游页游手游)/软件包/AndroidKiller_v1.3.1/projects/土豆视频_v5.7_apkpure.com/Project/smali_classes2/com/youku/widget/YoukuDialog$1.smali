.class Lcom/youku/widget/YoukuDialog$1;
.super Ljava/lang/Object;
.source "YoukuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/YoukuDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/YoukuDialog;


# direct methods
.method constructor <init>(Lcom/youku/widget/YoukuDialog;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/youku/widget/YoukuDialog$1;->this$0:Lcom/youku/widget/YoukuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog$1;->this$0:Lcom/youku/widget/YoukuDialog;

    invoke-static {v0}, Lcom/youku/widget/YoukuDialog;->access$000(Lcom/youku/widget/YoukuDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog$1;->this$0:Lcom/youku/widget/YoukuDialog;

    invoke-static {v0}, Lcom/youku/widget/YoukuDialog;->access$000(Lcom/youku/widget/YoukuDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog$1;->this$0:Lcom/youku/widget/YoukuDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuDialog;->dismiss()V

    goto :goto_0
.end method
