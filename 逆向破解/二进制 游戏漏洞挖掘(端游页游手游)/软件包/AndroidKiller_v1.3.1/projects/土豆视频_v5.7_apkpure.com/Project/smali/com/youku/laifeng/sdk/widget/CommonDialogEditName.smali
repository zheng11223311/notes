.class public Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;
.super Landroid/app/Dialog;
.source "CommonDialogEditName.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mCancelButtonListener:Landroid/view/View$OnClickListener;

.field private mOKButton:Landroid/widget/Button;

.field private mOKButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelButtonListener"    # Landroid/view/View$OnClickListener;
    .param p3, "okButtonListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 24
    const-string/jumbo v0, "style"

    const-string v1, "lf_common_dialog_theme"

    invoke-static {p1, v0, v1}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    if-eqz p2, :cond_0

    .line 26
    iput-object p2, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    .line 28
    :cond_0
    if-eqz p3, :cond_1

    .line 29
    iput-object p3, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->mOKButtonListener:Landroid/view/View$OnClickListener;

    .line 31
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 58
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->cancel()V

    .line 59
    return-void

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->mOKButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->mOKButtonListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "lf_dialog_edit_name"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->setContentView(I)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->setCancelable(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "cancel_button"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->mCancelButton:Landroid/widget/Button;

    .line 41
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "ok_button"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->mOKButton:Landroid/widget/Button;

    .line 43
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogEditName;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method
