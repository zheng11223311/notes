.class public Lcom/youku/player/ui/widget/PasswordInputDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "PasswordInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/ui/widget/PasswordInputDialog$PasswordInputDialogInterface;
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/youku/player/ui/widget/PasswordInputDialog$PasswordInputDialogInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/ui/widget/PasswordInputDialog;)Lcom/youku/player/ui/widget/PasswordInputDialog$PasswordInputDialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ui/widget/PasswordInputDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/player/ui/widget/PasswordInputDialog;->mClickListener:Lcom/youku/player/ui/widget/PasswordInputDialog$PasswordInputDialogInterface;

    return-object v0
.end method

.method public static newInstance(ILcom/youku/player/ui/widget/PasswordInputDialog$PasswordInputDialogInterface;)Lcom/youku/player/ui/widget/PasswordInputDialog;
    .locals 3
    .param p0, "title"    # I
    .param p1, "clickListener"    # Lcom/youku/player/ui/widget/PasswordInputDialog$PasswordInputDialogInterface;

    .prologue
    .line 20
    new-instance v1, Lcom/youku/player/ui/widget/PasswordInputDialog;

    invoke-direct {v1}, Lcom/youku/player/ui/widget/PasswordInputDialog;-><init>()V

    .line 21
    .local v1, "frag":Lcom/youku/player/ui/widget/PasswordInputDialog;
    invoke-direct {v1, p1}, Lcom/youku/player/ui/widget/PasswordInputDialog;->setClickLisener(Lcom/youku/player/ui/widget/PasswordInputDialog$PasswordInputDialogInterface;)V

    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24
    invoke-virtual {v1, v0}, Lcom/youku/player/ui/widget/PasswordInputDialog;->setArguments(Landroid/os/Bundle;)V

    .line 25
    return-object v1
.end method

.method private setClickLisener(Lcom/youku/player/ui/widget/PasswordInputDialog$PasswordInputDialogInterface;)V
    .locals 0
    .param p1, "lisener"    # Lcom/youku/player/ui/widget/PasswordInputDialog$PasswordInputDialogInterface;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/youku/player/ui/widget/PasswordInputDialog;->mClickListener:Lcom/youku/player/ui/widget/PasswordInputDialog$PasswordInputDialogInterface;

    .line 63
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/youku/player/ui/widget/PasswordInputDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 31
    .local v2, "title":I
    invoke-virtual {p0}, Lcom/youku/player/ui/widget/PasswordInputDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 32
    .local v0, "factory":Landroid/view/LayoutInflater;
    sget v3, Lcom/youku/android/player/R$layout;->yp_youku_dialog_password_interact:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 34
    .local v1, "textEntryView":Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/youku/player/ui/widget/PasswordInputDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/youku/android/player/R$string;->alert_dialog_ok:I

    new-instance v5, Lcom/youku/player/ui/widget/PasswordInputDialog$2;

    invoke-direct {v5, p0, v1}, Lcom/youku/player/ui/widget/PasswordInputDialog$2;-><init>(Lcom/youku/player/ui/widget/PasswordInputDialog;Landroid/view/View;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/youku/android/player/R$string;->alert_dialog_cancel:I

    new-instance v5, Lcom/youku/player/ui/widget/PasswordInputDialog$1;

    invoke-direct {v5, p0}, Lcom/youku/player/ui/widget/PasswordInputDialog$1;-><init>(Lcom/youku/player/ui/widget/PasswordInputDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
