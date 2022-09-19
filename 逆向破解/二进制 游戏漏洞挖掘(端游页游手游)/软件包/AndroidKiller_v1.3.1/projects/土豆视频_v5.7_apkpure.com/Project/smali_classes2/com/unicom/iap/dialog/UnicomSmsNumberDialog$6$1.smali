.class Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6$1;
.super Ljava/lang/Object;
.source "UnicomSmsNumberDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;


# direct methods
.method constructor <init>(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6$1;->this$1:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6$1;->this$1:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;->access$0(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;)Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->access$4(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->access$5(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;I)V

    .line 342
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6$1;->this$1:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;->access$0(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;)Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->access$4(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6$1;->this$1:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;->access$0(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;)Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_btn_yzm:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "       "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    iget-object v2, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6$1;->this$1:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;

    invoke-static {v2}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;->access$0(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;)Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    move-result-object v2

    invoke-static {v2}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->access$4(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6$1;->this$1:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;->access$0(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;)Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->unicom_btn_yzm:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 347
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6$1;->this$1:Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;->access$0(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog$6;)Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;->access$0(Lcom/unicom/iap/dialog/UnicomSmsNumberDialog;)V

    goto :goto_0
.end method
