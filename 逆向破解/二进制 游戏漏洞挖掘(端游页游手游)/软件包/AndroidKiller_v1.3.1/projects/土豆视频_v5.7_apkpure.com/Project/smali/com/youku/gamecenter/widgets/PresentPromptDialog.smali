.class public Lcom/youku/gamecenter/widgets/PresentPromptDialog;
.super Landroid/app/Dialog;
.source "PresentPromptDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/widgets/PresentPromptDialog$OnDialogClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/youku/gamecenter/widgets/PresentPromptDialog$OnDialogClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/gamecenter/widgets/PresentPromptDialog$OnDialogClickListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/youku/gamecenter/widgets/PresentPromptDialog$OnDialogClickListener;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p2, p0, Lcom/youku/gamecenter/widgets/PresentPromptDialog;->mListener:Lcom/youku/gamecenter/widgets/PresentPromptDialog$OnDialogClickListener;

    .line 19
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/youku/gamecenter/R$layout;->widget_present_prompt_dialog:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PresentPromptDialog;->setContentView(I)V

    .line 42
    sget v0, Lcom/youku/gamecenter/R$id;->game_exist_dialog_ok:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PresentPromptDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget v0, Lcom/youku/gamecenter/R$id;->game_exist_dialog_cancel:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PresentPromptDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Lcom/youku/gamecenter/widgets/PresentPromptDialog$OnDialogClickListener;)Lcom/youku/gamecenter/widgets/PresentPromptDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/youku/gamecenter/widgets/PresentPromptDialog$OnDialogClickListener;

    .prologue
    .line 29
    new-instance v0, Lcom/youku/gamecenter/widgets/PresentPromptDialog;

    invoke-direct {v0, p0, p1}, Lcom/youku/gamecenter/widgets/PresentPromptDialog;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/widgets/PresentPromptDialog$OnDialogClickListener;)V

    .line 30
    .local v0, "dialog":Lcom/youku/gamecenter/widgets/PresentPromptDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/PresentPromptDialog;->requestWindowFeature(I)Z

    .line 31
    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/PresentPromptDialog;->show()V

    .line 32
    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/PresentPromptDialog;->dismiss()V

    .line 38
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/youku/gamecenter/R$id;->game_exist_dialog_ok:I

    if-ne v0, v1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentPromptDialog;->mListener:Lcom/youku/gamecenter/widgets/PresentPromptDialog$OnDialogClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/PresentPromptDialog$OnDialogClickListener;->onOkClicked()V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/youku/gamecenter/R$id;->game_exist_dialog_cancel:I

    if-ne v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentPromptDialog;->mListener:Lcom/youku/gamecenter/widgets/PresentPromptDialog$OnDialogClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/PresentPromptDialog$OnDialogClickListener;->onCancelClicked()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/PresentPromptDialog;->initView()V

    .line 25
    return-void
.end method
