.class Lcom/youku/widget/CodeErrorDialog$1;
.super Ljava/lang/Object;
.source "CodeErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/CodeErrorDialog;->setNormalListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/CodeErrorDialog;


# direct methods
.method constructor <init>(Lcom/youku/widget/CodeErrorDialog;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youku/widget/CodeErrorDialog$1;->this$0:Lcom/youku/widget/CodeErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/widget/CodeErrorDialog$1;->this$0:Lcom/youku/widget/CodeErrorDialog;

    invoke-virtual {v0}, Lcom/youku/widget/CodeErrorDialog;->dismiss()V

    .line 50
    iget-object v0, p0, Lcom/youku/widget/CodeErrorDialog$1;->this$0:Lcom/youku/widget/CodeErrorDialog;

    invoke-static {v0}, Lcom/youku/widget/CodeErrorDialog;->access$000(Lcom/youku/widget/CodeErrorDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/youku/widget/CodeErrorDialog$1;->this$0:Lcom/youku/widget/CodeErrorDialog;

    invoke-static {v0}, Lcom/youku/widget/CodeErrorDialog;->access$000(Lcom/youku/widget/CodeErrorDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 53
    :cond_0
    return-void
.end method
