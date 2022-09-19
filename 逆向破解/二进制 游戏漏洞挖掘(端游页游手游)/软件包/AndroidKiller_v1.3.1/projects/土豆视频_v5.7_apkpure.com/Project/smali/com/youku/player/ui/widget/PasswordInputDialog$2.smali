.class Lcom/youku/player/ui/widget/PasswordInputDialog$2;
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

.field final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/youku/player/ui/widget/PasswordInputDialog;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/youku/player/ui/widget/PasswordInputDialog$2;->this$0:Lcom/youku/player/ui/widget/PasswordInputDialog;

    iput-object p2, p0, Lcom/youku/player/ui/widget/PasswordInputDialog$2;->val$textEntryView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 41
    iget-object v2, p0, Lcom/youku/player/ui/widget/PasswordInputDialog$2;->val$textEntryView:Landroid/view/View;

    sget v3, Lcom/youku/android/player/R$id;->password_edit:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 43
    .local v1, "passwordEditText":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "password":Ljava/lang/String;
    iget-object v2, p0, Lcom/youku/player/ui/widget/PasswordInputDialog$2;->this$0:Lcom/youku/player/ui/widget/PasswordInputDialog;

    invoke-static {v2}, Lcom/youku/player/ui/widget/PasswordInputDialog;->access$000(Lcom/youku/player/ui/widget/PasswordInputDialog;)Lcom/youku/player/ui/widget/PasswordInputDialog$PasswordInputDialogInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/youku/player/ui/widget/PasswordInputDialog$2;->this$0:Lcom/youku/player/ui/widget/PasswordInputDialog;

    invoke-static {v2}, Lcom/youku/player/ui/widget/PasswordInputDialog;->access$000(Lcom/youku/player/ui/widget/PasswordInputDialog;)Lcom/youku/player/ui/widget/PasswordInputDialog$PasswordInputDialogInterface;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/youku/player/ui/widget/PasswordInputDialog$PasswordInputDialogInterface;->onPositiveClick(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method
