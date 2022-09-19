.class Lcom/youku/player/ui/widget/PasswordInputDialog$1;
.super Ljava/lang/Object;
.source "PasswordInputDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ui/widget/PasswordInputDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ui/widget/PasswordInputDialog;


# direct methods
.method constructor <init>(Lcom/youku/player/ui/widget/PasswordInputDialog;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/youku/player/ui/widget/PasswordInputDialog$1;->this$0:Lcom/youku/player/ui/widget/PasswordInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/youku/player/ui/widget/PasswordInputDialog$1;->this$0:Lcom/youku/player/ui/widget/PasswordInputDialog;

    invoke-static {v0}, Lcom/youku/player/ui/widget/PasswordInputDialog;->access$000(Lcom/youku/player/ui/widget/PasswordInputDialog;)Lcom/youku/player/ui/widget/PasswordInputDialog$PasswordInputDialogInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/youku/player/ui/widget/PasswordInputDialog$1;->this$0:Lcom/youku/player/ui/widget/PasswordInputDialog;

    invoke-static {v0}, Lcom/youku/player/ui/widget/PasswordInputDialog;->access$000(Lcom/youku/player/ui/widget/PasswordInputDialog;)Lcom/youku/player/ui/widget/PasswordInputDialog$PasswordInputDialogInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/ui/widget/PasswordInputDialog$PasswordInputDialogInterface;->onNegativeClick()V

    .line 57
    :cond_0
    return-void
.end method
