.class final Lcom/tudou/ui/fragment/LoginFragment$16;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/LoginFragment;->setOnFocusChangeListenerForPassword(Landroid/widget/EditText;Landroid/view/View;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aCancel:Landroid/view/View;

.field final synthetic val$aEditText:Landroid/widget/EditText;

.field final synthetic val$aHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/tudou/ui/fragment/LoginFragment$16;->val$aHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/tudou/ui/fragment/LoginFragment$16;->val$aEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/tudou/ui/fragment/LoginFragment$16;->val$aCancel:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v4, 0x0

    .line 1310
    iget-object v2, p0, Lcom/tudou/ui/fragment/LoginFragment$16;->val$aHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1311
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a034c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1314
    .local v0, "paddingLeft":I
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a034d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1317
    .local v1, "paddingRight":I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1318
    iget-object v2, p0, Lcom/tudou/ui/fragment/LoginFragment$16;->val$aEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1319
    iget-object v2, p0, Lcom/tudou/ui/fragment/LoginFragment$16;->val$aCancel:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1326
    :goto_0
    return-void

    .line 1320
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/LoginFragment$16;->val$aEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1321
    iget-object v2, p0, Lcom/tudou/ui/fragment/LoginFragment$16;->val$aEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0, v4, v1, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1322
    iget-object v2, p0, Lcom/tudou/ui/fragment/LoginFragment$16;->val$aCancel:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1324
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/LoginFragment$16;->val$aEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0, v4, v1, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1306
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1301
    return-void
.end method
