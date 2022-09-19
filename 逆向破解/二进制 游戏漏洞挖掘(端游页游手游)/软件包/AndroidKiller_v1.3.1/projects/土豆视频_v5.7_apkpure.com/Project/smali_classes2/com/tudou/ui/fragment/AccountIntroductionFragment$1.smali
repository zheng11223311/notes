.class Lcom/tudou/ui/fragment/AccountIntroductionFragment$1;
.super Ljava/lang/Object;
.source "AccountIntroductionFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/AccountIntroductionFragment;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$1;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 236
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 217
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 221
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$1;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$300(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 222
    .local v1, "str":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    rsub-int/lit8 v0, v2, 0x3c

    .line 223
    .local v0, "count":I
    if-gez v0, :cond_0

    .line 224
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$1;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$400(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$1;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$400(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    :goto_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$1;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$400(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    return-void

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$1;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$400(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$1;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$400(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
