.class Lcom/youku/widget/YoukuDialog$11;
.super Ljava/lang/Object;
.source "YoukuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/YoukuDialog;->setNormalListener()V
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
    .line 467
    iput-object p1, p0, Lcom/youku/widget/YoukuDialog$11;->this$0:Lcom/youku/widget/YoukuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog$11;->this$0:Lcom/youku/widget/YoukuDialog;

    invoke-static {v0}, Lcom/youku/widget/YoukuDialog;->access$700(Lcom/youku/widget/YoukuDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 472
    return-void
.end method
