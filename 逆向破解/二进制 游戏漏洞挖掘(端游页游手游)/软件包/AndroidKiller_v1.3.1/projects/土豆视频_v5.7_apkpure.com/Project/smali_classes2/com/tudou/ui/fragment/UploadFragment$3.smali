.class Lcom/tudou/ui/fragment/UploadFragment$3;
.super Ljava/lang/Object;
.source "UploadFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/UploadFragment;->setTextChangeListner(Landroid/widget/EditText;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private temp:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/tudou/ui/fragment/UploadFragment;

.field final synthetic val$des:Ljava/lang/String;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$maxLen:I


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/UploadFragment;ILjava/lang/String;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadFragment$3;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    iput p2, p0, Lcom/tudou/ui/fragment/UploadFragment$3;->val$maxLen:I

    iput-object p3, p0, Lcom/tudou/ui/fragment/UploadFragment$3;->val$des:Ljava/lang/String;

    iput-object p4, p0, Lcom/tudou/ui/fragment/UploadFragment$3;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment$3;->temp:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lcom/tudou/ui/fragment/UploadFragment$3;->val$maxLen:I

    if-le v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment$3;->val$des:Ljava/lang/String;

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment$3;->temp:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget v2, p0, Lcom/tudou/ui/fragment/UploadFragment$3;->val$maxLen:I

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment$3;->temp:Ljava/lang/CharSequence;

    .line 324
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment$3;->val$editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment$3;->temp:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment$3;->val$editText:Landroid/widget/EditText;

    iget v1, p0, Lcom/tudou/ui/fragment/UploadFragment$3;->val$maxLen:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 327
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 316
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadFragment$3;->temp:Ljava/lang/CharSequence;

    .line 317
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 311
    return-void
.end method
