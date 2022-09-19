.class Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnDialogClickListener;
.super Ljava/lang/Object;
.source "PresentButtonHelper.java"

# interfaces
.implements Lcom/youku/gamecenter/widgets/SimplePromptDialog$OnDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/present/PresentButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnDialogClickListener"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/present/PresentButtonHelper;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnDialogClickListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput-object p2, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnDialogClickListener;->context:Landroid/content/Context;

    .line 408
    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public onOkClicked()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnDialogClickListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$600(Lcom/youku/gamecenter/present/PresentButtonHelper;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnDialogClickListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    iget-object v1, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnDialogClickListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$600(Lcom/youku/gamecenter/present/PresentButtonHelper;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$700(Lcom/youku/gamecenter/present/PresentButtonHelper;Lcom/youku/gamecenter/data/GameInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnDialogClickListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    iget-object v1, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnDialogClickListener;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$800(Lcom/youku/gamecenter/present/PresentButtonHelper;Landroid/content/Context;)V

    goto :goto_0

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnDialogClickListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    iget-object v1, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnDialogClickListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-static {v1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$600(Lcom/youku/gamecenter/present/PresentButtonHelper;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$900(Lcom/youku/gamecenter/present/PresentButtonHelper;Lcom/youku/gamecenter/data/GameInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnDialogClickListener;->this$0:Lcom/youku/gamecenter/present/PresentButtonHelper;

    iget-object v1, p0, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnDialogClickListener;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->access$1000(Lcom/youku/gamecenter/present/PresentButtonHelper;Landroid/content/Context;)V

    goto :goto_0
.end method
