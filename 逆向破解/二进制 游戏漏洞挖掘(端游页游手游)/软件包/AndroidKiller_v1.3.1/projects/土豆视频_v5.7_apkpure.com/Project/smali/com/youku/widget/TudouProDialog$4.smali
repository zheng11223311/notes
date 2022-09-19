.class Lcom/youku/widget/TudouProDialog$4;
.super Ljava/lang/Object;
.source "TudouProDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/TudouProDialog;->setNormalListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/TudouProDialog;


# direct methods
.method constructor <init>(Lcom/youku/widget/TudouProDialog;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/youku/widget/TudouProDialog$4;->this$0:Lcom/youku/widget/TudouProDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog$4;->this$0:Lcom/youku/widget/TudouProDialog;

    invoke-static {v0}, Lcom/youku/widget/TudouProDialog;->access$700(Lcom/youku/widget/TudouProDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/youku/widget/TudouProDialog$4;->this$0:Lcom/youku/widget/TudouProDialog;

    invoke-static {v0}, Lcom/youku/widget/TudouProDialog;->access$700(Lcom/youku/widget/TudouProDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 419
    :cond_0
    return-void
.end method
