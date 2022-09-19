.class public Lcom/youku/player/ui/widget/TudouEncryptDialog;
.super Landroid/app/Dialog;
.source "TudouEncryptDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/ui/widget/TudouEncryptDialog$OnPositiveClickListener;
    }
.end annotation


# instance fields
.field private mCancleDialog:Landroid/widget/TextView;

.field private mConfirmDialog:Landroid/widget/TextView;

.field private mEncryptTips:Landroid/widget/TextView;

.field private mPassWord:Landroid/widget/EditText;

.field private mPositiveClickListener:Lcom/youku/player/ui/widget/TudouEncryptDialog$OnPositiveClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/ui/widget/TudouEncryptDialog;)Lcom/youku/player/ui/widget/TudouEncryptDialog$OnPositiveClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ui/widget/TudouEncryptDialog;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog;->mPositiveClickListener:Lcom/youku/player/ui/widget/TudouEncryptDialog$OnPositiveClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/player/ui/widget/TudouEncryptDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ui/widget/TudouEncryptDialog;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog;->mPassWord:Landroid/widget/EditText;

    return-object v0
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/youku/android/player/R$id;->password_edit:I

    invoke-virtual {p0, v0}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog;->mPassWord:Landroid/widget/EditText;

    .line 42
    sget v0, Lcom/youku/android/player/R$id;->tudou_dialog_confirm:I

    invoke-virtual {p0, v0}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog;->mConfirmDialog:Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/youku/android/player/R$id;->tudou_dialog_cancel:I

    invoke-virtual {p0, v0}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog;->mCancleDialog:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/youku/android/player/R$id;->tudou_dialog_encrypt_tips:I

    invoke-virtual {p0, v0}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog;->mEncryptTips:Landroid/widget/TextView;

    .line 45
    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog;->mConfirmDialog:Landroid/widget/TextView;

    new-instance v1, Lcom/youku/player/ui/widget/TudouEncryptDialog$1;

    invoke-direct {v1, p0}, Lcom/youku/player/ui/widget/TudouEncryptDialog$1;-><init>(Lcom/youku/player/ui/widget/TudouEncryptDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog;->mCancleDialog:Landroid/widget/TextView;

    new-instance v1, Lcom/youku/player/ui/widget/TudouEncryptDialog$2;

    invoke-direct {v1, p0}, Lcom/youku/player/ui/widget/TudouEncryptDialog$2;-><init>(Lcom/youku/player/ui/widget/TudouEncryptDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget v0, Lcom/youku/android/player/R$layout;->yp_tudou_encrypt_dialog:I

    invoke-virtual {p0, v0}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->setContentView(I)V

    .line 36
    invoke-direct {p0}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->initViews()V

    .line 37
    invoke-direct {p0}, Lcom/youku/player/ui/widget/TudouEncryptDialog;->setListeners()V

    .line 38
    return-void
.end method

.method public setEncryptTips(Ljava/lang/String;)V
    .locals 1
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog;->mEncryptTips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method public setPositiveClickListener(Lcom/youku/player/ui/widget/TudouEncryptDialog$OnPositiveClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/player/ui/widget/TudouEncryptDialog$OnPositiveClickListener;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/youku/player/ui/widget/TudouEncryptDialog;->mPositiveClickListener:Lcom/youku/player/ui/widget/TudouEncryptDialog$OnPositiveClickListener;

    .line 88
    return-void
.end method
