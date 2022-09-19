.class public Lcom/youku/gamecenter/widgets/SimplePromptDialog;
.super Landroid/app/Dialog;
.source "SimplePromptDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/widgets/SimplePromptDialog$OnDialogClickListener;
    }
.end annotation


# instance fields
.field private mContent:Ljava/lang/String;

.field private mListener:Lcom/youku/gamecenter/widgets/SimplePromptDialog$OnDialogClickListener;

.field private mOkTitle:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/gamecenter/widgets/SimplePromptDialog$OnDialogClickListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "okTitle"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/youku/gamecenter/widgets/SimplePromptDialog$OnDialogClickListener;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p5, p0, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->mListener:Lcom/youku/gamecenter/widgets/SimplePromptDialog$OnDialogClickListener;

    .line 25
    iput-object p2, p0, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->mTitle:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->mContent:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->mOkTitle:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private findTextById(I)Landroid/widget/TextView;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 51
    sget v0, Lcom/youku/gamecenter/R$layout;->widget_present_prompt_dialog:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->setContentView(I)V

    .line 52
    sget v0, Lcom/youku/gamecenter/R$id;->present_dialog_title:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->findTextById(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    sget v0, Lcom/youku/gamecenter/R$id;->present_dialog_content_text:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->findTextById(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget v0, Lcom/youku/gamecenter/R$id;->game_exist_dialog_ok:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->findTextById(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->mOkTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    sget v0, Lcom/youku/gamecenter/R$id;->game_exist_dialog_ok:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget v0, Lcom/youku/gamecenter/R$id;->game_exist_dialog_cancel:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/gamecenter/widgets/SimplePromptDialog$OnDialogClickListener;)Lcom/youku/gamecenter/widgets/SimplePromptDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "okTitle"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/youku/gamecenter/widgets/SimplePromptDialog$OnDialogClickListener;

    .prologue
    .line 38
    new-instance v0, Lcom/youku/gamecenter/widgets/SimplePromptDialog;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/youku/gamecenter/widgets/SimplePromptDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/gamecenter/widgets/SimplePromptDialog$OnDialogClickListener;)V

    .line 40
    .local v0, "dialog":Lcom/youku/gamecenter/widgets/SimplePromptDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->requestWindowFeature(I)Z

    .line 41
    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->show()V

    .line 42
    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->dismiss()V

    .line 48
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/youku/gamecenter/R$id;->game_exist_dialog_ok:I

    if-ne v0, v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->dismiss()V

    .line 67
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->mListener:Lcom/youku/gamecenter/widgets/SimplePromptDialog$OnDialogClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/SimplePromptDialog$OnDialogClickListener;->onOkClicked()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/youku/gamecenter/R$id;->game_exist_dialog_cancel:I

    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->dismiss()V

    .line 72
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->mListener:Lcom/youku/gamecenter/widgets/SimplePromptDialog$OnDialogClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/SimplePromptDialog$OnDialogClickListener;->onCancelClicked()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->initView()V

    .line 34
    return-void
.end method
