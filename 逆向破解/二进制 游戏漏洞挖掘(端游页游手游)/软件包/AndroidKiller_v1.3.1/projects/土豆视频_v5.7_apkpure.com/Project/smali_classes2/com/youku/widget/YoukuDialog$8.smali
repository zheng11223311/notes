.class Lcom/youku/widget/YoukuDialog$8;
.super Ljava/lang/Object;
.source "YoukuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/YoukuDialog;->setListeners()V
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
    .line 424
    iput-object p1, p0, Lcom/youku/widget/YoukuDialog$8;->this$0:Lcom/youku/widget/YoukuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 428
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 429
    .local v0, "index":I
    iget-object v1, p0, Lcom/youku/widget/YoukuDialog$8;->this$0:Lcom/youku/widget/YoukuDialog;

    invoke-static {v1}, Lcom/youku/widget/YoukuDialog;->access$300(Lcom/youku/widget/YoukuDialog;)Lcom/youku/widget/YoukuDialog$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 432
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/youku/widget/YoukuDialog$8;->this$0:Lcom/youku/widget/YoukuDialog;

    invoke-static {v1}, Lcom/youku/widget/YoukuDialog;->access$300(Lcom/youku/widget/YoukuDialog;)Lcom/youku/widget/YoukuDialog$OnClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/youku/widget/YoukuDialog$OnClickListener;->onClick(I)V

    goto :goto_0
.end method
