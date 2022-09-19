.class Lcom/youku/widget/YoukuDialog$10;
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
    .line 455
    iput-object p1, p0, Lcom/youku/widget/YoukuDialog$10;->this$0:Lcom/youku/widget/YoukuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/youku/widget/YoukuDialog$10;->this$0:Lcom/youku/widget/YoukuDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuDialog;->dismiss()V

    .line 460
    return-void
.end method
