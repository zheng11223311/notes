.class Lcom/youku/widget/TudouDialog$3;
.super Ljava/lang/Object;
.source "TudouDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/TudouDialog;->setNormalListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/TudouDialog;


# direct methods
.method constructor <init>(Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/youku/widget/TudouDialog$3;->this$0:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/youku/widget/TudouDialog$3;->this$0:Lcom/youku/widget/TudouDialog;

    invoke-static {v0}, Lcom/youku/widget/TudouDialog;->access$200(Lcom/youku/widget/TudouDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/youku/widget/TudouDialog$3;->this$0:Lcom/youku/widget/TudouDialog;

    invoke-static {v0}, Lcom/youku/widget/TudouDialog;->access$200(Lcom/youku/widget/TudouDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 151
    :cond_0
    return-void
.end method
