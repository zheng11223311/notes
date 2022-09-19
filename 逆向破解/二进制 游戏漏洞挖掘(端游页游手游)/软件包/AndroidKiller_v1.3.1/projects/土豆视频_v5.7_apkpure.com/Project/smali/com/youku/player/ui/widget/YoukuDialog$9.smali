.class Lcom/youku/player/ui/widget/YoukuDialog$9;
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
    .line 418
    iput-object p1, p0, Lcom/youku/player/ui/widget/YoukuDialog$9;->this$0:Lcom/youku/player/ui/widget/YoukuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/youku/player/ui/widget/YoukuDialog$9;->this$0:Lcom/youku/player/ui/widget/YoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YoukuDialog;->dismiss()V

    .line 423
    return-void
.end method
